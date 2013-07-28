class Photo < ActiveRecord::Base
  attr_accessible :caption, :image, :user_id
  belongs_to :user
  mount_uploader :image, ImageUploader
  after_save :enqueue_image

  def image_name
    File.basename(image.path || image.filename) if image
  end

  def enqueue_image
    ImageWorker.perform_async(id, key) if key.present?
    # ImageWorker.perform_async(id, key) if !image_processed && key.present?
  end

  class ImageWorker
    include Sidekiq::Worker

    def perform(id, key)
      photo = Photo.find(id)
      photo.key = key
      photo.remote_image_url = photo.image.direct_fog_url(with_path: true)
      photo.save!
      photo.update_column(:image_processed, true)
    end
  end
end

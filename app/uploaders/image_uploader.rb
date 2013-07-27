# encoding: utf-8
class ImageUploader < CarrierWave::Uploader::Base
  storage :fog
  include CarrierWaveDirect::Uploader
  include CarrierWave::RMagick

  # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  include Sprockets::Helpers::RailsHelper
  include Sprockets::Helpers::IsolatedHelper

  include CarrierWave::MimeTypes
  process :set_content_type

  # This sets max size of image when uploaded
  process :resize_to_fit => [800, 800]

  # this is supposed to make a thumbnail version
  version :thumb do
    process :resize_to_fill => [230,230]
  end

  version :small_thumb, :from_version => :thumb do
    process :resize_to_fill => [110,110]
  end
end

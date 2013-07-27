class Photos < ActiveRecord::Base
  attr_accessible :caption, :image, :user_id
  belongs_to :user
end

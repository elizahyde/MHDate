class Messages < ActiveRecord::Base
  attr_accessible :content, :receiver, :sender, :unread

  belongs_to :sender, :class_name => "User"
  belongs_to :receiver, :class_name => "User"
end

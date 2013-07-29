class Messages < ActiveRecord::Base
  attr_accessible :content, :receiver, :sender, :unread

  belongs_to :sender, :class_name => "User"
  belongs_to :receiver, :class_name => "User"


  # Read message and if it is read by recepient then mark it is read
  def self.readingmessage(id, receiver)
    message = find(id, :conditions => ["sender = ? OR receiver = ?", receiver, receiver])
    if message.read_at.nil? && (message.receiver.sender==receiver)
      message.read_at = Time.now
      message.save!
    end
    message
  end

  # Based on if a message has been read by it's recepient returns true or false.
  def read?
    self.read_at.nil? ? false : true
  end
end

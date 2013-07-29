class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :password_confirmation, :age, :is_female, :paid_user, :profile_text, :is_single, :zipcode
  has_many :messages
  has_many :photos

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password

  def received_messages
    Message.where(:receiver => self.id)
  end

  def sent_messages
    Message.where(:sender => self.id)
  end

  def unread_messages?
    unread_message_count > 0 ? true : false
  end

  # Returns the number of unread messages for this user
  def unread_message_count
    eval 'messages.count(:conditions => ["recepient = ? AND read_at IS NULL", self.sender])'
  end
end

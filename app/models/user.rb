class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :password_confirmation, :age, :is_female, :paid_user, :profile_text, :is_single, :zipcode
  has_many :messages
  has_many :photos

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password

  def received_messages
    Message.where(:receiver_id => self.id)
  end

  def sent_messages
    Message.where(:sender_id => self.id)
  end
end
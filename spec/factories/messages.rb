# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message, :class => 'Messages' do
    sender 1
    receiver 1
    content "MyString"
    unread false
  end
end

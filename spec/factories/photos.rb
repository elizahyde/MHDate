# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo, :class => 'Photos' do
    image "MyString"
    caption "MyString"
    user_id 1
  end
end

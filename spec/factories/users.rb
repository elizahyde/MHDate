# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "MyString"
    email "MyString"
    age 1
    zipcode 1
    female false
    single false
    paid_user false
    profile_text "MyString"
  end
end

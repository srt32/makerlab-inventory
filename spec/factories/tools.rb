# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tool do
    name "MyString"
    location "MyString"
    quantity ""
    available false
  end
end

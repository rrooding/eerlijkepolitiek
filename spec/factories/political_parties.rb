# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :political_party do
    name "MyString"
    sequence(:parlis_id) { |i| i }
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :politician do |t|
    t.name "MyString"
    t.sequence(:parlis_id) { |i| "Parlis-#{i}" }
  end
end

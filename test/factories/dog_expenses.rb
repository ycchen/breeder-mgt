# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dog_expense do
    dog nil
    charge nil
    charge_date "2013-07-30"
    amount "9.99"
    note "MyText"
  end
end

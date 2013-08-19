# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment do
    sale ""
    payment_type ""
    payment_date "2013-08-05"
    amount "9.99"
    note "MyText"
  end
end

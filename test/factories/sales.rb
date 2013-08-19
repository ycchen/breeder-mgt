# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sale do
    dog nil
    customer nil
    sale_date "2013-08-05"
    sale_price "9.99"
    note "MyText"
  end
end

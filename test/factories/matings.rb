# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mating do
    pregnancy nil
    mating_date "2013-08-15"
    sire_id "MyString"
  end
end

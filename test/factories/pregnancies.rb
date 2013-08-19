# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pregnancy do
    dog nil
    heat_start_date "2013-08-15"
    due_date "2013-08-15"
    surgery_date "2013-08-15"
    total_puppy 1
  end
end

class DogExpense < ActiveRecord::Base
  belongs_to :dog
  belongs_to :charge
  # belongs_to :show
  belongs_to :show_entry
end

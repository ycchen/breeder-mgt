class DogExpense < ActiveRecord::Base
  belongs_to :dog
  belongs_to :charge
  # belongs_to :show
  belongs_to :show_entry

  validates :dog_id, :charge_id, presence:true
  validates :amount, presence: true, numericality: true
end

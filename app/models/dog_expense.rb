class DogExpense < ActiveRecord::Base
  belongs_to :dog
  belongs_to :charge
  # belongs_to :show
  belongs_to :show_entry

  validates :dog_id, :charge_id, presence:true
  validates :amount, presence: true, numericality: true


	def self.to_csv(options ={})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |dog_expense|
				csv << dog_expense.attributes.values_at(*column_names)
			end
		end
	end
end

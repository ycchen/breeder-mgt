class Charge < ActiveRecord::Base
	has_many :dog_expenses

	validates :name, :description, presence:true
end

class Payment < ActiveRecord::Base
	belongs_to :sale
	belongs_to :payment_status
	belongs_to :payment_type

	validates :sale_id, :payment_type_id, :payment_status_id, presence: true
	validates :amount, presence: true, numericality: true	
end

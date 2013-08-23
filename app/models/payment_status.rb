class PaymentStatus < ActiveRecord::Base
	has_many :sales
	has_many :payment_statuses

	validates :name, :note, presence:true
	
end

class Payment < ActiveRecord::Base
	belongs_to :sale
	belongs_to :payment_status
	belongs_to :payment_type
end

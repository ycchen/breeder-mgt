class PaymentStatus < ActiveRecord::Base
	has_many :sales
	has_many :payment_statuses
end

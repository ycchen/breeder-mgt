class PaymentType < ActiveRecord::Base
	belongs_to :payment

	validates :name, :description, presence: true
end

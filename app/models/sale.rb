class Sale < ActiveRecord::Base
  belongs_to :dog
  belongs_to :customer
  has_many :payments, :dependent => :destroy

  validates :dog_id, :customer_id, presence: true
  validates :sale_price, presence: true, numericality: true
end

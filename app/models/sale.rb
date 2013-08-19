class Sale < ActiveRecord::Base
  belongs_to :dog
  belongs_to :customer
  has_many :payments, :dependent => :destroy
end

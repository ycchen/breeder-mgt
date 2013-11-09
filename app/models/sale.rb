class Sale < ActiveRecord::Base
  belongs_to :dog
  belongs_to :customer
  belongs_to :service
  has_many :payments, :dependent => :destroy

  validates :dog_id, :customer_id, presence: true
  validates :sale_price, presence: true, numericality: true


    def self.to_csv(options ={})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |item|
				csv << item.attributes.values_at(*column_names)
			end
		end
	end
end

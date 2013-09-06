class ShowEntry < ActiveRecord::Base
  belongs_to :dog
  belongs_to :show
  has_many :dog_expenses

  has_many :pictures, :as => :attachable, :dependent => :destroy
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  
  validates :dog_id, :show_id, presence: true
  validates :points, numericality: { only_integer: true}
  validates :entry_fee, numericality:  true
  validates :handling_fee, numericality: true


  	def self.to_csv(options ={})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |item|
				csv << item.attributes.values_at(*column_names)
			end
		end
	end
end

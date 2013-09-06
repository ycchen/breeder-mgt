class Dog < ActiveRecord::Base
	GENDER_TYPE = %w[Female Male]
	has_many :show_entries
	has_many :dog_expenses
	has_many :sales
	has_many :photos
	belongs_to :color
	
	belongs_to :sire, class_name: "Dog", foreign_key: "sire_id"
	belongs_to :dams, class_name: "Dog", foreign_key: "dams_id"

	has_many :pictures, :as => :attachable, :dependent => :destroy
	accepts_nested_attributes_for :pictures, :allow_destroy => true

	validates :name, :call_name, :color_id, presence:true

	scope :bitches, lambda{where(gender: 'Female')}
	scope :dogs, lambda{where(gender: 'Male')}
	
	def self.to_csv(options ={})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |item|
				csv << item.attributes.values_at(*column_names)
			end
		end
	end

end

class Dog < ActiveRecord::Base
	SEX_TYPE = %w[Female Male]
	has_many :show_entries
	has_many :dog_expenses
	has_many :sales
	has_many :photos
	belongs_to :color
	
	belongs_to :sire, class_name: "Dog", foreign_key: "sire_id"
	belongs_to :dams, class_name: "Dog", foreign_key: "dams_id"

	has_many :pictures, :as => :attachable, :dependent => :destroy
	accepts_nested_attributes_for :pictures, :allow_destroy => true

	scope :bitches, lambda{where(sex: 'Female')}
	scope :dogs, lambda{where(sex: 'Male')}
end

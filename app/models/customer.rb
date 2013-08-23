class Customer < ActiveRecord::Base
	has_many :sales

	has_many :pictures, :as => :attachable, :dependent => :destroy
	accepts_nested_attributes_for :pictures, :allow_destroy => true

	validates :name, :first_name, :last_name, :email, :phone, :mobile, presence:true
end

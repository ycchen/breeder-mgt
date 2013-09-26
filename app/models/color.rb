class Color < ActiveRecord::Base
	has_many :dogs
	has_many :litters
	validates :name, presence: true
end

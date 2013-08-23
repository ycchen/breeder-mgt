class Color < ActiveRecord::Base
	has_many :dogs

	validates :name, presence: true
end

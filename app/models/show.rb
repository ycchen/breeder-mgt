class Show < ActiveRecord::Base
	has_many :show_entries
	# has_many :dog_expenses

	validates :name, :kennel_club, presence: true
end

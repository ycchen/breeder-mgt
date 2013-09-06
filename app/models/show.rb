class Show < ActiveRecord::Base
	has_many :show_entries
	# has_many :dog_expenses

	validates :name, :kennel_club, presence: true

	def self.to_csv(options ={})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |item|
				csv << item.attributes.values_at(*column_names)
			end
		end
	end
end

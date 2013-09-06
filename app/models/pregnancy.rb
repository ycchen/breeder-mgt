class Pregnancy < ActiveRecord::Base
  belongs_to :dog
  has_many :matings
  has_many :litters

  validates :dog_id, presence: true
  validates :total_puppy, presence: true, numericality: true

  scope :expected, lambda{where('surgery_date >= ?', Date.today.to_s)}
  scope :already_due, lambda{where('surgery_date <= ?', Date.today.to_s)}

  def self.to_csv(options ={})
  	CSV.generate(options) do |csv|
  		csv << column_names
  		all.each do |item|
  			csv << item.attributes.values_at(*column_names)
  		end
  	end
  end
  
end

class Litter < ActiveRecord::Base
  belongs_to :pregnancy
  belongs_to :color
  belongs_to :dog

  validates :pregnancy_id, :gender, :color_id, presence: true

  def self.survial_count(pregnancy)
  	pregnancy.where(survival: true).size
  end

  def self.count_gender(pregnancy)
  	# where(gender: gender, pregnancy_id: p).size
  	# where(pregnancy_id: pregnancy).count(group: :gender)
  	# where(pregnancy_id: pregnancy).group("gender").count
  	where(pregnancy_id: pregnancy).group(:gender, :survival).size
  end
end

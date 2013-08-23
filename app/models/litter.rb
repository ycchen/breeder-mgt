class Litter < ActiveRecord::Base
  belongs_to :pregnancy
  belongs_to :color
  belongs_to :dog

  validates :pregnancy_id, :gender, :color_id, presence: true
end

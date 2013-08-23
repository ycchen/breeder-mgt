class Pregnancy < ActiveRecord::Base
  belongs_to :dog
  has_many :matings
  has_many :litters

  validates :dog_id, presence: true
  validates :total_puppy, presence: true, numericality: true
end

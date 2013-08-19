class Pregnancy < ActiveRecord::Base
  belongs_to :dog
  has_many :matings
  has_many :litters
end

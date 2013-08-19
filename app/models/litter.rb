class Litter < ActiveRecord::Base
  belongs_to :pregnancy
  belongs_to :color
end

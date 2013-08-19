class ShowEntry < ActiveRecord::Base
  belongs_to :dog
  belongs_to :show
  has_many :dog_expenses

  has_many :pictures, :as => :attachable, :dependent => :destroy
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  
end

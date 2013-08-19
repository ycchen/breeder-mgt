class AddDogIdToLitter < ActiveRecord::Migration
  def change
    add_reference :litters, :dog, index: true
  end
end

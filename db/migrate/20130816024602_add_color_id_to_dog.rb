class AddColorIdToDog < ActiveRecord::Migration
  def change
    add_reference :dogs, :color, index: true
  end
end

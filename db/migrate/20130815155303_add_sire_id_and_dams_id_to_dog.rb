class AddSireIdAndDamsIdToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :sire_id, :integer
    add_column :dogs, :dams_id, :integer
  end
end

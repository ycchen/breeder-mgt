class AddStatusIdToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :status_id, :integer, default: 1
  end
end

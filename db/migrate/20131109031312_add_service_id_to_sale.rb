class AddServiceIdToSale < ActiveRecord::Migration
  def change
    add_column :sales, :service_id, :integer
  end
end

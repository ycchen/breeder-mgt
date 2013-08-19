class AddClassToShowEntry < ActiveRecord::Migration
  def change
    add_column :show_entries, :reg_class, :string
    add_column :show_entries, :judge, :string
  end
end

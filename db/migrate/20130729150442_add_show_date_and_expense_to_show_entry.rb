class AddShowDateAndExpenseToShowEntry < ActiveRecord::Migration
  def change
    add_column :show_entries, :show_date, :date
    add_column :show_entries, :expense, :decimal, :precision => 8, :scale => 2, :default => 0.0
  end
end

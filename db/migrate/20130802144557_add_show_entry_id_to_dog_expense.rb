class AddShowEntryIdToDogExpense < ActiveRecord::Migration
  def change
    add_reference :dog_expenses, :show_entry, index: true
  end
end

class AddCurrencyToDogExpense < ActiveRecord::Migration
  def change
    add_column :dog_expenses, :currency, :string
  end
end

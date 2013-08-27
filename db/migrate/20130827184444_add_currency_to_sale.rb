class AddCurrencyToSale < ActiveRecord::Migration
  def change
    add_column :sales, :currency, :string
  end
end

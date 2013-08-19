class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :dog, index: true
      t.references :customer, index: true
      t.date :sale_date
      t.decimal :sale_price, :precision => 8, :scale => 2, :default => 0.0
      t.text :note

      t.timestamps
    end
  end
end

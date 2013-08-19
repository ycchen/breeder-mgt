class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :sale
      t.references :payment_type
      t.references :payment_status
      t.date :payment_date
      t.decimal :amount, :precision => 8, :scale => 2, :default => 0.0
      t.text :note

      t.timestamps
    end
  end
end

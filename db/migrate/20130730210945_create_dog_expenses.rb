class CreateDogExpenses < ActiveRecord::Migration
  def change
    create_table :dog_expenses do |t|
      t.references :dog, index: true
      t.references :charge, index: true
      t.date :charge_date
      t.decimal :amount, :precision => 8, :scale => 2, :default => 0.0
      t.text :note

      t.timestamps
    end
  end
end

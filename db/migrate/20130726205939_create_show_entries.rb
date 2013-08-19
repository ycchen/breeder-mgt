class CreateShowEntries < ActiveRecord::Migration
  def change
    create_table :show_entries do |t|
      t.references :dog, index: true
      t.references :show, index: true
      t.decimal :entry_fee, :precision => 8, :scale => 2, :default => 0.0
      t.decimal :handling_fee, :precision => 8, :scale => 2, :default => 0.0
      t.integer :points
      t.string :title

      t.timestamps
    end
  end
end

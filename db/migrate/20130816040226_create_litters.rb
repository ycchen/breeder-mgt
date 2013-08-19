class CreateLitters < ActiveRecord::Migration
  def change
    create_table :litters do |t|
      t.references :pregnancy, index: true
      t.string :gender
      t.references :color, index: true
      t.boolean :survival, :default => true

      t.timestamps
    end
  end
end

class CreatePregnancies < ActiveRecord::Migration
  def change
    create_table :pregnancies do |t|
      t.references :dog, index: true
      t.date :heat_start_date
      t.date :due_date
      t.date :surgery_date
      t.integer :total_puppy

      t.timestamps
    end
  end
end

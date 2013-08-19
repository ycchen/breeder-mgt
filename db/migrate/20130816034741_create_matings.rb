class CreateMatings < ActiveRecord::Migration
  def change
    create_table :matings do |t|
      t.references :pregnancy, index: true
      t.date :mating_date
      t.string :sire_id

      t.timestamps
    end
  end
end

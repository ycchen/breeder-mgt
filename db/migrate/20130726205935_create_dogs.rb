class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :call_name
      t.date :birthday
      t.string :sex
      t.string :registration_no

      t.timestamps
    end
  end
end

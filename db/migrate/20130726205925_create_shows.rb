class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :kennel_club
      t.date :start_date
      t.date :end_date
      t.string :location

      t.timestamps
    end
  end
end

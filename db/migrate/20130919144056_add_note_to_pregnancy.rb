class AddNoteToPregnancy < ActiveRecord::Migration
  def change
    add_column :pregnancies, :note, :text
  end
end

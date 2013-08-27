class AddNameToPregnancy < ActiveRecord::Migration
  def change
    add_column :pregnancies, :name, :string
  end
end

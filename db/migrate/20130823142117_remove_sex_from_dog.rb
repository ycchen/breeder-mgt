class RemoveSexFromDog < ActiveRecord::Migration
  def change
    remove_column :dogs, :sex, :string
  end
end

class AddCleftPalateToLitter < ActiveRecord::Migration
  def change
    add_column :litters, :cleft_palate, :boolean, default: false
  end
end

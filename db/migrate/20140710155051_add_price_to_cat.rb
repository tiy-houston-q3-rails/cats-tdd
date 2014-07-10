class AddPriceToCat < ActiveRecord::Migration
  def change
    add_column :cats, :price, :integer, default: 15000
  end
end

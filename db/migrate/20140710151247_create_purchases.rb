class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :cat, index: true
      t.integer :price
      t.string :purchaser_name

      t.timestamps
    end
  end
end

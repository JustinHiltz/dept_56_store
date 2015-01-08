class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :item_number
      t.string :name
      t.float :price, precision: 8, scale: 2 
      t.boolean :show, default: false
      t.integer :collection

      t.timestamps
    end
  end
end

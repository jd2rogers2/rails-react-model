class CreateOrderedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :ordered_products do |t|
      t.references :cart, foreign_key: true
      t.string :name
      t.float :price
      t.string :img

      t.timestamps
    end
  end
end

class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :quantity
      t.boolean :delivery
      t.boolean :gluten_free
      t.boolean :vegan
      t.boolean :dairy_free
      t.timestamps
    end
  end
end

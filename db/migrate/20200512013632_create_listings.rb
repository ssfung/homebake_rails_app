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
      t.references :baker, null: false, foreign_key: true

      t.timestamps
    end
  end
end

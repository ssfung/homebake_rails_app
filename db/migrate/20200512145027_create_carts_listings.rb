class CreateCartsListings < ActiveRecord::Migration[6.0]
  def change
    create_table :carts_listings do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end

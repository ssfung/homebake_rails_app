class CreateBakers < ActiveRecord::Migration[6.0]
  def change
    create_table :bakers do |t|
      t.text :description
      t.string :location
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end

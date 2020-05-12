class DropBakersTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :bakers
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end

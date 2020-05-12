class RemoveBakerIdFromListings < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :baker_id, :integer
  end
end

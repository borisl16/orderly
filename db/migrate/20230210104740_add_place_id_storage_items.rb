class AddPlaceIdStorageItems < ActiveRecord::Migration[7.0]
  def change
    add_column :storage_items, :place_id, :integer, null: false
  end
end

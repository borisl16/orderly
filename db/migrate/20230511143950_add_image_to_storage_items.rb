class AddImageToStorageItems < ActiveRecord::Migration[7.0]
  def change
    add_column :storage_items, :image, :string
  end
end

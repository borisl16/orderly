class CreateStorageItems < ActiveRecord::Migration[7.0]
  def change
    create_table :storage_items do |t|
      t.string :title
      t.text :body
      t.references :shark, foreign_key: true

      t.timestamps
    end
  end
end

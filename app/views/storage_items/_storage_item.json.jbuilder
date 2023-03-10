json.extract! storage_item, :id, :title, :body, :created_at, :updated_at
json.url storage_item_url(storage_item, format: :json)

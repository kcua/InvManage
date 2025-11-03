json.extract! item, :id, :name, :sku, :quantity, :price, :description, :category_id, :created_at, :updated_at
json.url item_url(item, format: :json)

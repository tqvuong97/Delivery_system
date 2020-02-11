json.extract! item, :id, :name, :unit, :price, :total, :order_id, :created_at, :updated_at
json.url item_url(item, format: :json)

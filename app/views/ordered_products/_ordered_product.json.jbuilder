json.extract! ordered_product, :id, :cart_id, :name, :price, :img, :created_at, :updated_at
json.url ordered_product_url(ordered_product, format: :json)

json.extract! item, :id, :name, :quantity, :price, :pincode, :availability, :publish, :created_at, :updated_at
json.url item_url(item, format: :json)
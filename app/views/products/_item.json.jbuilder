json.extract! product, :id, :code, :description, :status,:quantity, :price, :total, :paid, :balance, :created_at, :updated_at
json.url product_url(product, format: :json)

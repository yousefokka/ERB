json.extract! order, :id, :pname, :price, :quantity, :customer_id, :ecomerc_id, :created_at, :updated_at
json.url order_url(order, format: :json)

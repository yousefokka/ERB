json.extract! customer, :id, :Fname, :Sname, :Email, :password, :phone, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)

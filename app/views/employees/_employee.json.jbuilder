json.extract! employee, :id, :FName, :LName, :Email, :password, :age, :address, :phone, :department_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)

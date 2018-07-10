json.extract! staff, :id, :first_name, :last_name, :address, :postal_code, :city, :gsm, :tel, :email, :role, :birthday, :created_at, :updated_at
json.url staff_url(staff, format: :json)

json.array!(@customers) do |customer|
  json.extract! customer, :name, :first_name, :last_name, :email, :phone, :mobile, :address, :city, :zipcode
  json.url customer_url(customer, format: :json)
end

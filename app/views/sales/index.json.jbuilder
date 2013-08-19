json.array!(@sales) do |sale|
  json.extract! sale, :dog_id, :customer_id, :sale_date, :sale_price, :note
  json.url sale_url(sale, format: :json)
end

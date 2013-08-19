json.array!(@payments) do |payment|
  json.extract! payment, :sale, :payment_type, :payment_date, :amount, :note
  json.url payment_url(payment, format: :json)
end

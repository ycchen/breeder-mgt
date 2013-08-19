json.array!(@charges) do |charge|
  json.extract! charge, :name, :description
  json.url charge_url(charge, format: :json)
end

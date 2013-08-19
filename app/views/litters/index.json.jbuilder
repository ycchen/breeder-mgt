json.array!(@litters) do |litter|
  json.extract! litter, :pregnancy_id, :gender, :color_id, :survival
  json.url litter_url(litter, format: :json)
end

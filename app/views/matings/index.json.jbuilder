json.array!(@matings) do |mating|
  json.extract! mating, :pregnancy_id, :mating_date, :sire_id
  json.url mating_url(mating, format: :json)
end

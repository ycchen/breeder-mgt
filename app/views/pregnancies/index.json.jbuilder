json.array!(@pregnancies) do |pregnancy|
  json.extract! pregnancy, :dog_id, :heat_start_date, :due_date, :surgery_date, :total_puppy
  json.url pregnancy_url(pregnancy, format: :json)
end

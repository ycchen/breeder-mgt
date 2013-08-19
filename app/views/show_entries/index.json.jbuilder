json.array!(@show_entries) do |show_entry|
  json.extract! show_entry, :dog_id, :show_id, :entry_fee, :handling_fee, :points, :title
  json.url show_entry_url(show_entry, format: :json)
end

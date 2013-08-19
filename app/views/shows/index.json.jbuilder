json.array!(@shows) do |show|
  json.extract! show, :name, :kennel_club, :show_date, :location
  json.url show_url(show, format: :json)
end

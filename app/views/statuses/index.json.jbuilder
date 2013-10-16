json.array!(@statuses) do |status|
  json.extract! status, :name, :sort
  json.url status_url(status, format: :json)
end

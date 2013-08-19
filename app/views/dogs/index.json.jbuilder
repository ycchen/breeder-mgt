json.array!(@dogs) do |dog|
  json.extract! dog, :name, :call_name, :birthday, :sex, :registration_no
  json.url dog_url(dog, format: :json)
end

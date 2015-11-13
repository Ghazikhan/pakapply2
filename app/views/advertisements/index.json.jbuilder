json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :user_id
  json.url advertisement_url(advertisement, format: :json)
end

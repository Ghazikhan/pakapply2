json.array!(@fields) do |field|
  json.extract! field, :id, :field_name
  json.url field_url(field, format: :json)
end

json.array!(@institutes) do |institute|
  json.extract! institute, :id, :institute_name
  json.url institute_url(institute, format: :json)
end

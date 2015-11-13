json.array!(@cities) do |city|
  json.extract! city, :id, :city_name, :institute_id, :job_id
  json.url city_url(city, format: :json)
end

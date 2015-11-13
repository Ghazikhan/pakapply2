json.array!(@organizations) do |organization|
  json.extract! organization, :id, :organization_name, :job_id
  json.url organization_url(organization, format: :json)
end

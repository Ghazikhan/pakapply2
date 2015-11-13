json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :maximum_qualification, :advertisement_id
  json.url job_url(job, format: :json)
end

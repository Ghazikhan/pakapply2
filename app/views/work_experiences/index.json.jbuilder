json.array!(@work_experiences) do |work_experience|
  json.extract! work_experience, :id, :work_type, :start_date, :end_date, :user_id, :field_id
  json.url work_experience_url(work_experience, format: :json)
end

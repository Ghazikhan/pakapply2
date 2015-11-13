json.array!(@educations) do |education|
  json.extract! education, :id, :division_grade, :obtaiend_marks, :years, :user_id, :institute_id, :degree_id
  json.url education_url(education, format: :json)
end

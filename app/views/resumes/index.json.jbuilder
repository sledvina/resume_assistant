json.array!(@resumes) do |resume|
  json.extract! resume, :resume_name, :date_created, :user_name, :email, :phone, :address, :user_id
  json.url resume_url(resume, format: :json)
end
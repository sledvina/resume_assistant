json.array!(@education_entries) do |education_entry|
  json.extract! education_entry, :school, :graduation_date, :degree, :major, :gpa, :accolades
  json.url education_entry_url(education_entry, format: :json)
end
json.array!(@work_entries) do |work_entry|
  json.extract! work_entry, :Position, :Company, :start_date, :end_date, :description
  json.url work_entry_url(work_entry, format: :json)
end
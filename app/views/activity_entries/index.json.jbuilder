json.array!(@activity_entries) do |activity_entry|
  json.extract! activity_entry, :position, :organization, :start_date, :end_date, :description, :resume
  json.url activity_entry_url(activity_entry, format: :json)
end
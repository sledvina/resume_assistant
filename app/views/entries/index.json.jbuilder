json.array!(@entries) do |entry|
  json.extract! entry, :resume_id
  json.url entry_url(entry, format: :json)
end
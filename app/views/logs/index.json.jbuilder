json.array!(@logs) do |log|
  json.extract! log, :id, :primaryKey, :LOG_DATE, :LOG_TIME, :LOG_USER, :LOG_NOTES
  json.url log_url(log, format: :json)
end

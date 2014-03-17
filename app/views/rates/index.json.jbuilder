json.array!(@rates) do |rate|
  json.extract! rate, :id, :primaryKey, :RATE_STAFF, :RATE_CLIENT_NUM, :RATE_TASK, :RATE_KEY, :RATE_NOTE, :SPECIAL_RATE, :RATE_ADDED_BY, :RATE_ADDED_WHEN, :RATE_EDITED_BY, :RATE_EDITED_WHEN
  json.url rate_url(rate, format: :json)
end

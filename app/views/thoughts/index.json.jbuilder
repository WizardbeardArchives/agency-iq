json.array!(@thoughts) do |thought|
  json.extract! thought, :id, :primaryKey, :MSG_DATE, :MSG_TEXT, :MSG_1, :MSG_DAILY_INFO_CTR
  json.url thought_url(thought, format: :json)
end

json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :primaryKey, :CAL_KIND, :CAL_DATE, :CAL_TO_FROM, :CAL_AMT, :CAL_ADDED_BY, :CAL_DESC, :CAL_MAIL_TO, :CAL_NOTIFIED, :CAL_TIME, :CAL_PRIORITY, :CAL_STATUS, :CAL_ID, :CAL_CLIENT_NUM, :CAL_SUBJECT, :CAL_NOTIFY_DAYS, :CAL_LOCATION, :CAL_JOB_NUM, :CAL_TASK
  json.url calendar_url(calendar, format: :json)
end

json.array!(@web_logs) do |web_log|
  json.extract! web_log, :id, :primaryKey, :WLOG_DATETIME, :WLOG_USER, :WLOG_STATUS, :WLOG_EVENT, :WLOG_PAGE, :WLOG_IP, :WLOG_DATE, :WLOG_TIME, :WLOG_DAY, :WLOG_HOUR
  json.url web_log_url(web_log, format: :json)
end

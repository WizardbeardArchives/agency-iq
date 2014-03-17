json.array!(@mlink_logs) do |mlink_log|
  json.extract! mlink_log, :id, :primaryKey, :MLOG_DATE, :MLOG_BUYID, :MLOG_STATUS, :MLOG_ADDED_BY
  json.url mlink_log_url(mlink_log, format: :json)
end

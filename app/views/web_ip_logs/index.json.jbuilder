json.array!(@web_ip_logs) do |web_ip_log|
  json.extract! web_ip_log, :id, :primaryKey, :WIP_IP, :WIP_NAME, :WIP_DATE, :WIP_DATETIME
  json.url web_ip_log_url(web_ip_log, format: :json)
end

json.array!(@schedule_headers) do |schedule_header|
  json.extract! schedule_header, :id, :primaryKey, :SH_DATE1, :SH_DATE2, :SH_CLIENT_NUM, :SH_JOB_NUM, :SH_1, :SH_2, :SH_3, :SH_4, :SH_5, :SH_6, :SH_7, :SH_8, :SH_9, :SH_10, :SH_11, :SH_12
  json.url schedule_header_url(schedule_header, format: :json)
end

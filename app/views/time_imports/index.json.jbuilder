json.array!(@time_imports) do |time_import|
  json.extract! time_import, :id, :primaryKey, :TM_DATE, :TM_JOB_NUM, :TM_TASK, :TM_HOURS, :TM_STAFF, :TM_DESC, :TM_BAD, :TM_COST_RATE, :TM_BILL_RATE, :TM_CLIENT_NUM, :TM_BILLABLE, :TM_PERIOD, :TM_PALM_ID, :TM_PALM_CATEGORY, :TM_PALM_ATTRIBS, :TM_OT
  json.url time_import_url(time_import, format: :json)
end

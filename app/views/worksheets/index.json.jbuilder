json.array!(@worksheets) do |worksheet|
  json.extract! worksheet, :id, :primaryKey, :EST_KEY, :EST_LINE1, :EST_LINE2, :EST_LINE3, :EST_LINE4, :EST_AMT1, :EST_AMT2, :EST_AMT3, :EST_AMT4, :EST_RESOURCE1, :EST_RESOURCE2, :EST_RESOURCE3, :EST_RESOURCE4, :EST_RATE1, :EST_RATE2, :EST_RATE3, :EST_RATE4, :EST_HRS1, :EST_HRS2, :EST_HRS3, :EST_HRS4, :EST_JOB_NUM, :EST_COLUMN, :EST_TASK, :EST_MARKUP, :EST_REV, :EST_ADDED_BY, :EST_ADDED_WHEN, :EST_EDITED_BY, :EST_EDITED_WHEN
  json.url worksheet_url(worksheet, format: :json)
end

json.array!(@histories) do |history|
  json.extract! history, :id, :primaryKey, :H_JOB_NUM, :H_NUM, :H_WHO, :H_DATE, :H_DESC, :H_RESOLVED, :H_FOR, :H_USER_NOTE, :H_MAIL_TO, :H_MANUAL, :H_ADDED_BY, :H_ADDED_WHEN, :H_EDITED_BY, :H_EDITED_WHEN
  json.url history_url(history, format: :json)
end

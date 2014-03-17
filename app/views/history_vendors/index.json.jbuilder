json.array!(@history_vendors) do |history_vendor|
  json.extract! history_vendor, :id, :primaryKey, :HV_VENDOR_NUM, :HV_NUM, :HV_ADDED_BY, :HV_DATE, :HV_SUBJECT, :HV_OK, :HV_FOR, :HV_DESC, :HV_MAIL_TO, :HV_CC, :HV_BCC, :HV_NOTIFIED, :HV_INV_NUM, :HV_EDITED_BY, :HV_EDITED_WHEN
  json.url history_vendor_url(history_vendor, format: :json)
end

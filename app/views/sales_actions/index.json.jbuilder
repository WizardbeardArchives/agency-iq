json.array!(@sales_actions) do |sales_action|
  json.extract! sales_action, :id, :primaryKey, :SACT_KIND, :SACT_DATE, :SACT_TIME, :SACT_LENGTH, :SACT_CAMPAIGN, :SACT_CON__SEQ, :SACT_PRIORITY, :SACT_SLTR__SEQ, :SACT_FROM_STAFF, :SACT_PRINTED, :SACT_PRINTED_BY, :SACT_CLIENT_NUM, :SACT_ADDED_BY, :SACT_SUBJECT, :SACT_BODY, :SACT_PS, :SACT_ADDED_WHEN, :SACT_EDITED_BY, :SACT_EDITED_WHEN
  json.url sales_action_url(sales_action, format: :json)
end

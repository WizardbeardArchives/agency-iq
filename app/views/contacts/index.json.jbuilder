json.array!(@contacts) do |contact|
  json.extract! contact, :id, :primaryKey, :CON_C_NUM, :CON_V_NUM, :CON_KIND, :CON_FIRST_NAME, :CON_LAST_NAME, :CON_MID_INITIAL, :CON_SAL, :CON_TITLE, :CON_DECISION_MAKER, :CON_PHONE_WORK, :CON_PHONE_HOME, :CON_PHONE_MOBILE, :CON_FAX_WORK, :CON_PAGER, :CON_NOTE, :CON_EMAIL_WORK, :CON_EMAIL_HOME, :CON_DATE_ADDED, :CON_ADDED_BY, :CON_LAST_CALL, :CON_LAST_BY, :CON_FAX_HOME, :CON_SALES_EMAIL, :CON_ORG, :CON_FULL_NAME, :CON_ADDRESS1, :CON_ADDRESS2, :CON_ADDRESS3, :CON_ADDRESS4, :CON_ADDRESS5, :CON_ADDRESS6, :CON_APPROVE_JOBS, :CON_EDITED_BY, :CON_EDITED_WHEN
  json.url contact_url(contact, format: :json)
end

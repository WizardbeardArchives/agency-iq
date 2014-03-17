json.array!(@homebases) do |homebasis|
  json.extract! homebasis, :id, :primaryKey, :HOME_JOB_NUM, :HOME_TASK, :HOME_STATUS, :HOME_S_INITIALS, :HOME_ADDED_BY, :HOME_DATE_ADDED, :HOME_DUE_DATE, :HOME_SUBJECT, :HOME_KIND, :HOME_REPLY, :HOME_PRIVATE1, :HOME_PRIVATE2, :HOME_PRIORITY, :HOME_SORT, :HOME_CHOICE1, :HOME_CHOICE2, :HOME_CHOICE3, :HOME_CHOICE4, :HOME_CHOICE5, :HOME_CHOICE6, :HOME_LAST_REPLY, :HOME_MESSAGE, :HOME_LOCKED, :HOME_ADDED_KIND, :HOME_COMMENT, :HOME_RATING, :HOME_PROD_STATUS, :HOME_ORIG__SEQ, :HOME_FILE_NAME, :HOME_X_PHASE, :HOME_AVAIL_CREATIVE, :HOME_AVAIL_PROD, :HOME_AVAIL_STAFF, :HOME_AVAIL_CLIENTS, :HOME_AVAIL_VENDORS, :HOME_EMAIL_IT
  json.url homebasis_url(homebasis, format: :json)
end

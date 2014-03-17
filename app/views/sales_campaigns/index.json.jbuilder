json.array!(@sales_campaigns) do |sales_campaign|
  json.extract! sales_campaign, :id, :primaryKey, :SCAM_ID, :SCAM_DESC, :SCAM_ADDED_BY, :SCAM_START, :SCAM_END, :SCAM_ACTION, :SCAM_ACTION1, :SCAM_ACTION1_DAYS, :SCAM_ACTION2, :SCAM_ACTION2_DAYS, :SCAM_ACTION3, :SCAM_ACTION3_DAYS, :SCAM_CLIENT_NUM, :SCAM_OK, :SCAM_OK_BY, :SCAM_ADDED_WHEN, :SCAM_EDITED_BY, :SCAM_EDITED_WHEN
  json.url sales_campaign_url(sales_campaign, format: :json)
end

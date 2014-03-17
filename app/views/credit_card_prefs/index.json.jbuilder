json.array!(@credit_card_prefs) do |credit_card_pref|
  json.extract! credit_card_pref, :id, :primaryKey, :CC_KIND, :CC_VENDOR_NUM, :CC_CGL, :CC_PAYEE, :CC_JOB_NUM, :CC_TASK, :CC_DGL, :CC_ACCT_NUM
  json.url credit_card_pref_url(credit_card_pref, format: :json)
end

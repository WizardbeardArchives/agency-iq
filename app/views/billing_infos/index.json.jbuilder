json.array!(@billing_infos) do |billing_info|
  json.extract! billing_info, :id, :primaryKey, :B_JOB_NUM, :B_COST_CTR1, :B_COST_CTR2, :B_COST_CTR3, :B_COST_CTR4, :B_COST_CTR5, :B_COST_CTR6, :B_COST_CTR7, :B_COST_CTR8, :B_COST_CTR9, :B_ACCT1, :B_ACCT2, :B_ACCT3, :B_ACCT4, :B_ACCT5, :B_ACCT6, :B_ACCT7, :B_ACCT8, :B_ACCT9, :B_PERCENT1, :B_PERCENT2, :B_PERCENT3, :B_PERCENT4, :B_PERCENT5, :B_PERCENT6, :B_PERCENT7, :B_PERCENT8, :B_PERCENT9, :B_EDITED_BY, :B_EDITED_WHEN
  json.url billing_info_url(billing_info, format: :json)
end

json.array!(@recur_aps) do |recur_ap|
  json.extract! recur_ap, :id, :primaryKey, :RAP_VENDOR, :RAP_DATE, :RAP_AMT1, :RAP_DESC, :RAP_CGL, :RAP_DGL1, :RAP_ADDED_BY, :RAP_INV_NUM, :RAP_PERIOD, :RAP_INV_DATE, :RAP_DGL2, :RAP_DGL3, :RAP_DGL4, :RAP_DGL5, :RAP_DGL6, :RAP_AMT2, :RAP_AMT3, :RAP_AMT4, :RAP_AMT5, :RAP_AMT6, :RAP_ADDED_WHEN, :RAP_EDITED_BY, :RAP_EDITED_WHEN
  json.url recur_ap_url(recur_ap, format: :json)
end

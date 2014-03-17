json.array!(@user_info_ctrs) do |user_info_ctr|
  json.extract! user_info_ctr, :id, :primaryKey, :UI_WORK, :UI_PROC1, :UI_PROC2, :UI_PROC3, :UI_PROC4, :UI_PROC5, :UI_PROC6, :UI_LABEL1, :UI_LABEL2, :UI_LABEL3, :UI_LABEL4, :UI_LABEL5, :UI_LABEL6
  json.url user_info_ctr_url(user_info_ctr, format: :json)
end

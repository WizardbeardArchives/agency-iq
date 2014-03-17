json.array!(@finances) do |finance|
  json.extract! finance, :id, :primaryKey, :FI_AC_NUM, :FI_CATEGORY, :FI_CLASS, :FI_MTD, :FI_MTD_PERCENT, :FI_YTD, :FI_YTD_PERCENT, :FI_MONTH, :FI_YEAR, :FI_1, :FI_2, :FI_3, :FI_4, :FI_5, :FI_6, :FI_7, :FI_8, :FI_NAME, :FI_NOTE, :FI_SUB_CLASS, :FI_ROLL_UP, :FI_PCT1, :FI_PCT2, :FI_PCT3, :FI_PCT4, :FI_L_MONTH, :FI_L_MTD, :FI_L_YEAR, :FI_L_YTD, :FI_L_MTD_PERCENT, :FI_L_YTD_PERCENT, :FI_L_PCT1, :FI_L_PCT2, :FI_L_PCT3, :FI_L_PCT4, :FI_CLIENT_NUM, :FI_GROUP, :FI_PCT5, :FI_L_PCT5
  json.url finance_url(finance, format: :json)
end

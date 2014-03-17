json.array!(@y1099s) do |y1099|
  json.extract! y1099, :id, :primaryKey, :Y_NAME1, :Y_ADDRESS1, :Y_CITY_STATE1, :Y_ZIP1, :Y_TAX1, :Y_AMT1, :Y_NAME2, :Y_ADDRESS2, :Y_CITY_STATE2, :Y_ZIP2, :Y_TAX2, :Y_AMT2, :Y_NAME3, :Y_ADDRESS3, :Y_CITY_STATE3, :Y_ZIP3, :Y_AMT3, :Y_TAX3, :Y_DBA, :Y_DBA2, :Y_RENT, :Y_RENT2
  json.url y1099_url(y1099, format: :json)
end

json.array!(@pcs) do |pc|
  json.extract! pc, :id, :primaryKey, :PC_NUM, :PC_NAME, :PC_DESC, :PC_CORP_ID, :PC_ADDED_BY, :PC_ADDED_WHEN, :PC_EDITED_BY, :PC_EDITED_WHEN, :PC_BUS_UNIT, :PC_OUTDATED, :PC_AR_SHOW, :PC_BILL_ORG, :PC_BILL_ADDRESS1, :PC_BILL_ADDRESS2, :PC_BILL_ADDRESS3
  json.url pc_url(pc, format: :json)
end

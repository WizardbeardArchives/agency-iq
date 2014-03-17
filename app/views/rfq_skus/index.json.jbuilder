json.array!(@rfq_skus) do |rfq_sku|
  json.extract! rfq_sku, :id, :primaryKey, :RFQSKU_PART_NUM, :RFQSKU_NAME, :RFQSKU_DESC, :RFQSKU_TYPE, :RFQSKU_MARKUP, :RFQSKU_UNIT_COST, :RFQSKU_VENDOR_NUM, :RFQSKU_TASK, :RFQSKU_JOB_TYPE
  json.url rfq_sku_url(rfq_sku, format: :json)
end

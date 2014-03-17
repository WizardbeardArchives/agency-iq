json.array!(@rfq_items) do |rfq_item|
  json.extract! rfq_item, :id, :primaryKey, :RFQX_LINE_NUMBER, :RFQX_NUM, :RFQX_VENDOR2, :RFQX_JOB_NUM, :RFQX_TASK, :RFQX_NAME, :RFQX_DESC2, :RFQX_QTY, :RFQX_UNIT_COST, :RFQX_COST, :RFQX_GROSS, :RFQX_MARKUP, :RFQX_PO_NUM, :RFQX_TAXABLE1, :RFQX_TAXABLE2, :RFQX_INCLUDE, :RFQX_TYPE
  json.url rfq_item_url(rfq_item, format: :json)
end

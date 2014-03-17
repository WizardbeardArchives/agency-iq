json.array!(@rfq_vendors) do |rfq_vendor|
  json.extract! rfq_vendor, :id, :primaryKey, :RFQV_NUM, :RFQV_VENDOR_NUM, :RFQV_CONTACT, :RFQV_PHONE, :RFQV_FAX, :RFQV_WINNER, :RFQV_VORG, :RFQV_TYPE
  json.url rfq_vendor_url(rfq_vendor, format: :json)
end

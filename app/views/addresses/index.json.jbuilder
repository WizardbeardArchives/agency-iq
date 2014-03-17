json.array!(@addresses) do |address|
  json.extract! address, :id, :primaryKey, :ADR_CLIENT_NUM, :ADR_NAME, :ADR_ADDRESS1, :ADR_ADDRESS2, :ADR_ADDRESS3, :ADR_ADDRESS4, :ADR_ADDRESS5, :ADR_ADDRESS6, :ADR_KIND, :ADR_ORG, :ADR_TAX_AREA, :ADR_TAX_RATE1, :ADR_TAX_RATE2, :ADR_TAX_GL1, :ADR_TAX_GL2, :ADR_ADDED_BY, :ADR_ADDED_WHEN, :ADR_EDITED_BY, :ADR_EDITED_WHEN
  json.url address_url(address, format: :json)
end

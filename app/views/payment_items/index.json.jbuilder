json.array!(@payment_items) do |payment_item|
  json.extract! payment_item, :id, :primaryKey, :PX_AR_NUM, :PX_AMT, :PX_CGL, :PX_POSTED, :PX_PERIOD, :PX_CHECK_NUM, :PX_CLIENT_NUM, :PX_DISC_AMT, :PX_DISC_GL, :PX_ADDED_BY, :PX_ADDED_WHEN, :PX_EDITED_BY, :PX_EDITED_WHEN
  json.url payment_item_url(payment_item, format: :json)
end

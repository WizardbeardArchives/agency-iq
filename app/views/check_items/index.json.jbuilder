json.array!(@check_items) do |check_item|
  json.extract! check_item, :id, :primaryKey, :CX_CK_DATE, :CX_NET_AMT, :CX_DGL, :CX_AP_NUM, :CX_VENDOR_NUM, :CX_JOB_NUM, :CX_TASK, :CX_POSTED, :CX_GROSS_AMT, :CX_CK_NUM, :CX_COMM_AMT, :CX_MARKUP_PC, :CX_DISC_AMT, :CX_PERIOD, :CX_COST__SEQ, :CX_DISC_DGL, :CX_BILLABLE, :CX_NOTE, :CX_ADDED_BY, :CX_ADDED_WHEN, :CX_EDITED_BY, :CX_EDITED_WHEN
  json.url check_item_url(check_item, format: :json)
end

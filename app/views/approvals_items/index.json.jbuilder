json.array!(@approvals_items) do |approvals_item|
  json.extract! approvals_item, :id, :primaryKey, :APPRX_ID, :APPRX_FILE_NAME, :APPRX_FILE_CPX, :APPRX_STATUS, :APPRX_STATUS_NOTE
  json.url approvals_item_url(approvals_item, format: :json)
end

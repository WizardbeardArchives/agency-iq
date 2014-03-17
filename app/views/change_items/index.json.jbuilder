json.array!(@change_items) do |change_item|
  json.extract! change_item, :id, :primaryKey, :CHX_JOB_NUM, :CHX_TASK, :CHX_NAME, :CHX_HOURS, :CHX_BUDGET, :CHX_ESTIMATE, :CHX_NOTES, :CHX_NUM, :CHX_TAXABLE1, :CHX_TAXABLE2, :CHX_ROLLUP, :CHX_ADDED_BY, :CHX_ADDED_WHEN, :CHX_EDITED_BY, :CHX_EDITED_WHEN
  json.url change_item_url(change_item, format: :json)
end

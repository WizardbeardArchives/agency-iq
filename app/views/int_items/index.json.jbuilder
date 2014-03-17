json.array!(@int_items) do |int_item|
  json.extract! int_item, :id, :primaryKey, :INT_ITEM, :INT_SIZE, :INT_KEY, :INT_DESC, :INT_TASK, :INT_COST_EA, :INT_UNIT, :INT_GROSS_EA, :INT_ADDED_BY, :INT_ADDED_WHEN, :INT_EDITED_BY, :INT_EDITED_WHEN
  json.url int_item_url(int_item, format: :json)
end

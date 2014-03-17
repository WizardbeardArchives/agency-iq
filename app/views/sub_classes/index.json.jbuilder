json.array!(@sub_classes) do |sub_class|
  json.extract! sub_class, :id, :primaryKey, :SUB_NUM, :SUB_DESC, :SUB_ADDED_BY, :SUB_ADDED_WHEN, :SUB_EDITED_BY, :SUB_EDITED_WHEN
  json.url sub_class_url(sub_class, format: :json)
end

json.array!(@groups) do |group|
  json.extract! group, :id, :primaryKey, :GROUP_NUM, :GROUP_DESC, :GROUP_CAT, :GROUP_ADDED_BY, :GROUP_ADDED_WHEN, :GROUP_EDITED_BY, :GROUP_EDITED_WHEN
  json.url group_url(group, format: :json)
end

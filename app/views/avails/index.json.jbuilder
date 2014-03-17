json.array!(@avails) do |avail|
  json.extract! avail, :id, :primaryKey, :AV_INITIALS, :AV_DATE, :AV_KEY, :AV_KIND, :AV_NOTE, :AV_DESC, :AV_ADDED_BY, :AV_ADDED_WHEN, :AV_EDITED_BY, :AV_EDIT_WHEN
  json.url avail_url(avail, format: :json)
end

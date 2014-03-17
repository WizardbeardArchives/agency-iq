json.array!(@palm_cats) do |palm_cat|
  json.extract! palm_cat, :id, :primaryKey, :PALM_CAT_NAME, :PALM_CAT_ID, :PALM_CAT_USER
  json.url palm_cat_url(palm_cat, format: :json)
end

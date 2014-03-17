json.array!(@f_preferences) do |f_preference|
  json.extract! f_preference, :id, :primaryKey, :prSQLConvFlag
  json.url f_preference_url(f_preference, format: :json)
end

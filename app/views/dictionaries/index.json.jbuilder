json.array!(@dictionaries) do |dictionary|
  json.extract! dictionary, :id, :primaryKey, :DICT_NAME, :DICT_LANG_ID
  json.url dictionary_url(dictionary, format: :json)
end

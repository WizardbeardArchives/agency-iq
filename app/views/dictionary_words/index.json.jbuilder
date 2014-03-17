json.array!(@dictionary_words) do |dictionary_word|
  json.extract! dictionary_word, :id, :primaryKey, :DWORD_DICT_NAME, :DWORD_WORD
  json.url dictionary_word_url(dictionary_word, format: :json)
end

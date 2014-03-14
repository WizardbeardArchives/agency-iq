class DictionaryWord < ActiveRecord::Base
    self.table_name = 'dictionary_word'
    self.primary_key = :DWORD_SEQ

end

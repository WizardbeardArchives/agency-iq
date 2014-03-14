class Dictionary < ActiveRecord::Base
    self.table_name = 'dictionary'
    self.primary_key = :DICT_SEQ

end

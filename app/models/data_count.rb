class DataCount < ActiveRecord::Base
    self.table_name = 'data_count'
    self.primary_key = :DATA_SEQ

end

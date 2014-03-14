class Worksheet < ActiveRecord::Base
    self.table_name = 'worksheet'
    self.primary_key = :EST_SEQ

end

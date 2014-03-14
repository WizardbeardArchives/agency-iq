class History < ActiveRecord::Base
    self.table_name = 'history'
    self.primary_key = :H_SEQ

end

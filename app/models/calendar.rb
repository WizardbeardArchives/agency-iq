class Calendar < ActiveRecord::Base
    self.table_name = 'calendar'
    self.primary_key = :CAL_SEQ

end

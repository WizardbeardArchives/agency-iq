class TimeCard < ActiveRecord::Base
    self.table_name = 'time_card'
    self.primary_key = :TIME_SEQ

end

class Log < ActiveRecord::Base
    self.table_name = 'log'
    self.primary_key = :LOG_SEQ

end

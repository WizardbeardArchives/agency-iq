class TimeImport < ActiveRecord::Base
    self.table_name = 'time_import'
    self.primary_key = :TM_SEQ

end

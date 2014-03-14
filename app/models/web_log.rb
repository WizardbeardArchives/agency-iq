class WebLog < ActiveRecord::Base
    self.table_name = 'web_log'
    self.primary_key = :WLOG_SEQ

end

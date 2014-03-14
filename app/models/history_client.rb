class HistoryClient < ActiveRecord::Base
    self.table_name = 'history_client'
    self.primary_key = :HC_SEQ

end

class HistoryVendor < ActiveRecord::Base
    self.table_name = 'history_vendor'
    self.primary_key = :HV_SEQ

end

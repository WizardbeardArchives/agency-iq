class WorkOrder < ActiveRecord::Base
    self.table_name = 'work_order'
    self.primary_key = :WO_SEQ

end

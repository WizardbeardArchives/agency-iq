class JobOrder < ActiveRecord::Base
    self.table_name = 'job_order'
    self.primary_key = :CB_SEQ

end

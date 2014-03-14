class Outbox < ActiveRecord::Base
    self.table_name = 'outbox'
    self.primary_key = :OUT_SEQ

end

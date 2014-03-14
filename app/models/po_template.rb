class PoTemplate < ActiveRecord::Base
    self.table_name = 'po_template'
    self.primary_key = :PT_SEQ

end

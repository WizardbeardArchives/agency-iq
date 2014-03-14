class ChangeOrder < ActiveRecord::Base
    self.table_name = 'change_order'
    self.primary_key = :CHANGE_SEQ

end

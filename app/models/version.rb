class Version < ActiveRecord::Base
    self.table_name = 'version'
    self.primary_key = :VER_SEQ

end

class TaskTable < ActiveRecord::Base
    self.table_name = 'task_table'
    self.primary_key = :T_SEQ

end

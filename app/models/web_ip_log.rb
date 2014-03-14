class WebIpLog < ActiveRecord::Base
    self.table_name = 'web_ip_log'
    self.primary_key = :WIP_SEQ

end

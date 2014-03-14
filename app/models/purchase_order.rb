class PurchaseOrder < ActiveRecord::Base
    self.table_name = 'purchase_order'
    self.primary_key = :PO_SEQ

end

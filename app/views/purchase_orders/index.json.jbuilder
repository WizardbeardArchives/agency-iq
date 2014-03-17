json.array!(@purchase_orders) do |purchase_order|
  json.extract! purchase_order, :id, :primaryKey, :PO_NUM, :PO_JOB_NUM, :PO_TASK, :PO_DESC_LABEL, :PO_DESC, :PO_VENDOR_NUM, :PO_COST, :PO_MARKUP, :PO_COMM, :PO_TAX, :PO_GROSS, :PO_AMT_PAID, :PO_TYPE, :PO_CLIENT_NUM, :PO_SHIP_NOTE, :PO_SHIP1, :PO_SHIP2, :PO_SHIP3, :PO_SHIP4, :PO_QTY_LABEL, :PO_QTY, :PO_APPROVAL1, :PO_APPROVAL2, :PO_APPROVAL3, :PO_ORDERED_BY, :PO_STATUS, :PO_DUE_DATE, :PO_TERMS1, :PO_TERMS2, :PO_TERMS3, :PO_DATE, :PO_PC, :PO_TO1, :PO_TO2, :PO_TO3, :PO_TO4, :PO_TO5, :PO_VENDOR1, :PO_VENDOR2, :PO_VENDOR3, :PO_VENDOR4, :PO_VENDOR5, :PO_FIELD_LABEL1, :PO_FIELD_LABEL2, :PO_FIELD_LABEL3, :PO_FIELD_LABEL4, :PO_FIELD_LABEL5, :PO_FIELD1, :PO_FIELD2, :PO_FIELD3, :PO_FIELD4, :PO_FIELD5, :PO_HOLD, :PO_APPROVED, :PO_APPROVED_DAT, :PO_APPROVED_BY, :PO_AP_ALERT, :PO_TAX_EXEMPT, :PO_PERIOD, :PO_AR_BILLED, :PO_TO_BE_BILLED, :PO_AR_NUM, :PO_LINES, :PO_DISCLAIMER, :PO_CLOSED, :PO_FORM, :PO_TOTAL_TITLE, :PO_MAT_DUE_LABEL, :PO_IMPORT_FROM, :PO_TRAFFIC_INSTR, :PO_REP_INSTR, :PO_ADDED_BY, :PO_REV, :PO_FIELD6, :PO_FIELD_LABEL6, :PO_REP_NAME, :PO_REP_PHONE, :PO_REP_FAX, :PO_CAMPAIGN, :PO_BRAND, :PO_BLANKET, :PO_EDITED_BY, :PO_EDITED_WHEN, :PO_ADDED_WHEN, :PO_OWNERSHIP, :PO_PT_TEMPLATE
  json.url purchase_order_url(purchase_order, format: :json)
end

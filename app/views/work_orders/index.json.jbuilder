json.array!(@work_orders) do |work_order|
  json.extract! work_order, :id, :primaryKey, :WO_JOB_NUM, :WO_CLIENT_NUM, :WO_1_LABEL, :WO_2_LABEL, :WO_3_LABEL, :WO_4_LABEL, :WO_5_LABEL, :WO_6_LABEL, :WO_7_LABEL, :WO_8_LABEL, :WO_9_LABEL, :WO_10_LABEL, :WO_11_LABEL, :WO_12_LABEL, :WO_13_LABEL, :WO_14_LABEL, :WO_15_LABEL, :WO_1, :WO_2, :WO_3, :WO_4, :WO_5, :WO_6, :WO_7, :WO_8, :WO_9, :WO_10, :WO_11, :WO_12, :WO_13, :WO_14, :WO_15, :WO_ADDED_BY, :WO_REV_BY, :WO_OK, :WO_OK_BY, :WO_OK_DATE, :WO_APPROVED, :WO_APPROVED_DATE, :WO_APPROVED_BY, :WO_ADR_NAME
  json.url work_order_url(work_order, format: :json)
end

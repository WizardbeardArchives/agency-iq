json.array!(@un_checks) do |un_check|
  json.extract! un_check, :id, :primaryKey, :UNCKS_DEBIT, :UNCKS_CREDIT, :UNCKS_DESC, :UNCKS_REF, :UNCKS_TEMP_REC, :UNCKS_PAY_BATCH, :UNCKS_SOURCE, :UNCKS_RECONCILE, :UNCKS_DATE, :UNCKS_AC_NUM
  json.url un_check_url(un_check, format: :json)
end

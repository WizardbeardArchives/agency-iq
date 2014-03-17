json.array!(@data_counts) do |data_count|
  json.extract! data_count, :id, :primaryKey, :DATA_DATE, :DATA_AP, :DATA_AR, :DATA_JOBS, :DATA_CHECKS, :DATA_CLIENTS, :DATA_GL, :DATA_PAYMENTS, :DATA_PO, :DATA_VENDORS, :DATA_TOTAL
  json.url data_count_url(data_count, format: :json)
end

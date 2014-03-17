json.array!(@archived_jobs) do |archived_job|
  json.extract! archived_job, :id, :primaryKey, :AJ_JOB_NUM, :AJ_NAME, :AJ_FORM, :AJ_PRINTER, :AJ_ARTIST, :AJ_LOCATION, :AJ_REF
  json.url archived_job_url(archived_job, format: :json)
end

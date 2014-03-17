json.array!(@palm_jobs) do |palm_job|
  json.extract! palm_job, :id, :primaryKey, :PALM_JOB_ID, :PALM_JOB_ATTRIBS, :PALM_JOB_CATEGORY, :PALM_JOB_NUM, :PALM_JOB_NAME, :PALM_JOB_USER, :PALM_JOB_PLUS
  json.url palm_job_url(palm_job, format: :json)
end

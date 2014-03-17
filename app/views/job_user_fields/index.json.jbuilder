json.array!(@job_user_fields) do |job_user_field|
  json.extract! job_user_field, :id, :primaryKey, :JU_FIELD, :JU_VALUE
  json.url job_user_field_url(job_user_field, format: :json)
end

json.array!(@palm_tasks) do |palm_task|
  json.extract! palm_task, :id, :primaryKey, :PALM_TASK_CODE, :PALM_TASK_NAME, :PALM_TASK_USER, :PALM_TASK_ID, :PALM_TASK_CAT, :PALM_TASK_ATTRIBS
  json.url palm_task_url(palm_task, format: :json)
end

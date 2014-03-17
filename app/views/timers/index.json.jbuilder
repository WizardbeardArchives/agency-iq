json.array!(@timers) do |timer|
  json.extract! timer, :id, :primaryKey, :TIMER_INITIALS, :TIMER_START, :TIMER_PAUSED, :TIMER_RESUMED, :TIMER_ELAPSED_SECS, :TIMER_JOB_NUM, :TIMER_TASK, :TIMER_NOTE
  json.url timer_url(timer, format: :json)
end

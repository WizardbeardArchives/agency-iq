json.array!(@depts) do |dept|
  json.extract! dept, :id, :primaryKey, :DEPT_OFFICE, :DEPT_NAME, :DEPT_DESC, :DEPT_MGR, :DEPT_NUM, :DEPT_ADDED_BY, :DEPT_ADDED_WHEN, :DEPT_EDITED_BY, :DEPT_EDITED_WHEN
  json.url dept_url(dept, format: :json)
end

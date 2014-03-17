json.array!(@sales_letters) do |sales_letter|
  json.extract! sales_letter, :id, :primaryKey, :SLTR_ID, :SLTR_KIND, :SLTR_START, :SLTR_END, :SLTR_CLIENT_NUM, :SLTR_DESC, :SLTR_AUTHOR, :SLTR_OK, :SLTR_OK_BY, :SLTR_SUBJECT, :SLTR_BODY, :SLTR_PS, :SLTR_COUNT, :SLTR_LAST_USE, :SLTR_ONE_TIME, :SLTR_ADDED_BY, :SLTR_ADDED_WHEN, :SLTR_EDITED_BY, :SLTR_EDITED_WHEN
  json.url sales_letter_url(sales_letter, format: :json)
end

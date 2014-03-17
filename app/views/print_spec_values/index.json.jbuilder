json.array!(@print_spec_values) do |print_spec_value|
  json.extract! print_spec_value, :id, :primaryKey, :PSV_CAT, :PSV_VALUE, :PSV_ADDED_BY, :PSV_ADDED_WHEN, :PSV_EDITED_BY, :PSV_EDITED_WHEN
  json.url print_spec_value_url(print_spec_value, format: :json)
end

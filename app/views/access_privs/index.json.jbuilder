json.array!(@access_privs) do |access_priv|
  json.extract! access_priv, :id, :primaryKey, :ACS_CLIENT_NUM, :ACS_INITIALS, :ACS_KEY, :ACS_SEE, :ACS_EDIT, :ACS_DEL, :ACS_PRINT
  json.url access_priv_url(access_priv, format: :json)
end

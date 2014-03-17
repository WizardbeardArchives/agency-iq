json.array!(@odbcusers) do |odbcuser|
  json.extract! odbcuser, :id, :ODBCUSERNAME, :ODBCPASSWORD, :ODBCACCESSMASK
  json.url odbcuser_url(odbcuser, format: :json)
end

json.array!(@versions) do |version|
  json.extract! version, :id, :primaryKey, :VER_PROGRAM, :VER_NAME, :VER_A, :VER_B, :VER_C, :VER_BETA_NUM, :VER_DEMO
  json.url version_url(version, format: :json)
end

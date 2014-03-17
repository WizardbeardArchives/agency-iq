json.array!(@assets_types) do |assets_type|
  json.extract! assets_type, :id, :primaryKey, :AST_FILE_EXT, :AST_APP_NAME, :AST_DESC, :AST_CREATOR, :AST_ICON, :AST_USER, :AST_KIND
  json.url assets_type_url(assets_type, format: :json)
end

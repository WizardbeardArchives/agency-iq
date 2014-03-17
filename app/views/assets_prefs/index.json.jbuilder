json.array!(@assets_prefs) do |assets_pref|
  json.extract! assets_pref, :id, :primaryKey, :ASP_CODE, :ASP_AUTO_FOLDER, :ASP_ART_SERVER, :ASP_IP, :ASP_FIELD1, :ASP_FIELD2, :ASP_FIELD3, :ASP_FIELD4, :ASP_FIELD5, :ASP_TRACK_USAGE, :ASP_ART_SERVER_W, :ASP_EDITED_BY, :ASP_EDITED_WHEN, :ASP_INCL_JNAME, :ASP_ORG_BY_CLIENT
  json.url assets_pref_url(assets_pref, format: :json)
end

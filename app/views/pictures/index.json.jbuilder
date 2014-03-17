json.array!(@pictures) do |picture|
  json.extract! picture, :id, :primaryKey, :PICTURE_NUM, :PICTURE_PHOTO, :PICTURE_TEXT, :PICTURE_ADDED_BY, :PICTURE_ADDED_WHEN, :PICTURE_EDITED_BY, :PICTURE_EDITED_WHEN
  json.url picture_url(picture, format: :json)
end

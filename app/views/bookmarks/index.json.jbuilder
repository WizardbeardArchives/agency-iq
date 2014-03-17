json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :primaryKey, :BOOK_WORK, :BOOK_WINDOW, :BOOK_FIND_VALUE, :BOOK_DESC, :BOOK_FIND_FIELD, :BOOK_SORT, :BOOK_DESC_USER, :BOOK_DO_METHOD, :BOOK_DO_CALC
  json.url bookmark_url(bookmark, format: :json)
end

require 'test_helper'

class BookmarksControllerTest < ActionController::TestCase
  setup do
    @bookmark = bookmarks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookmarks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookmark" do
    assert_difference('Bookmark.count') do
      post :create, bookmark: { BOOK_DESC: @bookmark.BOOK_DESC, BOOK_DESC_USER: @bookmark.BOOK_DESC_USER, BOOK_DO_CALC: @bookmark.BOOK_DO_CALC, BOOK_DO_METHOD: @bookmark.BOOK_DO_METHOD, BOOK_FIND_FIELD: @bookmark.BOOK_FIND_FIELD, BOOK_FIND_VALUE: @bookmark.BOOK_FIND_VALUE, BOOK_SORT: @bookmark.BOOK_SORT, BOOK_WINDOW: @bookmark.BOOK_WINDOW, BOOK_WORK: @bookmark.BOOK_WORK, primaryKey: @bookmark.primaryKey }
    end

    assert_redirected_to bookmark_path(assigns(:bookmark))
  end

  test "should show bookmark" do
    get :show, id: @bookmark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookmark
    assert_response :success
  end

  test "should update bookmark" do
    patch :update, id: @bookmark, bookmark: { BOOK_DESC: @bookmark.BOOK_DESC, BOOK_DESC_USER: @bookmark.BOOK_DESC_USER, BOOK_DO_CALC: @bookmark.BOOK_DO_CALC, BOOK_DO_METHOD: @bookmark.BOOK_DO_METHOD, BOOK_FIND_FIELD: @bookmark.BOOK_FIND_FIELD, BOOK_FIND_VALUE: @bookmark.BOOK_FIND_VALUE, BOOK_SORT: @bookmark.BOOK_SORT, BOOK_WINDOW: @bookmark.BOOK_WINDOW, BOOK_WORK: @bookmark.BOOK_WORK, primaryKey: @bookmark.primaryKey }
    assert_redirected_to bookmark_path(assigns(:bookmark))
  end

  test "should destroy bookmark" do
    assert_difference('Bookmark.count', -1) do
      delete :destroy, id: @bookmark
    end

    assert_redirected_to bookmarks_path
  end
end

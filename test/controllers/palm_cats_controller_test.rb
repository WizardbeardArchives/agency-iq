require 'test_helper'

class PalmCatsControllerTest < ActionController::TestCase
  setup do
    @palm_cat = palm_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palm_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palm_cat" do
    assert_difference('PalmCat.count') do
      post :create, palm_cat: { PALM_CAT_ID: @palm_cat.PALM_CAT_ID, PALM_CAT_NAME: @palm_cat.PALM_CAT_NAME, PALM_CAT_USER: @palm_cat.PALM_CAT_USER, primaryKey: @palm_cat.primaryKey }
    end

    assert_redirected_to palm_cat_path(assigns(:palm_cat))
  end

  test "should show palm_cat" do
    get :show, id: @palm_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palm_cat
    assert_response :success
  end

  test "should update palm_cat" do
    patch :update, id: @palm_cat, palm_cat: { PALM_CAT_ID: @palm_cat.PALM_CAT_ID, PALM_CAT_NAME: @palm_cat.PALM_CAT_NAME, PALM_CAT_USER: @palm_cat.PALM_CAT_USER, primaryKey: @palm_cat.primaryKey }
    assert_redirected_to palm_cat_path(assigns(:palm_cat))
  end

  test "should destroy palm_cat" do
    assert_difference('PalmCat.count', -1) do
      delete :destroy, id: @palm_cat
    end

    assert_redirected_to palm_cats_path
  end
end

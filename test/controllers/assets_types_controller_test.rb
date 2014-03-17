require 'test_helper'

class AssetsTypesControllerTest < ActionController::TestCase
  setup do
    @assets_type = assets_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assets_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assets_type" do
    assert_difference('AssetsType.count') do
      post :create, assets_type: { AST_APP_NAME: @assets_type.AST_APP_NAME, AST_CREATOR: @assets_type.AST_CREATOR, AST_DESC: @assets_type.AST_DESC, AST_FILE_EXT: @assets_type.AST_FILE_EXT, AST_ICON: @assets_type.AST_ICON, AST_KIND: @assets_type.AST_KIND, AST_USER: @assets_type.AST_USER, primaryKey: @assets_type.primaryKey }
    end

    assert_redirected_to assets_type_path(assigns(:assets_type))
  end

  test "should show assets_type" do
    get :show, id: @assets_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assets_type
    assert_response :success
  end

  test "should update assets_type" do
    patch :update, id: @assets_type, assets_type: { AST_APP_NAME: @assets_type.AST_APP_NAME, AST_CREATOR: @assets_type.AST_CREATOR, AST_DESC: @assets_type.AST_DESC, AST_FILE_EXT: @assets_type.AST_FILE_EXT, AST_ICON: @assets_type.AST_ICON, AST_KIND: @assets_type.AST_KIND, AST_USER: @assets_type.AST_USER, primaryKey: @assets_type.primaryKey }
    assert_redirected_to assets_type_path(assigns(:assets_type))
  end

  test "should destroy assets_type" do
    assert_difference('AssetsType.count', -1) do
      delete :destroy, id: @assets_type
    end

    assert_redirected_to assets_types_path
  end
end

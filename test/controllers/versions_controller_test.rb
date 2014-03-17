require 'test_helper'

class VersionsControllerTest < ActionController::TestCase
  setup do
    @version = versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create version" do
    assert_difference('Version.count') do
      post :create, version: { VER_A: @version.VER_A, VER_B: @version.VER_B, VER_BETA_NUM: @version.VER_BETA_NUM, VER_C: @version.VER_C, VER_DEMO: @version.VER_DEMO, VER_NAME: @version.VER_NAME, VER_PROGRAM: @version.VER_PROGRAM, primaryKey: @version.primaryKey }
    end

    assert_redirected_to version_path(assigns(:version))
  end

  test "should show version" do
    get :show, id: @version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @version
    assert_response :success
  end

  test "should update version" do
    patch :update, id: @version, version: { VER_A: @version.VER_A, VER_B: @version.VER_B, VER_BETA_NUM: @version.VER_BETA_NUM, VER_C: @version.VER_C, VER_DEMO: @version.VER_DEMO, VER_NAME: @version.VER_NAME, VER_PROGRAM: @version.VER_PROGRAM, primaryKey: @version.primaryKey }
    assert_redirected_to version_path(assigns(:version))
  end

  test "should destroy version" do
    assert_difference('Version.count', -1) do
      delete :destroy, id: @version
    end

    assert_redirected_to versions_path
  end
end

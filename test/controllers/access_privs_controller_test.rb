require 'test_helper'

class AccessPrivsControllerTest < ActionController::TestCase
  setup do
    @access_priv = access_privs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:access_privs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create access_priv" do
    assert_difference('AccessPriv.count') do
      post :create, access_priv: { ACS_CLIENT_NUM: @access_priv.ACS_CLIENT_NUM, ACS_DEL: @access_priv.ACS_DEL, ACS_EDIT: @access_priv.ACS_EDIT, ACS_INITIALS: @access_priv.ACS_INITIALS, ACS_KEY: @access_priv.ACS_KEY, ACS_PRINT: @access_priv.ACS_PRINT, ACS_SEE: @access_priv.ACS_SEE, primaryKey: @access_priv.primaryKey }
    end

    assert_redirected_to access_priv_path(assigns(:access_priv))
  end

  test "should show access_priv" do
    get :show, id: @access_priv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @access_priv
    assert_response :success
  end

  test "should update access_priv" do
    patch :update, id: @access_priv, access_priv: { ACS_CLIENT_NUM: @access_priv.ACS_CLIENT_NUM, ACS_DEL: @access_priv.ACS_DEL, ACS_EDIT: @access_priv.ACS_EDIT, ACS_INITIALS: @access_priv.ACS_INITIALS, ACS_KEY: @access_priv.ACS_KEY, ACS_PRINT: @access_priv.ACS_PRINT, ACS_SEE: @access_priv.ACS_SEE, primaryKey: @access_priv.primaryKey }
    assert_redirected_to access_priv_path(assigns(:access_priv))
  end

  test "should destroy access_priv" do
    assert_difference('AccessPriv.count', -1) do
      delete :destroy, id: @access_priv
    end

    assert_redirected_to access_privs_path
  end
end

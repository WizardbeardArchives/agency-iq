require 'test_helper'

class OdbcusersControllerTest < ActionController::TestCase
  setup do
    @odbcuser = odbcusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odbcusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odbcuser" do
    assert_difference('Odbcuser.count') do
      post :create, odbcuser: { ODBCACCESSMASK: @odbcuser.ODBCACCESSMASK, ODBCPASSWORD: @odbcuser.ODBCPASSWORD, ODBCUSERNAME: @odbcuser.ODBCUSERNAME }
    end

    assert_redirected_to odbcuser_path(assigns(:odbcuser))
  end

  test "should show odbcuser" do
    get :show, id: @odbcuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odbcuser
    assert_response :success
  end

  test "should update odbcuser" do
    patch :update, id: @odbcuser, odbcuser: { ODBCACCESSMASK: @odbcuser.ODBCACCESSMASK, ODBCPASSWORD: @odbcuser.ODBCPASSWORD, ODBCUSERNAME: @odbcuser.ODBCUSERNAME }
    assert_redirected_to odbcuser_path(assigns(:odbcuser))
  end

  test "should destroy odbcuser" do
    assert_difference('Odbcuser.count', -1) do
      delete :destroy, id: @odbcuser
    end

    assert_redirected_to odbcusers_path
  end
end

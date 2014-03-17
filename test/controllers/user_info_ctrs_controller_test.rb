require 'test_helper'

class UserInfoCtrsControllerTest < ActionController::TestCase
  setup do
    @user_info_ctr = user_info_ctrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_info_ctrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_info_ctr" do
    assert_difference('UserInfoCtr.count') do
      post :create, user_info_ctr: { UI_LABEL1: @user_info_ctr.UI_LABEL1, UI_LABEL2: @user_info_ctr.UI_LABEL2, UI_LABEL3: @user_info_ctr.UI_LABEL3, UI_LABEL4: @user_info_ctr.UI_LABEL4, UI_LABEL5: @user_info_ctr.UI_LABEL5, UI_LABEL6: @user_info_ctr.UI_LABEL6, UI_PROC1: @user_info_ctr.UI_PROC1, UI_PROC2: @user_info_ctr.UI_PROC2, UI_PROC3: @user_info_ctr.UI_PROC3, UI_PROC4: @user_info_ctr.UI_PROC4, UI_PROC5: @user_info_ctr.UI_PROC5, UI_PROC6: @user_info_ctr.UI_PROC6, UI_WORK: @user_info_ctr.UI_WORK, primaryKey: @user_info_ctr.primaryKey }
    end

    assert_redirected_to user_info_ctr_path(assigns(:user_info_ctr))
  end

  test "should show user_info_ctr" do
    get :show, id: @user_info_ctr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_info_ctr
    assert_response :success
  end

  test "should update user_info_ctr" do
    patch :update, id: @user_info_ctr, user_info_ctr: { UI_LABEL1: @user_info_ctr.UI_LABEL1, UI_LABEL2: @user_info_ctr.UI_LABEL2, UI_LABEL3: @user_info_ctr.UI_LABEL3, UI_LABEL4: @user_info_ctr.UI_LABEL4, UI_LABEL5: @user_info_ctr.UI_LABEL5, UI_LABEL6: @user_info_ctr.UI_LABEL6, UI_PROC1: @user_info_ctr.UI_PROC1, UI_PROC2: @user_info_ctr.UI_PROC2, UI_PROC3: @user_info_ctr.UI_PROC3, UI_PROC4: @user_info_ctr.UI_PROC4, UI_PROC5: @user_info_ctr.UI_PROC5, UI_PROC6: @user_info_ctr.UI_PROC6, UI_WORK: @user_info_ctr.UI_WORK, primaryKey: @user_info_ctr.primaryKey }
    assert_redirected_to user_info_ctr_path(assigns(:user_info_ctr))
  end

  test "should destroy user_info_ctr" do
    assert_difference('UserInfoCtr.count', -1) do
      delete :destroy, id: @user_info_ctr
    end

    assert_redirected_to user_info_ctrs_path
  end
end

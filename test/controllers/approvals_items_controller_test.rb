require 'test_helper'

class ApprovalsItemsControllerTest < ActionController::TestCase
  setup do
    @approvals_item = approvals_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:approvals_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create approvals_item" do
    assert_difference('ApprovalsItem.count') do
      post :create, approvals_item: { APPRX_FILE_CPX: @approvals_item.APPRX_FILE_CPX, APPRX_FILE_NAME: @approvals_item.APPRX_FILE_NAME, APPRX_ID: @approvals_item.APPRX_ID, APPRX_STATUS: @approvals_item.APPRX_STATUS, APPRX_STATUS_NOTE: @approvals_item.APPRX_STATUS_NOTE, primaryKey: @approvals_item.primaryKey }
    end

    assert_redirected_to approvals_item_path(assigns(:approvals_item))
  end

  test "should show approvals_item" do
    get :show, id: @approvals_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @approvals_item
    assert_response :success
  end

  test "should update approvals_item" do
    patch :update, id: @approvals_item, approvals_item: { APPRX_FILE_CPX: @approvals_item.APPRX_FILE_CPX, APPRX_FILE_NAME: @approvals_item.APPRX_FILE_NAME, APPRX_ID: @approvals_item.APPRX_ID, APPRX_STATUS: @approvals_item.APPRX_STATUS, APPRX_STATUS_NOTE: @approvals_item.APPRX_STATUS_NOTE, primaryKey: @approvals_item.primaryKey }
    assert_redirected_to approvals_item_path(assigns(:approvals_item))
  end

  test "should destroy approvals_item" do
    assert_difference('ApprovalsItem.count', -1) do
      delete :destroy, id: @approvals_item
    end

    assert_redirected_to approvals_items_path
  end
end

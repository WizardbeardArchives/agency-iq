require 'test_helper'

class CheckItemsControllerTest < ActionController::TestCase
  setup do
    @check_item = check_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:check_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create check_item" do
    assert_difference('CheckItem.count') do
      post :create, check_item: { CX_ADDED_BY: @check_item.CX_ADDED_BY, CX_ADDED_WHEN: @check_item.CX_ADDED_WHEN, CX_AP_NUM: @check_item.CX_AP_NUM, CX_BILLABLE: @check_item.CX_BILLABLE, CX_CK_DATE: @check_item.CX_CK_DATE, CX_CK_NUM: @check_item.CX_CK_NUM, CX_COMM_AMT: @check_item.CX_COMM_AMT, CX_COST__SEQ: @check_item.CX_COST__SEQ, CX_DGL: @check_item.CX_DGL, CX_DISC_AMT: @check_item.CX_DISC_AMT, CX_DISC_DGL: @check_item.CX_DISC_DGL, CX_EDITED_BY: @check_item.CX_EDITED_BY, CX_EDITED_WHEN: @check_item.CX_EDITED_WHEN, CX_GROSS_AMT: @check_item.CX_GROSS_AMT, CX_JOB_NUM: @check_item.CX_JOB_NUM, CX_MARKUP_PC: @check_item.CX_MARKUP_PC, CX_NET_AMT: @check_item.CX_NET_AMT, CX_NOTE: @check_item.CX_NOTE, CX_PERIOD: @check_item.CX_PERIOD, CX_POSTED: @check_item.CX_POSTED, CX_TASK: @check_item.CX_TASK, CX_VENDOR_NUM: @check_item.CX_VENDOR_NUM, primaryKey: @check_item.primaryKey }
    end

    assert_redirected_to check_item_path(assigns(:check_item))
  end

  test "should show check_item" do
    get :show, id: @check_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @check_item
    assert_response :success
  end

  test "should update check_item" do
    patch :update, id: @check_item, check_item: { CX_ADDED_BY: @check_item.CX_ADDED_BY, CX_ADDED_WHEN: @check_item.CX_ADDED_WHEN, CX_AP_NUM: @check_item.CX_AP_NUM, CX_BILLABLE: @check_item.CX_BILLABLE, CX_CK_DATE: @check_item.CX_CK_DATE, CX_CK_NUM: @check_item.CX_CK_NUM, CX_COMM_AMT: @check_item.CX_COMM_AMT, CX_COST__SEQ: @check_item.CX_COST__SEQ, CX_DGL: @check_item.CX_DGL, CX_DISC_AMT: @check_item.CX_DISC_AMT, CX_DISC_DGL: @check_item.CX_DISC_DGL, CX_EDITED_BY: @check_item.CX_EDITED_BY, CX_EDITED_WHEN: @check_item.CX_EDITED_WHEN, CX_GROSS_AMT: @check_item.CX_GROSS_AMT, CX_JOB_NUM: @check_item.CX_JOB_NUM, CX_MARKUP_PC: @check_item.CX_MARKUP_PC, CX_NET_AMT: @check_item.CX_NET_AMT, CX_NOTE: @check_item.CX_NOTE, CX_PERIOD: @check_item.CX_PERIOD, CX_POSTED: @check_item.CX_POSTED, CX_TASK: @check_item.CX_TASK, CX_VENDOR_NUM: @check_item.CX_VENDOR_NUM, primaryKey: @check_item.primaryKey }
    assert_redirected_to check_item_path(assigns(:check_item))
  end

  test "should destroy check_item" do
    assert_difference('CheckItem.count', -1) do
      delete :destroy, id: @check_item
    end

    assert_redirected_to check_items_path
  end
end

require 'test_helper'

class ArItemsControllerTest < ActionController::TestCase
  setup do
    @ar_item = ar_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_item" do
    assert_difference('ArItem.count') do
      post :create, ar_item: { AX_ADDED_BY: @ar_item.AX_ADDED_BY, AX_ADDED_WHEN: @ar_item.AX_ADDED_WHEN, AX_AMT: @ar_item.AX_AMT, AX_AR_NUM: @ar_item.AX_AR_NUM, AX_CGL: @ar_item.AX_CGL, AX_CLIENT_NUM: @ar_item.AX_CLIENT_NUM, AX_COMMISSIONABLE: @ar_item.AX_COMMISSIONABLE, AX_COST: @ar_item.AX_COST, AX_DATE: @ar_item.AX_DATE, AX_DESC: @ar_item.AX_DESC, AX_EDITED_BY: @ar_item.AX_EDITED_BY, AX_EDITED_WHEN: @ar_item.AX_EDITED_WHEN, AX_EXPORTED: @ar_item.AX_EXPORTED, AX_GROUP: @ar_item.AX_GROUP, AX_HIDE: @ar_item.AX_HIDE, AX_HOURS_BILLED: @ar_item.AX_HOURS_BILLED, AX_ISSUE_DATE: @ar_item.AX_ISSUE_DATE, AX_JOB_NUM: @ar_item.AX_JOB_NUM, AX_NAME: @ar_item.AX_NAME, AX_PC: @ar_item.AX_PC, AX_PERIOD: @ar_item.AX_PERIOD, AX_POSTED: @ar_item.AX_POSTED, AX_POX_KEY: @ar_item.AX_POX_KEY, AX_PUB: @ar_item.AX_PUB, AX_QTY: @ar_item.AX_QTY, AX_ROLL_UP: @ar_item.AX_ROLL_UP, AX_SHOW_DESC: @ar_item.AX_SHOW_DESC, AX_SORT: @ar_item.AX_SORT, AX_TASK: @ar_item.AX_TASK, AX_TAXABLE1: @ar_item.AX_TAXABLE1, AX_TAXABLE2: @ar_item.AX_TAXABLE2, primaryKey: @ar_item.primaryKey }
    end

    assert_redirected_to ar_item_path(assigns(:ar_item))
  end

  test "should show ar_item" do
    get :show, id: @ar_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_item
    assert_response :success
  end

  test "should update ar_item" do
    patch :update, id: @ar_item, ar_item: { AX_ADDED_BY: @ar_item.AX_ADDED_BY, AX_ADDED_WHEN: @ar_item.AX_ADDED_WHEN, AX_AMT: @ar_item.AX_AMT, AX_AR_NUM: @ar_item.AX_AR_NUM, AX_CGL: @ar_item.AX_CGL, AX_CLIENT_NUM: @ar_item.AX_CLIENT_NUM, AX_COMMISSIONABLE: @ar_item.AX_COMMISSIONABLE, AX_COST: @ar_item.AX_COST, AX_DATE: @ar_item.AX_DATE, AX_DESC: @ar_item.AX_DESC, AX_EDITED_BY: @ar_item.AX_EDITED_BY, AX_EDITED_WHEN: @ar_item.AX_EDITED_WHEN, AX_EXPORTED: @ar_item.AX_EXPORTED, AX_GROUP: @ar_item.AX_GROUP, AX_HIDE: @ar_item.AX_HIDE, AX_HOURS_BILLED: @ar_item.AX_HOURS_BILLED, AX_ISSUE_DATE: @ar_item.AX_ISSUE_DATE, AX_JOB_NUM: @ar_item.AX_JOB_NUM, AX_NAME: @ar_item.AX_NAME, AX_PC: @ar_item.AX_PC, AX_PERIOD: @ar_item.AX_PERIOD, AX_POSTED: @ar_item.AX_POSTED, AX_POX_KEY: @ar_item.AX_POX_KEY, AX_PUB: @ar_item.AX_PUB, AX_QTY: @ar_item.AX_QTY, AX_ROLL_UP: @ar_item.AX_ROLL_UP, AX_SHOW_DESC: @ar_item.AX_SHOW_DESC, AX_SORT: @ar_item.AX_SORT, AX_TASK: @ar_item.AX_TASK, AX_TAXABLE1: @ar_item.AX_TAXABLE1, AX_TAXABLE2: @ar_item.AX_TAXABLE2, primaryKey: @ar_item.primaryKey }
    assert_redirected_to ar_item_path(assigns(:ar_item))
  end

  test "should destroy ar_item" do
    assert_difference('ArItem.count', -1) do
      delete :destroy, id: @ar_item
    end

    assert_redirected_to ar_items_path
  end
end

require 'test_helper'

class PoItemsControllerTest < ActionController::TestCase
  setup do
    @po_item = po_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:po_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create po_item" do
    assert_difference('PoItem.count') do
      post :create, po_item: { POX_ADDED_BY: @po_item.POX_ADDED_BY, POX_ADDED_WHEN: @po_item.POX_ADDED_WHEN, POX_AD_NAME: @po_item.POX_AD_NAME, POX_AD_SIZE: @po_item.POX_AD_SIZE, POX_AP_OK: @po_item.POX_AP_OK, POX_AR_AMT: @po_item.POX_AR_AMT, POX_AR_NUM: @po_item.POX_AR_NUM, POX_BILLABLE: @po_item.POX_BILLABLE, POX_BILL_DATE: @po_item.POX_BILL_DATE, POX_BILL_NET: @po_item.POX_BILL_NET, POX_BUYDETID: @po_item.POX_BUYDETID, POX_CLIENT_NUM: @po_item.POX_CLIENT_NUM, POX_COST: @po_item.POX_COST, POX_COST_EACH: @po_item.POX_COST_EACH, POX_COST_NUM: @po_item.POX_COST_NUM, POX_COST_PAID: @po_item.POX_COST_PAID, POX_CPM: @po_item.POX_CPM, POX_CPP: @po_item.POX_CPP, POX_DESC: @po_item.POX_DESC, POX_DUE_DATE2: @po_item.POX_DUE_DATE2, POX_DUE_DATE: @po_item.POX_DUE_DATE, POX_EDITED_BY: @po_item.POX_EDITED_BY, POX_EDITED_WHEN: @po_item.POX_EDITED_WHEN, POX_GROSS: @po_item.POX_GROSS, POX_GROSS_PAID: @po_item.POX_GROSS_PAID, POX_ISSUE_DATE2: @po_item.POX_ISSUE_DATE2, POX_ISSUE_DATE: @po_item.POX_ISSUE_DATE, POX_JOB_NUM: @po_item.POX_JOB_NUM, POX_KEY: @po_item.POX_KEY, POX_LINE_NUMBER: @po_item.POX_LINE_NUMBER, POX_MAKEGOOD: @po_item.POX_MAKEGOOD, POX_MARKUP: @po_item.POX_MARKUP, POX_NAME: @po_item.POX_NAME, POX_PO_NUM: @po_item.POX_PO_NUM, POX_PROGRAM: @po_item.POX_PROGRAM, POX_PUB: @po_item.POX_PUB, POX_QTY: @po_item.POX_QTY, POX_RATING: @po_item.POX_RATING, POX_REVISION: @po_item.POX_REVISION, POX_RUN_DATE: @po_item.POX_RUN_DATE, POX_SALES_TAX: @po_item.POX_SALES_TAX, POX_TASK: @po_item.POX_TASK, POX_TAXABLE1: @po_item.POX_TAXABLE1, POX_TAXABLE2: @po_item.POX_TAXABLE2, POX_TRADE: @po_item.POX_TRADE, POX_TYPE: @po_item.POX_TYPE, POX_UNIT: @po_item.POX_UNIT, primaryKey: @po_item.primaryKey }
    end

    assert_redirected_to po_item_path(assigns(:po_item))
  end

  test "should show po_item" do
    get :show, id: @po_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @po_item
    assert_response :success
  end

  test "should update po_item" do
    patch :update, id: @po_item, po_item: { POX_ADDED_BY: @po_item.POX_ADDED_BY, POX_ADDED_WHEN: @po_item.POX_ADDED_WHEN, POX_AD_NAME: @po_item.POX_AD_NAME, POX_AD_SIZE: @po_item.POX_AD_SIZE, POX_AP_OK: @po_item.POX_AP_OK, POX_AR_AMT: @po_item.POX_AR_AMT, POX_AR_NUM: @po_item.POX_AR_NUM, POX_BILLABLE: @po_item.POX_BILLABLE, POX_BILL_DATE: @po_item.POX_BILL_DATE, POX_BILL_NET: @po_item.POX_BILL_NET, POX_BUYDETID: @po_item.POX_BUYDETID, POX_CLIENT_NUM: @po_item.POX_CLIENT_NUM, POX_COST: @po_item.POX_COST, POX_COST_EACH: @po_item.POX_COST_EACH, POX_COST_NUM: @po_item.POX_COST_NUM, POX_COST_PAID: @po_item.POX_COST_PAID, POX_CPM: @po_item.POX_CPM, POX_CPP: @po_item.POX_CPP, POX_DESC: @po_item.POX_DESC, POX_DUE_DATE2: @po_item.POX_DUE_DATE2, POX_DUE_DATE: @po_item.POX_DUE_DATE, POX_EDITED_BY: @po_item.POX_EDITED_BY, POX_EDITED_WHEN: @po_item.POX_EDITED_WHEN, POX_GROSS: @po_item.POX_GROSS, POX_GROSS_PAID: @po_item.POX_GROSS_PAID, POX_ISSUE_DATE2: @po_item.POX_ISSUE_DATE2, POX_ISSUE_DATE: @po_item.POX_ISSUE_DATE, POX_JOB_NUM: @po_item.POX_JOB_NUM, POX_KEY: @po_item.POX_KEY, POX_LINE_NUMBER: @po_item.POX_LINE_NUMBER, POX_MAKEGOOD: @po_item.POX_MAKEGOOD, POX_MARKUP: @po_item.POX_MARKUP, POX_NAME: @po_item.POX_NAME, POX_PO_NUM: @po_item.POX_PO_NUM, POX_PROGRAM: @po_item.POX_PROGRAM, POX_PUB: @po_item.POX_PUB, POX_QTY: @po_item.POX_QTY, POX_RATING: @po_item.POX_RATING, POX_REVISION: @po_item.POX_REVISION, POX_RUN_DATE: @po_item.POX_RUN_DATE, POX_SALES_TAX: @po_item.POX_SALES_TAX, POX_TASK: @po_item.POX_TASK, POX_TAXABLE1: @po_item.POX_TAXABLE1, POX_TAXABLE2: @po_item.POX_TAXABLE2, POX_TRADE: @po_item.POX_TRADE, POX_TYPE: @po_item.POX_TYPE, POX_UNIT: @po_item.POX_UNIT, primaryKey: @po_item.primaryKey }
    assert_redirected_to po_item_path(assigns(:po_item))
  end

  test "should destroy po_item" do
    assert_difference('PoItem.count', -1) do
      delete :destroy, id: @po_item
    end

    assert_redirected_to po_items_path
  end
end

require 'test_helper'

class CostsControllerTest < ActionController::TestCase
  setup do
    @cost = costs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cost" do
    assert_difference('Cost.count') do
      post :create, cost: { COST_ADDED_BY: @cost.COST_ADDED_BY, COST_ADV_CK: @cost.COST_ADV_CK, COST_APPROVED_BY: @cost.COST_APPROVED_BY, COST_APPROVED_DATE: @cost.COST_APPROVED_DATE, COST_AR_DATE: @cost.COST_AR_DATE, COST_AR_NUM: @cost.COST_AR_NUM, COST_AR_PAID: @cost.COST_AR_PAID, COST_BILLABLE: @cost.COST_BILLABLE, COST_BILLED_AMT: @cost.COST_BILLED_AMT, COST_BILL_AMT: @cost.COST_BILL_AMT, COST_BILL_RATE: @cost.COST_BILL_RATE, COST_CK_NUM: @cost.COST_CK_NUM, COST_CLIENT_NUM: @cost.COST_CLIENT_NUM, COST_COST_EA: @cost.COST_COST_EA, COST_COST_RATE: @cost.COST_COST_RATE, COST_DATE: @cost.COST_DATE, COST_DAYS: @cost.COST_DAYS, COST_DGL: @cost.COST_DGL, COST_EDITED_BY: @cost.COST_EDITED_BY, COST_EDITED_WHEN: @cost.COST_EDITED_WHEN, COST_EXPORTED: @cost.COST_EXPORTED, COST_EXP_ADDED_BY: @cost.COST_EXP_ADDED_BY, COST_FINISHED: @cost.COST_FINISHED, COST_GL: @cost.COST_GL, COST_GROSS_AMT: @cost.COST_GROSS_AMT, COST_GROSS_EA: @cost.COST_GROSS_EA, COST_HOURS: @cost.COST_HOURS, COST_HOURS_BILLED: @cost.COST_HOURS_BILLED, COST_JOB_NUM: @cost.COST_JOB_NUM, COST_J_BILL_STATUS: @cost.COST_J_BILL_STATUS, COST_J_PROD_STATUS: @cost.COST_J_PROD_STATUS, COST_KEY: @cost.COST_KEY, COST_KIND: @cost.COST_KIND, COST_MARKUP: @cost.COST_MARKUP, COST_NET_AMT: @cost.COST_NET_AMT, COST_NOTE: @cost.COST_NOTE, COST_NUM: @cost.COST_NUM, COST_OT: @cost.COST_OT, COST_PC: @cost.COST_PC, COST_PERIOD: @cost.COST_PERIOD, COST_POSTED: @cost.COST_POSTED, COST_POSTED_BY: @cost.COST_POSTED_BY, COST_POSTED_WHEN: @cost.COST_POSTED_WHEN, COST_POX_LINE: @cost.COST_POX_LINE, COST_PO_NUM: @cost.COST_PO_NUM, COST_QTY: @cost.COST_QTY, COST_REF: @cost.COST_REF, COST_REIMBURSE_AP_NUM: @cost.COST_REIMBURSE_AP_NUM, COST_SALES_TAX: @cost.COST_SALES_TAX, COST_SIZE: @cost.COST_SIZE, COST_STATUS: @cost.COST_STATUS, COST_TASK: @cost.COST_TASK, COST_VENDOR: @cost.COST_VENDOR, COST_WIP_EXPORTED: @cost.COST_WIP_EXPORTED, COST_WIP_REV_EXPORTED: @cost.COST_WIP_REV_EXPORTED, primaryKey: @cost.primaryKey }
    end

    assert_redirected_to cost_path(assigns(:cost))
  end

  test "should show cost" do
    get :show, id: @cost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cost
    assert_response :success
  end

  test "should update cost" do
    patch :update, id: @cost, cost: { COST_ADDED_BY: @cost.COST_ADDED_BY, COST_ADV_CK: @cost.COST_ADV_CK, COST_APPROVED_BY: @cost.COST_APPROVED_BY, COST_APPROVED_DATE: @cost.COST_APPROVED_DATE, COST_AR_DATE: @cost.COST_AR_DATE, COST_AR_NUM: @cost.COST_AR_NUM, COST_AR_PAID: @cost.COST_AR_PAID, COST_BILLABLE: @cost.COST_BILLABLE, COST_BILLED_AMT: @cost.COST_BILLED_AMT, COST_BILL_AMT: @cost.COST_BILL_AMT, COST_BILL_RATE: @cost.COST_BILL_RATE, COST_CK_NUM: @cost.COST_CK_NUM, COST_CLIENT_NUM: @cost.COST_CLIENT_NUM, COST_COST_EA: @cost.COST_COST_EA, COST_COST_RATE: @cost.COST_COST_RATE, COST_DATE: @cost.COST_DATE, COST_DAYS: @cost.COST_DAYS, COST_DGL: @cost.COST_DGL, COST_EDITED_BY: @cost.COST_EDITED_BY, COST_EDITED_WHEN: @cost.COST_EDITED_WHEN, COST_EXPORTED: @cost.COST_EXPORTED, COST_EXP_ADDED_BY: @cost.COST_EXP_ADDED_BY, COST_FINISHED: @cost.COST_FINISHED, COST_GL: @cost.COST_GL, COST_GROSS_AMT: @cost.COST_GROSS_AMT, COST_GROSS_EA: @cost.COST_GROSS_EA, COST_HOURS: @cost.COST_HOURS, COST_HOURS_BILLED: @cost.COST_HOURS_BILLED, COST_JOB_NUM: @cost.COST_JOB_NUM, COST_J_BILL_STATUS: @cost.COST_J_BILL_STATUS, COST_J_PROD_STATUS: @cost.COST_J_PROD_STATUS, COST_KEY: @cost.COST_KEY, COST_KIND: @cost.COST_KIND, COST_MARKUP: @cost.COST_MARKUP, COST_NET_AMT: @cost.COST_NET_AMT, COST_NOTE: @cost.COST_NOTE, COST_NUM: @cost.COST_NUM, COST_OT: @cost.COST_OT, COST_PC: @cost.COST_PC, COST_PERIOD: @cost.COST_PERIOD, COST_POSTED: @cost.COST_POSTED, COST_POSTED_BY: @cost.COST_POSTED_BY, COST_POSTED_WHEN: @cost.COST_POSTED_WHEN, COST_POX_LINE: @cost.COST_POX_LINE, COST_PO_NUM: @cost.COST_PO_NUM, COST_QTY: @cost.COST_QTY, COST_REF: @cost.COST_REF, COST_REIMBURSE_AP_NUM: @cost.COST_REIMBURSE_AP_NUM, COST_SALES_TAX: @cost.COST_SALES_TAX, COST_SIZE: @cost.COST_SIZE, COST_STATUS: @cost.COST_STATUS, COST_TASK: @cost.COST_TASK, COST_VENDOR: @cost.COST_VENDOR, COST_WIP_EXPORTED: @cost.COST_WIP_EXPORTED, COST_WIP_REV_EXPORTED: @cost.COST_WIP_REV_EXPORTED, primaryKey: @cost.primaryKey }
    assert_redirected_to cost_path(assigns(:cost))
  end

  test "should destroy cost" do
    assert_difference('Cost.count', -1) do
      delete :destroy, id: @cost
    end

    assert_redirected_to costs_path
  end
end

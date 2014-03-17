require 'test_helper'

class PurchaseOrdersControllerTest < ActionController::TestCase
  setup do
    @purchase_order = purchase_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_order" do
    assert_difference('PurchaseOrder.count') do
      post :create, purchase_order: { PO_ADDED_BY: @purchase_order.PO_ADDED_BY, PO_ADDED_WHEN: @purchase_order.PO_ADDED_WHEN, PO_AMT_PAID: @purchase_order.PO_AMT_PAID, PO_APPROVAL1: @purchase_order.PO_APPROVAL1, PO_APPROVAL2: @purchase_order.PO_APPROVAL2, PO_APPROVAL3: @purchase_order.PO_APPROVAL3, PO_APPROVED: @purchase_order.PO_APPROVED, PO_APPROVED_BY: @purchase_order.PO_APPROVED_BY, PO_APPROVED_DAT: @purchase_order.PO_APPROVED_DAT, PO_AP_ALERT: @purchase_order.PO_AP_ALERT, PO_AR_BILLED: @purchase_order.PO_AR_BILLED, PO_AR_NUM: @purchase_order.PO_AR_NUM, PO_BLANKET: @purchase_order.PO_BLANKET, PO_BRAND: @purchase_order.PO_BRAND, PO_CAMPAIGN: @purchase_order.PO_CAMPAIGN, PO_CLIENT_NUM: @purchase_order.PO_CLIENT_NUM, PO_CLOSED: @purchase_order.PO_CLOSED, PO_COMM: @purchase_order.PO_COMM, PO_COST: @purchase_order.PO_COST, PO_DATE: @purchase_order.PO_DATE, PO_DESC: @purchase_order.PO_DESC, PO_DESC_LABEL: @purchase_order.PO_DESC_LABEL, PO_DISCLAIMER: @purchase_order.PO_DISCLAIMER, PO_DUE_DATE: @purchase_order.PO_DUE_DATE, PO_EDITED_BY: @purchase_order.PO_EDITED_BY, PO_EDITED_WHEN: @purchase_order.PO_EDITED_WHEN, PO_FIELD1: @purchase_order.PO_FIELD1, PO_FIELD2: @purchase_order.PO_FIELD2, PO_FIELD3: @purchase_order.PO_FIELD3, PO_FIELD4: @purchase_order.PO_FIELD4, PO_FIELD5: @purchase_order.PO_FIELD5, PO_FIELD6: @purchase_order.PO_FIELD6, PO_FIELD_LABEL1: @purchase_order.PO_FIELD_LABEL1, PO_FIELD_LABEL2: @purchase_order.PO_FIELD_LABEL2, PO_FIELD_LABEL3: @purchase_order.PO_FIELD_LABEL3, PO_FIELD_LABEL4: @purchase_order.PO_FIELD_LABEL4, PO_FIELD_LABEL5: @purchase_order.PO_FIELD_LABEL5, PO_FIELD_LABEL6: @purchase_order.PO_FIELD_LABEL6, PO_FORM: @purchase_order.PO_FORM, PO_GROSS: @purchase_order.PO_GROSS, PO_HOLD: @purchase_order.PO_HOLD, PO_IMPORT_FROM: @purchase_order.PO_IMPORT_FROM, PO_JOB_NUM: @purchase_order.PO_JOB_NUM, PO_LINES: @purchase_order.PO_LINES, PO_MARKUP: @purchase_order.PO_MARKUP, PO_MAT_DUE_LABEL: @purchase_order.PO_MAT_DUE_LABEL, PO_NUM: @purchase_order.PO_NUM, PO_ORDERED_BY: @purchase_order.PO_ORDERED_BY, PO_OWNERSHIP: @purchase_order.PO_OWNERSHIP, PO_PC: @purchase_order.PO_PC, PO_PERIOD: @purchase_order.PO_PERIOD, PO_PT_TEMPLATE: @purchase_order.PO_PT_TEMPLATE, PO_QTY: @purchase_order.PO_QTY, PO_QTY_LABEL: @purchase_order.PO_QTY_LABEL, PO_REP_FAX: @purchase_order.PO_REP_FAX, PO_REP_INSTR: @purchase_order.PO_REP_INSTR, PO_REP_NAME: @purchase_order.PO_REP_NAME, PO_REP_PHONE: @purchase_order.PO_REP_PHONE, PO_REV: @purchase_order.PO_REV, PO_SHIP1: @purchase_order.PO_SHIP1, PO_SHIP2: @purchase_order.PO_SHIP2, PO_SHIP3: @purchase_order.PO_SHIP3, PO_SHIP4: @purchase_order.PO_SHIP4, PO_SHIP_NOTE: @purchase_order.PO_SHIP_NOTE, PO_STATUS: @purchase_order.PO_STATUS, PO_TASK: @purchase_order.PO_TASK, PO_TAX: @purchase_order.PO_TAX, PO_TAX_EXEMPT: @purchase_order.PO_TAX_EXEMPT, PO_TERMS1: @purchase_order.PO_TERMS1, PO_TERMS2: @purchase_order.PO_TERMS2, PO_TERMS3: @purchase_order.PO_TERMS3, PO_TO1: @purchase_order.PO_TO1, PO_TO2: @purchase_order.PO_TO2, PO_TO3: @purchase_order.PO_TO3, PO_TO4: @purchase_order.PO_TO4, PO_TO5: @purchase_order.PO_TO5, PO_TOTAL_TITLE: @purchase_order.PO_TOTAL_TITLE, PO_TO_BE_BILLED: @purchase_order.PO_TO_BE_BILLED, PO_TRAFFIC_INSTR: @purchase_order.PO_TRAFFIC_INSTR, PO_TYPE: @purchase_order.PO_TYPE, PO_VENDOR1: @purchase_order.PO_VENDOR1, PO_VENDOR2: @purchase_order.PO_VENDOR2, PO_VENDOR3: @purchase_order.PO_VENDOR3, PO_VENDOR4: @purchase_order.PO_VENDOR4, PO_VENDOR5: @purchase_order.PO_VENDOR5, PO_VENDOR_NUM: @purchase_order.PO_VENDOR_NUM, primaryKey: @purchase_order.primaryKey }
    end

    assert_redirected_to purchase_order_path(assigns(:purchase_order))
  end

  test "should show purchase_order" do
    get :show, id: @purchase_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_order
    assert_response :success
  end

  test "should update purchase_order" do
    patch :update, id: @purchase_order, purchase_order: { PO_ADDED_BY: @purchase_order.PO_ADDED_BY, PO_ADDED_WHEN: @purchase_order.PO_ADDED_WHEN, PO_AMT_PAID: @purchase_order.PO_AMT_PAID, PO_APPROVAL1: @purchase_order.PO_APPROVAL1, PO_APPROVAL2: @purchase_order.PO_APPROVAL2, PO_APPROVAL3: @purchase_order.PO_APPROVAL3, PO_APPROVED: @purchase_order.PO_APPROVED, PO_APPROVED_BY: @purchase_order.PO_APPROVED_BY, PO_APPROVED_DAT: @purchase_order.PO_APPROVED_DAT, PO_AP_ALERT: @purchase_order.PO_AP_ALERT, PO_AR_BILLED: @purchase_order.PO_AR_BILLED, PO_AR_NUM: @purchase_order.PO_AR_NUM, PO_BLANKET: @purchase_order.PO_BLANKET, PO_BRAND: @purchase_order.PO_BRAND, PO_CAMPAIGN: @purchase_order.PO_CAMPAIGN, PO_CLIENT_NUM: @purchase_order.PO_CLIENT_NUM, PO_CLOSED: @purchase_order.PO_CLOSED, PO_COMM: @purchase_order.PO_COMM, PO_COST: @purchase_order.PO_COST, PO_DATE: @purchase_order.PO_DATE, PO_DESC: @purchase_order.PO_DESC, PO_DESC_LABEL: @purchase_order.PO_DESC_LABEL, PO_DISCLAIMER: @purchase_order.PO_DISCLAIMER, PO_DUE_DATE: @purchase_order.PO_DUE_DATE, PO_EDITED_BY: @purchase_order.PO_EDITED_BY, PO_EDITED_WHEN: @purchase_order.PO_EDITED_WHEN, PO_FIELD1: @purchase_order.PO_FIELD1, PO_FIELD2: @purchase_order.PO_FIELD2, PO_FIELD3: @purchase_order.PO_FIELD3, PO_FIELD4: @purchase_order.PO_FIELD4, PO_FIELD5: @purchase_order.PO_FIELD5, PO_FIELD6: @purchase_order.PO_FIELD6, PO_FIELD_LABEL1: @purchase_order.PO_FIELD_LABEL1, PO_FIELD_LABEL2: @purchase_order.PO_FIELD_LABEL2, PO_FIELD_LABEL3: @purchase_order.PO_FIELD_LABEL3, PO_FIELD_LABEL4: @purchase_order.PO_FIELD_LABEL4, PO_FIELD_LABEL5: @purchase_order.PO_FIELD_LABEL5, PO_FIELD_LABEL6: @purchase_order.PO_FIELD_LABEL6, PO_FORM: @purchase_order.PO_FORM, PO_GROSS: @purchase_order.PO_GROSS, PO_HOLD: @purchase_order.PO_HOLD, PO_IMPORT_FROM: @purchase_order.PO_IMPORT_FROM, PO_JOB_NUM: @purchase_order.PO_JOB_NUM, PO_LINES: @purchase_order.PO_LINES, PO_MARKUP: @purchase_order.PO_MARKUP, PO_MAT_DUE_LABEL: @purchase_order.PO_MAT_DUE_LABEL, PO_NUM: @purchase_order.PO_NUM, PO_ORDERED_BY: @purchase_order.PO_ORDERED_BY, PO_OWNERSHIP: @purchase_order.PO_OWNERSHIP, PO_PC: @purchase_order.PO_PC, PO_PERIOD: @purchase_order.PO_PERIOD, PO_PT_TEMPLATE: @purchase_order.PO_PT_TEMPLATE, PO_QTY: @purchase_order.PO_QTY, PO_QTY_LABEL: @purchase_order.PO_QTY_LABEL, PO_REP_FAX: @purchase_order.PO_REP_FAX, PO_REP_INSTR: @purchase_order.PO_REP_INSTR, PO_REP_NAME: @purchase_order.PO_REP_NAME, PO_REP_PHONE: @purchase_order.PO_REP_PHONE, PO_REV: @purchase_order.PO_REV, PO_SHIP1: @purchase_order.PO_SHIP1, PO_SHIP2: @purchase_order.PO_SHIP2, PO_SHIP3: @purchase_order.PO_SHIP3, PO_SHIP4: @purchase_order.PO_SHIP4, PO_SHIP_NOTE: @purchase_order.PO_SHIP_NOTE, PO_STATUS: @purchase_order.PO_STATUS, PO_TASK: @purchase_order.PO_TASK, PO_TAX: @purchase_order.PO_TAX, PO_TAX_EXEMPT: @purchase_order.PO_TAX_EXEMPT, PO_TERMS1: @purchase_order.PO_TERMS1, PO_TERMS2: @purchase_order.PO_TERMS2, PO_TERMS3: @purchase_order.PO_TERMS3, PO_TO1: @purchase_order.PO_TO1, PO_TO2: @purchase_order.PO_TO2, PO_TO3: @purchase_order.PO_TO3, PO_TO4: @purchase_order.PO_TO4, PO_TO5: @purchase_order.PO_TO5, PO_TOTAL_TITLE: @purchase_order.PO_TOTAL_TITLE, PO_TO_BE_BILLED: @purchase_order.PO_TO_BE_BILLED, PO_TRAFFIC_INSTR: @purchase_order.PO_TRAFFIC_INSTR, PO_TYPE: @purchase_order.PO_TYPE, PO_VENDOR1: @purchase_order.PO_VENDOR1, PO_VENDOR2: @purchase_order.PO_VENDOR2, PO_VENDOR3: @purchase_order.PO_VENDOR3, PO_VENDOR4: @purchase_order.PO_VENDOR4, PO_VENDOR5: @purchase_order.PO_VENDOR5, PO_VENDOR_NUM: @purchase_order.PO_VENDOR_NUM, primaryKey: @purchase_order.primaryKey }
    assert_redirected_to purchase_order_path(assigns(:purchase_order))
  end

  test "should destroy purchase_order" do
    assert_difference('PurchaseOrder.count', -1) do
      delete :destroy, id: @purchase_order
    end

    assert_redirected_to purchase_orders_path
  end
end

require 'test_helper'

class RfqsControllerTest < ActionController::TestCase
  setup do
    @rfq = rfqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rfqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rfq" do
    assert_difference('Rfq.count') do
      post :create, rfq: { RFQ_ADDED_BY: @rfq.RFQ_ADDED_BY, RFQ_APPROVED: @rfq.RFQ_APPROVED, RFQ_AUTH: @rfq.RFQ_AUTH, RFQ_CLIENT_ADDR1: @rfq.RFQ_CLIENT_ADDR1, RFQ_CLIENT_ADDR2: @rfq.RFQ_CLIENT_ADDR2, RFQ_CLIENT_ADDR3: @rfq.RFQ_CLIENT_ADDR3, RFQ_CLIENT_ADDR4: @rfq.RFQ_CLIENT_ADDR4, RFQ_CLIENT_ADDR5: @rfq.RFQ_CLIENT_ADDR5, RFQ_CLIENT_ADDR6: @rfq.RFQ_CLIENT_ADDR6, RFQ_CLIENT_CONTACT: @rfq.RFQ_CLIENT_CONTACT, RFQ_CLIENT_NOTES: @rfq.RFQ_CLIENT_NOTES, RFQ_CLIENT_NUM: @rfq.RFQ_CLIENT_NUM, RFQ_CLIENT_OK: @rfq.RFQ_CLIENT_OK, RFQ_CLIENT_OK_BY: @rfq.RFQ_CLIENT_OK_BY, RFQ_CLIENT_OK_DATE: @rfq.RFQ_CLIENT_OK_DATE, RFQ_DATE: @rfq.RFQ_DATE, RFQ_DEL_DATE: @rfq.RFQ_DEL_DATE, RFQ_DEL_INSTR: @rfq.RFQ_DEL_INSTR, RFQ_DESC: @rfq.RFQ_DESC, RFQ_JOB_NUM: @rfq.RFQ_JOB_NUM, RFQ_KITTING: @rfq.RFQ_KITTING, RFQ_NAME: @rfq.RFQ_NAME, RFQ_NUM: @rfq.RFQ_NUM, RFQ_PREP: @rfq.RFQ_PREP, RFQ_PROD_CONTACT: @rfq.RFQ_PROD_CONTACT, RFQ_PROD_CONTACT_EMAIL: @rfq.RFQ_PROD_CONTACT_EMAIL, RFQ_PROD_CONTACT_PH: @rfq.RFQ_PROD_CONTACT_PH, RFQ_QTY: @rfq.RFQ_QTY, RFQ_QUOTE_NEEDED: @rfq.RFQ_QUOTE_NEEDED, RFQ_SHIPPING: @rfq.RFQ_SHIPPING, RFQ_SPECIAL_INSTR: @rfq.RFQ_SPECIAL_INSTR, RFQ_STATUS: @rfq.RFQ_STATUS, RFQ_TASK: @rfq.RFQ_TASK, RFQ_TAXABLE1: @rfq.RFQ_TAXABLE1, RFQ_TAXABLE2: @rfq.RFQ_TAXABLE2, RFQ_TERMS: @rfq.RFQ_TERMS, RFQ_TOTAL_COST: @rfq.RFQ_TOTAL_COST, RFQ_TOTAL_GROSS: @rfq.RFQ_TOTAL_GROSS, RFQ_VENDOR_NUM: @rfq.RFQ_VENDOR_NUM, primaryKey: @rfq.primaryKey }
    end

    assert_redirected_to rfq_path(assigns(:rfq))
  end

  test "should show rfq" do
    get :show, id: @rfq
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rfq
    assert_response :success
  end

  test "should update rfq" do
    patch :update, id: @rfq, rfq: { RFQ_ADDED_BY: @rfq.RFQ_ADDED_BY, RFQ_APPROVED: @rfq.RFQ_APPROVED, RFQ_AUTH: @rfq.RFQ_AUTH, RFQ_CLIENT_ADDR1: @rfq.RFQ_CLIENT_ADDR1, RFQ_CLIENT_ADDR2: @rfq.RFQ_CLIENT_ADDR2, RFQ_CLIENT_ADDR3: @rfq.RFQ_CLIENT_ADDR3, RFQ_CLIENT_ADDR4: @rfq.RFQ_CLIENT_ADDR4, RFQ_CLIENT_ADDR5: @rfq.RFQ_CLIENT_ADDR5, RFQ_CLIENT_ADDR6: @rfq.RFQ_CLIENT_ADDR6, RFQ_CLIENT_CONTACT: @rfq.RFQ_CLIENT_CONTACT, RFQ_CLIENT_NOTES: @rfq.RFQ_CLIENT_NOTES, RFQ_CLIENT_NUM: @rfq.RFQ_CLIENT_NUM, RFQ_CLIENT_OK: @rfq.RFQ_CLIENT_OK, RFQ_CLIENT_OK_BY: @rfq.RFQ_CLIENT_OK_BY, RFQ_CLIENT_OK_DATE: @rfq.RFQ_CLIENT_OK_DATE, RFQ_DATE: @rfq.RFQ_DATE, RFQ_DEL_DATE: @rfq.RFQ_DEL_DATE, RFQ_DEL_INSTR: @rfq.RFQ_DEL_INSTR, RFQ_DESC: @rfq.RFQ_DESC, RFQ_JOB_NUM: @rfq.RFQ_JOB_NUM, RFQ_KITTING: @rfq.RFQ_KITTING, RFQ_NAME: @rfq.RFQ_NAME, RFQ_NUM: @rfq.RFQ_NUM, RFQ_PREP: @rfq.RFQ_PREP, RFQ_PROD_CONTACT: @rfq.RFQ_PROD_CONTACT, RFQ_PROD_CONTACT_EMAIL: @rfq.RFQ_PROD_CONTACT_EMAIL, RFQ_PROD_CONTACT_PH: @rfq.RFQ_PROD_CONTACT_PH, RFQ_QTY: @rfq.RFQ_QTY, RFQ_QUOTE_NEEDED: @rfq.RFQ_QUOTE_NEEDED, RFQ_SHIPPING: @rfq.RFQ_SHIPPING, RFQ_SPECIAL_INSTR: @rfq.RFQ_SPECIAL_INSTR, RFQ_STATUS: @rfq.RFQ_STATUS, RFQ_TASK: @rfq.RFQ_TASK, RFQ_TAXABLE1: @rfq.RFQ_TAXABLE1, RFQ_TAXABLE2: @rfq.RFQ_TAXABLE2, RFQ_TERMS: @rfq.RFQ_TERMS, RFQ_TOTAL_COST: @rfq.RFQ_TOTAL_COST, RFQ_TOTAL_GROSS: @rfq.RFQ_TOTAL_GROSS, RFQ_VENDOR_NUM: @rfq.RFQ_VENDOR_NUM, primaryKey: @rfq.primaryKey }
    assert_redirected_to rfq_path(assigns(:rfq))
  end

  test "should destroy rfq" do
    assert_difference('Rfq.count', -1) do
      delete :destroy, id: @rfq
    end

    assert_redirected_to rfqs_path
  end
end

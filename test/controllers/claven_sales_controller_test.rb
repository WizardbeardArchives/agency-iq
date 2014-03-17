require 'test_helper'

class ClavenSalesControllerTest < ActionController::TestCase
  setup do
    @claven_sale = claven_sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:claven_sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create claven_sale" do
    assert_difference('ClavenSale.count') do
      post :create, claven_sale: { S_ADDL_QTY: @claven_sale.S_ADDL_QTY, S_ADDL_USER_AMT: @claven_sale.S_ADDL_USER_AMT, S_AMT_OPTIONS: @claven_sale.S_AMT_OPTIONS, S_CLIENT: @claven_sale.S_CLIENT, S_DISCOUNT: @claven_sale.S_DISCOUNT, S_DISC_DESC: @claven_sale.S_DISC_DESC, S_HOW_PAID: @claven_sale.S_HOW_PAID, S_INVOICE_DATE: @claven_sale.S_INVOICE_DATE, S_INVOICE_TOTAL: @claven_sale.S_INVOICE_TOTAL, S_NUM: @claven_sale.S_NUM, S_OPTIONS_DESC: @claven_sale.S_OPTIONS_DESC, S_PRICE: @claven_sale.S_PRICE, S_PRODUCT_NAME: @claven_sale.S_PRODUCT_NAME, S_PR_JOB_NUM: @claven_sale.S_PR_JOB_NUM, S_PR_TASK: @claven_sale.S_PR_TASK, S_SALES_TAX: @claven_sale.S_SALES_TAX, S_SHIP_AMT: @claven_sale.S_SHIP_AMT, S_SHIP_ORG: @claven_sale.S_SHIP_ORG, S_SUPPORT_AMT: @claven_sale.S_SUPPORT_AMT, S_TAX_RATE: @claven_sale.S_TAX_RATE, S_TERMS: @claven_sale.S_TERMS, S_TS_CREDIT_AMT: @claven_sale.S_TS_CREDIT_AMT }
    end

    assert_redirected_to claven_sale_path(assigns(:claven_sale))
  end

  test "should show claven_sale" do
    get :show, id: @claven_sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @claven_sale
    assert_response :success
  end

  test "should update claven_sale" do
    patch :update, id: @claven_sale, claven_sale: { S_ADDL_QTY: @claven_sale.S_ADDL_QTY, S_ADDL_USER_AMT: @claven_sale.S_ADDL_USER_AMT, S_AMT_OPTIONS: @claven_sale.S_AMT_OPTIONS, S_CLIENT: @claven_sale.S_CLIENT, S_DISCOUNT: @claven_sale.S_DISCOUNT, S_DISC_DESC: @claven_sale.S_DISC_DESC, S_HOW_PAID: @claven_sale.S_HOW_PAID, S_INVOICE_DATE: @claven_sale.S_INVOICE_DATE, S_INVOICE_TOTAL: @claven_sale.S_INVOICE_TOTAL, S_NUM: @claven_sale.S_NUM, S_OPTIONS_DESC: @claven_sale.S_OPTIONS_DESC, S_PRICE: @claven_sale.S_PRICE, S_PRODUCT_NAME: @claven_sale.S_PRODUCT_NAME, S_PR_JOB_NUM: @claven_sale.S_PR_JOB_NUM, S_PR_TASK: @claven_sale.S_PR_TASK, S_SALES_TAX: @claven_sale.S_SALES_TAX, S_SHIP_AMT: @claven_sale.S_SHIP_AMT, S_SHIP_ORG: @claven_sale.S_SHIP_ORG, S_SUPPORT_AMT: @claven_sale.S_SUPPORT_AMT, S_TAX_RATE: @claven_sale.S_TAX_RATE, S_TERMS: @claven_sale.S_TERMS, S_TS_CREDIT_AMT: @claven_sale.S_TS_CREDIT_AMT }
    assert_redirected_to claven_sale_path(assigns(:claven_sale))
  end

  test "should destroy claven_sale" do
    assert_difference('ClavenSale.count', -1) do
      delete :destroy, id: @claven_sale
    end

    assert_redirected_to claven_sales_path
  end
end

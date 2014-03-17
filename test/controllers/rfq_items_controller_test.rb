require 'test_helper'

class RfqItemsControllerTest < ActionController::TestCase
  setup do
    @rfq_item = rfq_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rfq_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rfq_item" do
    assert_difference('RfqItem.count') do
      post :create, rfq_item: { RFQX_COST: @rfq_item.RFQX_COST, RFQX_DESC2: @rfq_item.RFQX_DESC2, RFQX_GROSS: @rfq_item.RFQX_GROSS, RFQX_INCLUDE: @rfq_item.RFQX_INCLUDE, RFQX_JOB_NUM: @rfq_item.RFQX_JOB_NUM, RFQX_LINE_NUMBER: @rfq_item.RFQX_LINE_NUMBER, RFQX_MARKUP: @rfq_item.RFQX_MARKUP, RFQX_NAME: @rfq_item.RFQX_NAME, RFQX_NUM: @rfq_item.RFQX_NUM, RFQX_PO_NUM: @rfq_item.RFQX_PO_NUM, RFQX_QTY: @rfq_item.RFQX_QTY, RFQX_TASK: @rfq_item.RFQX_TASK, RFQX_TAXABLE1: @rfq_item.RFQX_TAXABLE1, RFQX_TAXABLE2: @rfq_item.RFQX_TAXABLE2, RFQX_TYPE: @rfq_item.RFQX_TYPE, RFQX_UNIT_COST: @rfq_item.RFQX_UNIT_COST, RFQX_VENDOR2: @rfq_item.RFQX_VENDOR2, primaryKey: @rfq_item.primaryKey }
    end

    assert_redirected_to rfq_item_path(assigns(:rfq_item))
  end

  test "should show rfq_item" do
    get :show, id: @rfq_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rfq_item
    assert_response :success
  end

  test "should update rfq_item" do
    patch :update, id: @rfq_item, rfq_item: { RFQX_COST: @rfq_item.RFQX_COST, RFQX_DESC2: @rfq_item.RFQX_DESC2, RFQX_GROSS: @rfq_item.RFQX_GROSS, RFQX_INCLUDE: @rfq_item.RFQX_INCLUDE, RFQX_JOB_NUM: @rfq_item.RFQX_JOB_NUM, RFQX_LINE_NUMBER: @rfq_item.RFQX_LINE_NUMBER, RFQX_MARKUP: @rfq_item.RFQX_MARKUP, RFQX_NAME: @rfq_item.RFQX_NAME, RFQX_NUM: @rfq_item.RFQX_NUM, RFQX_PO_NUM: @rfq_item.RFQX_PO_NUM, RFQX_QTY: @rfq_item.RFQX_QTY, RFQX_TASK: @rfq_item.RFQX_TASK, RFQX_TAXABLE1: @rfq_item.RFQX_TAXABLE1, RFQX_TAXABLE2: @rfq_item.RFQX_TAXABLE2, RFQX_TYPE: @rfq_item.RFQX_TYPE, RFQX_UNIT_COST: @rfq_item.RFQX_UNIT_COST, RFQX_VENDOR2: @rfq_item.RFQX_VENDOR2, primaryKey: @rfq_item.primaryKey }
    assert_redirected_to rfq_item_path(assigns(:rfq_item))
  end

  test "should destroy rfq_item" do
    assert_difference('RfqItem.count', -1) do
      delete :destroy, id: @rfq_item
    end

    assert_redirected_to rfq_items_path
  end
end

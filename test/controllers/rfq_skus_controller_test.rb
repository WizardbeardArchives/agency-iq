require 'test_helper'

class RfqSkusControllerTest < ActionController::TestCase
  setup do
    @rfq_sku = rfq_skus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rfq_skus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rfq_sku" do
    assert_difference('RfqSku.count') do
      post :create, rfq_sku: { RFQSKU_DESC: @rfq_sku.RFQSKU_DESC, RFQSKU_JOB_TYPE: @rfq_sku.RFQSKU_JOB_TYPE, RFQSKU_MARKUP: @rfq_sku.RFQSKU_MARKUP, RFQSKU_NAME: @rfq_sku.RFQSKU_NAME, RFQSKU_PART_NUM: @rfq_sku.RFQSKU_PART_NUM, RFQSKU_TASK: @rfq_sku.RFQSKU_TASK, RFQSKU_TYPE: @rfq_sku.RFQSKU_TYPE, RFQSKU_UNIT_COST: @rfq_sku.RFQSKU_UNIT_COST, RFQSKU_VENDOR_NUM: @rfq_sku.RFQSKU_VENDOR_NUM, primaryKey: @rfq_sku.primaryKey }
    end

    assert_redirected_to rfq_sku_path(assigns(:rfq_sku))
  end

  test "should show rfq_sku" do
    get :show, id: @rfq_sku
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rfq_sku
    assert_response :success
  end

  test "should update rfq_sku" do
    patch :update, id: @rfq_sku, rfq_sku: { RFQSKU_DESC: @rfq_sku.RFQSKU_DESC, RFQSKU_JOB_TYPE: @rfq_sku.RFQSKU_JOB_TYPE, RFQSKU_MARKUP: @rfq_sku.RFQSKU_MARKUP, RFQSKU_NAME: @rfq_sku.RFQSKU_NAME, RFQSKU_PART_NUM: @rfq_sku.RFQSKU_PART_NUM, RFQSKU_TASK: @rfq_sku.RFQSKU_TASK, RFQSKU_TYPE: @rfq_sku.RFQSKU_TYPE, RFQSKU_UNIT_COST: @rfq_sku.RFQSKU_UNIT_COST, RFQSKU_VENDOR_NUM: @rfq_sku.RFQSKU_VENDOR_NUM, primaryKey: @rfq_sku.primaryKey }
    assert_redirected_to rfq_sku_path(assigns(:rfq_sku))
  end

  test "should destroy rfq_sku" do
    assert_difference('RfqSku.count', -1) do
      delete :destroy, id: @rfq_sku
    end

    assert_redirected_to rfq_skus_path
  end
end

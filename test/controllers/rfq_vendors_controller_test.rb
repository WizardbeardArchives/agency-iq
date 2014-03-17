require 'test_helper'

class RfqVendorsControllerTest < ActionController::TestCase
  setup do
    @rfq_vendor = rfq_vendors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rfq_vendors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rfq_vendor" do
    assert_difference('RfqVendor.count') do
      post :create, rfq_vendor: { RFQV_CONTACT: @rfq_vendor.RFQV_CONTACT, RFQV_FAX: @rfq_vendor.RFQV_FAX, RFQV_NUM: @rfq_vendor.RFQV_NUM, RFQV_PHONE: @rfq_vendor.RFQV_PHONE, RFQV_TYPE: @rfq_vendor.RFQV_TYPE, RFQV_VENDOR_NUM: @rfq_vendor.RFQV_VENDOR_NUM, RFQV_VORG: @rfq_vendor.RFQV_VORG, RFQV_WINNER: @rfq_vendor.RFQV_WINNER, primaryKey: @rfq_vendor.primaryKey }
    end

    assert_redirected_to rfq_vendor_path(assigns(:rfq_vendor))
  end

  test "should show rfq_vendor" do
    get :show, id: @rfq_vendor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rfq_vendor
    assert_response :success
  end

  test "should update rfq_vendor" do
    patch :update, id: @rfq_vendor, rfq_vendor: { RFQV_CONTACT: @rfq_vendor.RFQV_CONTACT, RFQV_FAX: @rfq_vendor.RFQV_FAX, RFQV_NUM: @rfq_vendor.RFQV_NUM, RFQV_PHONE: @rfq_vendor.RFQV_PHONE, RFQV_TYPE: @rfq_vendor.RFQV_TYPE, RFQV_VENDOR_NUM: @rfq_vendor.RFQV_VENDOR_NUM, RFQV_VORG: @rfq_vendor.RFQV_VORG, RFQV_WINNER: @rfq_vendor.RFQV_WINNER, primaryKey: @rfq_vendor.primaryKey }
    assert_redirected_to rfq_vendor_path(assigns(:rfq_vendor))
  end

  test "should destroy rfq_vendor" do
    assert_difference('RfqVendor.count', -1) do
      delete :destroy, id: @rfq_vendor
    end

    assert_redirected_to rfq_vendors_path
  end
end

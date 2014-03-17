require 'test_helper'

class HistoryVendorsControllerTest < ActionController::TestCase
  setup do
    @history_vendor = history_vendors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:history_vendors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history_vendor" do
    assert_difference('HistoryVendor.count') do
      post :create, history_vendor: { HV_ADDED_BY: @history_vendor.HV_ADDED_BY, HV_BCC: @history_vendor.HV_BCC, HV_CC: @history_vendor.HV_CC, HV_DATE: @history_vendor.HV_DATE, HV_DESC: @history_vendor.HV_DESC, HV_EDITED_BY: @history_vendor.HV_EDITED_BY, HV_EDITED_WHEN: @history_vendor.HV_EDITED_WHEN, HV_FOR: @history_vendor.HV_FOR, HV_INV_NUM: @history_vendor.HV_INV_NUM, HV_MAIL_TO: @history_vendor.HV_MAIL_TO, HV_NOTIFIED: @history_vendor.HV_NOTIFIED, HV_NUM: @history_vendor.HV_NUM, HV_OK: @history_vendor.HV_OK, HV_SUBJECT: @history_vendor.HV_SUBJECT, HV_VENDOR_NUM: @history_vendor.HV_VENDOR_NUM, primaryKey: @history_vendor.primaryKey }
    end

    assert_redirected_to history_vendor_path(assigns(:history_vendor))
  end

  test "should show history_vendor" do
    get :show, id: @history_vendor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @history_vendor
    assert_response :success
  end

  test "should update history_vendor" do
    patch :update, id: @history_vendor, history_vendor: { HV_ADDED_BY: @history_vendor.HV_ADDED_BY, HV_BCC: @history_vendor.HV_BCC, HV_CC: @history_vendor.HV_CC, HV_DATE: @history_vendor.HV_DATE, HV_DESC: @history_vendor.HV_DESC, HV_EDITED_BY: @history_vendor.HV_EDITED_BY, HV_EDITED_WHEN: @history_vendor.HV_EDITED_WHEN, HV_FOR: @history_vendor.HV_FOR, HV_INV_NUM: @history_vendor.HV_INV_NUM, HV_MAIL_TO: @history_vendor.HV_MAIL_TO, HV_NOTIFIED: @history_vendor.HV_NOTIFIED, HV_NUM: @history_vendor.HV_NUM, HV_OK: @history_vendor.HV_OK, HV_SUBJECT: @history_vendor.HV_SUBJECT, HV_VENDOR_NUM: @history_vendor.HV_VENDOR_NUM, primaryKey: @history_vendor.primaryKey }
    assert_redirected_to history_vendor_path(assigns(:history_vendor))
  end

  test "should destroy history_vendor" do
    assert_difference('HistoryVendor.count', -1) do
      delete :destroy, id: @history_vendor
    end

    assert_redirected_to history_vendors_path
  end
end

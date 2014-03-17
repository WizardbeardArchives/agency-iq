require 'test_helper'

class ApsControllerTest < ActionController::TestCase
  setup do
    @ap = aps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ap" do
    assert_difference('Ap.count') do
      post :create, ap: { AP_30: @ap.AP_30, AP_60: @ap.AP_60, AP_90: @ap.AP_90, AP_ADDED_BY: @ap.AP_ADDED_BY, AP_ADDED_WHEN: @ap.AP_ADDED_WHEN, AP_AMT_PAID: @ap.AP_AMT_PAID, AP_APPROVED: @ap.AP_APPROVED, AP_APPROVED_BY: @ap.AP_APPROVED_BY, AP_APPROVED_DATE: @ap.AP_APPROVED_DATE, AP_AUTO_PAY: @ap.AP_AUTO_PAY, AP_CGL: @ap.AP_CGL, AP_CLIENT_PAID: @ap.AP_CLIENT_PAID, AP_CLOSE_PO: @ap.AP_CLOSE_PO, AP_COMM_NET: @ap.AP_COMM_NET, AP_CURRENT: @ap.AP_CURRENT, AP_DATE: @ap.AP_DATE, AP_DATE_PAID: @ap.AP_DATE_PAID, AP_DESC: @ap.AP_DESC, AP_DISC_DATE: @ap.AP_DISC_DATE, AP_DISC_TAKEN: @ap.AP_DISC_TAKEN, AP_EDITED_BY: @ap.AP_EDITED_BY, AP_EDITED_WHEN: @ap.AP_EDITED_WHEN, AP_EXPORTED: @ap.AP_EXPORTED, AP_GROSS_AMT: @ap.AP_GROSS_AMT, AP_GST1: @ap.AP_GST1, AP_GST2: @ap.AP_GST2, AP_GST_GL: @ap.AP_GST_GL, AP_JUMPSTART: @ap.AP_JUMPSTART, AP_KEY: @ap.AP_KEY, AP_KIND: @ap.AP_KIND, AP_MARKUP_PC: @ap.AP_MARKUP_PC, AP_NET_AMT: @ap.AP_NET_AMT, AP_NUM: @ap.AP_NUM, AP_PAID_CC: @ap.AP_PAID_CC, AP_PAID_CC_INV_NUM: @ap.AP_PAID_CC_INV_NUM, AP_PAID_ONLINE: @ap.AP_PAID_ONLINE, AP_PAY_DATE: @ap.AP_PAY_DATE, AP_PERIOD: @ap.AP_PERIOD, AP_POSTED: @ap.AP_POSTED, AP_POSTED_BY: @ap.AP_POSTED_BY, AP_POSTED_WHEN: @ap.AP_POSTED_WHEN, AP_TAX_AMT: @ap.AP_TAX_AMT, AP_TERMS1: @ap.AP_TERMS1, AP_TERMS2: @ap.AP_TERMS2, AP_TERMS3: @ap.AP_TERMS3, AP_TOTAL_AMT: @ap.AP_TOTAL_AMT, AP_UNPAID: @ap.AP_UNPAID, AP_VENDOR_NUM: @ap.AP_VENDOR_NUM, AP_VOUCHER: @ap.AP_VOUCHER, primaryKey: @ap.primaryKey }
    end

    assert_redirected_to ap_path(assigns(:ap))
  end

  test "should show ap" do
    get :show, id: @ap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ap
    assert_response :success
  end

  test "should update ap" do
    patch :update, id: @ap, ap: { AP_30: @ap.AP_30, AP_60: @ap.AP_60, AP_90: @ap.AP_90, AP_ADDED_BY: @ap.AP_ADDED_BY, AP_ADDED_WHEN: @ap.AP_ADDED_WHEN, AP_AMT_PAID: @ap.AP_AMT_PAID, AP_APPROVED: @ap.AP_APPROVED, AP_APPROVED_BY: @ap.AP_APPROVED_BY, AP_APPROVED_DATE: @ap.AP_APPROVED_DATE, AP_AUTO_PAY: @ap.AP_AUTO_PAY, AP_CGL: @ap.AP_CGL, AP_CLIENT_PAID: @ap.AP_CLIENT_PAID, AP_CLOSE_PO: @ap.AP_CLOSE_PO, AP_COMM_NET: @ap.AP_COMM_NET, AP_CURRENT: @ap.AP_CURRENT, AP_DATE: @ap.AP_DATE, AP_DATE_PAID: @ap.AP_DATE_PAID, AP_DESC: @ap.AP_DESC, AP_DISC_DATE: @ap.AP_DISC_DATE, AP_DISC_TAKEN: @ap.AP_DISC_TAKEN, AP_EDITED_BY: @ap.AP_EDITED_BY, AP_EDITED_WHEN: @ap.AP_EDITED_WHEN, AP_EXPORTED: @ap.AP_EXPORTED, AP_GROSS_AMT: @ap.AP_GROSS_AMT, AP_GST1: @ap.AP_GST1, AP_GST2: @ap.AP_GST2, AP_GST_GL: @ap.AP_GST_GL, AP_JUMPSTART: @ap.AP_JUMPSTART, AP_KEY: @ap.AP_KEY, AP_KIND: @ap.AP_KIND, AP_MARKUP_PC: @ap.AP_MARKUP_PC, AP_NET_AMT: @ap.AP_NET_AMT, AP_NUM: @ap.AP_NUM, AP_PAID_CC: @ap.AP_PAID_CC, AP_PAID_CC_INV_NUM: @ap.AP_PAID_CC_INV_NUM, AP_PAID_ONLINE: @ap.AP_PAID_ONLINE, AP_PAY_DATE: @ap.AP_PAY_DATE, AP_PERIOD: @ap.AP_PERIOD, AP_POSTED: @ap.AP_POSTED, AP_POSTED_BY: @ap.AP_POSTED_BY, AP_POSTED_WHEN: @ap.AP_POSTED_WHEN, AP_TAX_AMT: @ap.AP_TAX_AMT, AP_TERMS1: @ap.AP_TERMS1, AP_TERMS2: @ap.AP_TERMS2, AP_TERMS3: @ap.AP_TERMS3, AP_TOTAL_AMT: @ap.AP_TOTAL_AMT, AP_UNPAID: @ap.AP_UNPAID, AP_VENDOR_NUM: @ap.AP_VENDOR_NUM, AP_VOUCHER: @ap.AP_VOUCHER, primaryKey: @ap.primaryKey }
    assert_redirected_to ap_path(assigns(:ap))
  end

  test "should destroy ap" do
    assert_difference('Ap.count', -1) do
      delete :destroy, id: @ap
    end

    assert_redirected_to aps_path
  end
end

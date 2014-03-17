require 'test_helper'

class ChecksControllerTest < ActionController::TestCase
  setup do
    @check = checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create check" do
    assert_difference('Check.count') do
      post :create, check: { CK_1099: @check.CK_1099, CK_ADDED_BY: @check.CK_ADDED_BY, CK_ADDED_WHEN: @check.CK_ADDED_WHEN, CK_ADDRESS1: @check.CK_ADDRESS1, CK_ADDRESS2: @check.CK_ADDRESS2, CK_ADDRESS3: @check.CK_ADDRESS3, CK_AMOUNT: @check.CK_AMOUNT, CK_CGL: @check.CK_CGL, CK_CLEARED: @check.CK_CLEARED, CK_DATE: @check.CK_DATE, CK_DISC_AMT: @check.CK_DISC_AMT, CK_DISC_GL: @check.CK_DISC_GL, CK_DONT_PRINT: @check.CK_DONT_PRINT, CK_EDITED_BY: @check.CK_EDITED_BY, CK_EDITED_WHEN: @check.CK_EDITED_WHEN, CK_EMPL_ADV_CK: @check.CK_EMPL_ADV_CK, CK_EMP_ADV_EXP: @check.CK_EMP_ADV_EXP, CK_GROSS: @check.CK_GROSS, CK_MEMO: @check.CK_MEMO, CK_NET_AMT: @check.CK_NET_AMT, CK_NUM: @check.CK_NUM, CK_OK: @check.CK_OK, CK_ONLINE_PMT_CONFIRM_NUM: @check.CK_ONLINE_PMT_CONFIRM_NUM, CK_PAY: @check.CK_PAY, CK_PAYEE: @check.CK_PAYEE, CK_PERIOD: @check.CK_PERIOD, CK_POSTED: @check.CK_POSTED, CK_POSTED_BY: @check.CK_POSTED_BY, CK_POSTED_WHEN: @check.CK_POSTED_WHEN, CK_TAX_ID: @check.CK_TAX_ID, CK_TYPE: @check.CK_TYPE, CK_VENDOR_NUM: @check.CK_VENDOR_NUM, primaryKey: @check.primaryKey }
    end

    assert_redirected_to check_path(assigns(:check))
  end

  test "should show check" do
    get :show, id: @check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @check
    assert_response :success
  end

  test "should update check" do
    patch :update, id: @check, check: { CK_1099: @check.CK_1099, CK_ADDED_BY: @check.CK_ADDED_BY, CK_ADDED_WHEN: @check.CK_ADDED_WHEN, CK_ADDRESS1: @check.CK_ADDRESS1, CK_ADDRESS2: @check.CK_ADDRESS2, CK_ADDRESS3: @check.CK_ADDRESS3, CK_AMOUNT: @check.CK_AMOUNT, CK_CGL: @check.CK_CGL, CK_CLEARED: @check.CK_CLEARED, CK_DATE: @check.CK_DATE, CK_DISC_AMT: @check.CK_DISC_AMT, CK_DISC_GL: @check.CK_DISC_GL, CK_DONT_PRINT: @check.CK_DONT_PRINT, CK_EDITED_BY: @check.CK_EDITED_BY, CK_EDITED_WHEN: @check.CK_EDITED_WHEN, CK_EMPL_ADV_CK: @check.CK_EMPL_ADV_CK, CK_EMP_ADV_EXP: @check.CK_EMP_ADV_EXP, CK_GROSS: @check.CK_GROSS, CK_MEMO: @check.CK_MEMO, CK_NET_AMT: @check.CK_NET_AMT, CK_NUM: @check.CK_NUM, CK_OK: @check.CK_OK, CK_ONLINE_PMT_CONFIRM_NUM: @check.CK_ONLINE_PMT_CONFIRM_NUM, CK_PAY: @check.CK_PAY, CK_PAYEE: @check.CK_PAYEE, CK_PERIOD: @check.CK_PERIOD, CK_POSTED: @check.CK_POSTED, CK_POSTED_BY: @check.CK_POSTED_BY, CK_POSTED_WHEN: @check.CK_POSTED_WHEN, CK_TAX_ID: @check.CK_TAX_ID, CK_TYPE: @check.CK_TYPE, CK_VENDOR_NUM: @check.CK_VENDOR_NUM, primaryKey: @check.primaryKey }
    assert_redirected_to check_path(assigns(:check))
  end

  test "should destroy check" do
    assert_difference('Check.count', -1) do
      delete :destroy, id: @check
    end

    assert_redirected_to checks_path
  end
end

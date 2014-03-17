require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  setup do
    @account = accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      post :create, account: { AC_10: @account.AC_10, AC_11: @account.AC_11, AC_12: @account.AC_12, AC_13: @account.AC_13, AC_14: @account.AC_14, AC_15: @account.AC_15, AC_16: @account.AC_16, AC_17: @account.AC_17, AC_18: @account.AC_18, AC_19: @account.AC_19, AC_1: @account.AC_1, AC_20: @account.AC_20, AC_21: @account.AC_21, AC_22: @account.AC_22, AC_23: @account.AC_23, AC_24: @account.AC_24, AC_2: @account.AC_2, AC_3: @account.AC_3, AC_4: @account.AC_4, AC_5: @account.AC_5, AC_6: @account.AC_6, AC_7: @account.AC_7, AC_8: @account.AC_8, AC_9: @account.AC_9, AC_ACTIVE: @account.AC_ACTIVE, AC_ADDED_BY: @account.AC_ADDED_BY, AC_ADDED_WHEN: @account.AC_ADDED_WHEN, AC_AP_CONTROL: @account.AC_AP_CONTROL, AC_AP_LOCK: @account.AC_AP_LOCK, AC_AR_CONTROL: @account.AC_AR_CONTROL, AC_AR_LOCK: @account.AC_AR_LOCK, AC_B13: @account.AC_B13, AC_BANK_ACCT_NUM: @account.AC_BANK_ACCT_NUM, AC_BANK_LOCATION: @account.AC_BANK_LOCATION, AC_BANK_NAME: @account.AC_BANK_NAME, AC_BANK_NUM: @account.AC_BANK_NUM, AC_BANK_ROUTING: @account.AC_BANK_ROUTING, AC_BEG_BALN: @account.AC_BEG_BALN, AC_BUDGET10: @account.AC_BUDGET10, AC_BUDGET11: @account.AC_BUDGET11, AC_BUDGET12: @account.AC_BUDGET12, AC_BUDGET13: @account.AC_BUDGET13, AC_BUDGET14: @account.AC_BUDGET14, AC_BUDGET15: @account.AC_BUDGET15, AC_BUDGET16: @account.AC_BUDGET16, AC_BUDGET17: @account.AC_BUDGET17, AC_BUDGET18: @account.AC_BUDGET18, AC_BUDGET19: @account.AC_BUDGET19, AC_BUDGET1: @account.AC_BUDGET1, AC_BUDGET20: @account.AC_BUDGET20, AC_BUDGET21: @account.AC_BUDGET21, AC_BUDGET22: @account.AC_BUDGET22, AC_BUDGET23: @account.AC_BUDGET23, AC_BUDGET24: @account.AC_BUDGET24, AC_BUDGET2: @account.AC_BUDGET2, AC_BUDGET3: @account.AC_BUDGET3, AC_BUDGET4: @account.AC_BUDGET4, AC_BUDGET5: @account.AC_BUDGET5, AC_BUDGET6: @account.AC_BUDGET6, AC_BUDGET7: @account.AC_BUDGET7, AC_BUDGET8: @account.AC_BUDGET8, AC_BUDGET9: @account.AC_BUDGET9, AC_CATEGORY: @account.AC_CATEGORY, AC_CF: @account.AC_CF, AC_CK_ACCT: @account.AC_CK_ACCT, AC_CK_NUM: @account.AC_CK_NUM, AC_CLASS: @account.AC_CLASS, AC_CONFIDENTIAL: @account.AC_CONFIDENTIAL, AC_CORP_ID: @account.AC_CORP_ID, AC_DEPT: @account.AC_DEPT, AC_DESC: @account.AC_DESC, AC_EDITED_BY: @account.AC_EDITED_BY, AC_EDITED_WHEN: @account.AC_EDITED_WHEN, AC_GROUP: @account.AC_GROUP, AC_L10: @account.AC_L10, AC_L11: @account.AC_L11, AC_L12: @account.AC_L12, AC_L1: @account.AC_L1, AC_L2: @account.AC_L2, AC_L3: @account.AC_L3, AC_L4: @account.AC_L4, AC_L5: @account.AC_L5, AC_L6: @account.AC_L6, AC_L7: @account.AC_L7, AC_L8: @account.AC_L8, AC_L9: @account.AC_L9, AC_L_BEG_BALN: @account.AC_L_BEG_BALN, AC_NAME: @account.AC_NAME, AC_NUM: @account.AC_NUM, AC_ONLINE_PMT_NUM: @account.AC_ONLINE_PMT_NUM, AC_PC: @account.AC_PC, AC_RATIO: @account.AC_RATIO, AC_ROLLUP_ONLY: @account.AC_ROLLUP_ONLY, AC_ROLL_UP: @account.AC_ROLL_UP, AC_SUB_CLASS: @account.AC_SUB_CLASS, AC_YTD2: @account.AC_YTD2, AC_YTD: @account.AC_YTD, primaryKey: @account.primaryKey }
    end

    assert_redirected_to account_path(assigns(:account))
  end

  test "should show account" do
    get :show, id: @account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account
    assert_response :success
  end

  test "should update account" do
    patch :update, id: @account, account: { AC_10: @account.AC_10, AC_11: @account.AC_11, AC_12: @account.AC_12, AC_13: @account.AC_13, AC_14: @account.AC_14, AC_15: @account.AC_15, AC_16: @account.AC_16, AC_17: @account.AC_17, AC_18: @account.AC_18, AC_19: @account.AC_19, AC_1: @account.AC_1, AC_20: @account.AC_20, AC_21: @account.AC_21, AC_22: @account.AC_22, AC_23: @account.AC_23, AC_24: @account.AC_24, AC_2: @account.AC_2, AC_3: @account.AC_3, AC_4: @account.AC_4, AC_5: @account.AC_5, AC_6: @account.AC_6, AC_7: @account.AC_7, AC_8: @account.AC_8, AC_9: @account.AC_9, AC_ACTIVE: @account.AC_ACTIVE, AC_ADDED_BY: @account.AC_ADDED_BY, AC_ADDED_WHEN: @account.AC_ADDED_WHEN, AC_AP_CONTROL: @account.AC_AP_CONTROL, AC_AP_LOCK: @account.AC_AP_LOCK, AC_AR_CONTROL: @account.AC_AR_CONTROL, AC_AR_LOCK: @account.AC_AR_LOCK, AC_B13: @account.AC_B13, AC_BANK_ACCT_NUM: @account.AC_BANK_ACCT_NUM, AC_BANK_LOCATION: @account.AC_BANK_LOCATION, AC_BANK_NAME: @account.AC_BANK_NAME, AC_BANK_NUM: @account.AC_BANK_NUM, AC_BANK_ROUTING: @account.AC_BANK_ROUTING, AC_BEG_BALN: @account.AC_BEG_BALN, AC_BUDGET10: @account.AC_BUDGET10, AC_BUDGET11: @account.AC_BUDGET11, AC_BUDGET12: @account.AC_BUDGET12, AC_BUDGET13: @account.AC_BUDGET13, AC_BUDGET14: @account.AC_BUDGET14, AC_BUDGET15: @account.AC_BUDGET15, AC_BUDGET16: @account.AC_BUDGET16, AC_BUDGET17: @account.AC_BUDGET17, AC_BUDGET18: @account.AC_BUDGET18, AC_BUDGET19: @account.AC_BUDGET19, AC_BUDGET1: @account.AC_BUDGET1, AC_BUDGET20: @account.AC_BUDGET20, AC_BUDGET21: @account.AC_BUDGET21, AC_BUDGET22: @account.AC_BUDGET22, AC_BUDGET23: @account.AC_BUDGET23, AC_BUDGET24: @account.AC_BUDGET24, AC_BUDGET2: @account.AC_BUDGET2, AC_BUDGET3: @account.AC_BUDGET3, AC_BUDGET4: @account.AC_BUDGET4, AC_BUDGET5: @account.AC_BUDGET5, AC_BUDGET6: @account.AC_BUDGET6, AC_BUDGET7: @account.AC_BUDGET7, AC_BUDGET8: @account.AC_BUDGET8, AC_BUDGET9: @account.AC_BUDGET9, AC_CATEGORY: @account.AC_CATEGORY, AC_CF: @account.AC_CF, AC_CK_ACCT: @account.AC_CK_ACCT, AC_CK_NUM: @account.AC_CK_NUM, AC_CLASS: @account.AC_CLASS, AC_CONFIDENTIAL: @account.AC_CONFIDENTIAL, AC_CORP_ID: @account.AC_CORP_ID, AC_DEPT: @account.AC_DEPT, AC_DESC: @account.AC_DESC, AC_EDITED_BY: @account.AC_EDITED_BY, AC_EDITED_WHEN: @account.AC_EDITED_WHEN, AC_GROUP: @account.AC_GROUP, AC_L10: @account.AC_L10, AC_L11: @account.AC_L11, AC_L12: @account.AC_L12, AC_L1: @account.AC_L1, AC_L2: @account.AC_L2, AC_L3: @account.AC_L3, AC_L4: @account.AC_L4, AC_L5: @account.AC_L5, AC_L6: @account.AC_L6, AC_L7: @account.AC_L7, AC_L8: @account.AC_L8, AC_L9: @account.AC_L9, AC_L_BEG_BALN: @account.AC_L_BEG_BALN, AC_NAME: @account.AC_NAME, AC_NUM: @account.AC_NUM, AC_ONLINE_PMT_NUM: @account.AC_ONLINE_PMT_NUM, AC_PC: @account.AC_PC, AC_RATIO: @account.AC_RATIO, AC_ROLLUP_ONLY: @account.AC_ROLLUP_ONLY, AC_ROLL_UP: @account.AC_ROLL_UP, AC_SUB_CLASS: @account.AC_SUB_CLASS, AC_YTD2: @account.AC_YTD2, AC_YTD: @account.AC_YTD, primaryKey: @account.primaryKey }
    assert_redirected_to account_path(assigns(:account))
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete :destroy, id: @account
    end

    assert_redirected_to accounts_path
  end
end

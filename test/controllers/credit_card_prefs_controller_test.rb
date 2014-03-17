require 'test_helper'

class CreditCardPrefsControllerTest < ActionController::TestCase
  setup do
    @credit_card_pref = credit_card_prefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:credit_card_prefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create credit_card_pref" do
    assert_difference('CreditCardPref.count') do
      post :create, credit_card_pref: { CC_ACCT_NUM: @credit_card_pref.CC_ACCT_NUM, CC_CGL: @credit_card_pref.CC_CGL, CC_DGL: @credit_card_pref.CC_DGL, CC_JOB_NUM: @credit_card_pref.CC_JOB_NUM, CC_KIND: @credit_card_pref.CC_KIND, CC_PAYEE: @credit_card_pref.CC_PAYEE, CC_TASK: @credit_card_pref.CC_TASK, CC_VENDOR_NUM: @credit_card_pref.CC_VENDOR_NUM, primaryKey: @credit_card_pref.primaryKey }
    end

    assert_redirected_to credit_card_pref_path(assigns(:credit_card_pref))
  end

  test "should show credit_card_pref" do
    get :show, id: @credit_card_pref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @credit_card_pref
    assert_response :success
  end

  test "should update credit_card_pref" do
    patch :update, id: @credit_card_pref, credit_card_pref: { CC_ACCT_NUM: @credit_card_pref.CC_ACCT_NUM, CC_CGL: @credit_card_pref.CC_CGL, CC_DGL: @credit_card_pref.CC_DGL, CC_JOB_NUM: @credit_card_pref.CC_JOB_NUM, CC_KIND: @credit_card_pref.CC_KIND, CC_PAYEE: @credit_card_pref.CC_PAYEE, CC_TASK: @credit_card_pref.CC_TASK, CC_VENDOR_NUM: @credit_card_pref.CC_VENDOR_NUM, primaryKey: @credit_card_pref.primaryKey }
    assert_redirected_to credit_card_pref_path(assigns(:credit_card_pref))
  end

  test "should destroy credit_card_pref" do
    assert_difference('CreditCardPref.count', -1) do
      delete :destroy, id: @credit_card_pref
    end

    assert_redirected_to credit_card_prefs_path
  end
end

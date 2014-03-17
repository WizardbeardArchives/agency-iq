require 'test_helper'

class UnChecksControllerTest < ActionController::TestCase
  setup do
    @un_check = un_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:un_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create un_check" do
    assert_difference('UnCheck.count') do
      post :create, un_check: { UNCKS_AC_NUM: @un_check.UNCKS_AC_NUM, UNCKS_CREDIT: @un_check.UNCKS_CREDIT, UNCKS_DATE: @un_check.UNCKS_DATE, UNCKS_DEBIT: @un_check.UNCKS_DEBIT, UNCKS_DESC: @un_check.UNCKS_DESC, UNCKS_PAY_BATCH: @un_check.UNCKS_PAY_BATCH, UNCKS_RECONCILE: @un_check.UNCKS_RECONCILE, UNCKS_REF: @un_check.UNCKS_REF, UNCKS_SOURCE: @un_check.UNCKS_SOURCE, UNCKS_TEMP_REC: @un_check.UNCKS_TEMP_REC, primaryKey: @un_check.primaryKey }
    end

    assert_redirected_to un_check_path(assigns(:un_check))
  end

  test "should show un_check" do
    get :show, id: @un_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @un_check
    assert_response :success
  end

  test "should update un_check" do
    patch :update, id: @un_check, un_check: { UNCKS_AC_NUM: @un_check.UNCKS_AC_NUM, UNCKS_CREDIT: @un_check.UNCKS_CREDIT, UNCKS_DATE: @un_check.UNCKS_DATE, UNCKS_DEBIT: @un_check.UNCKS_DEBIT, UNCKS_DESC: @un_check.UNCKS_DESC, UNCKS_PAY_BATCH: @un_check.UNCKS_PAY_BATCH, UNCKS_RECONCILE: @un_check.UNCKS_RECONCILE, UNCKS_REF: @un_check.UNCKS_REF, UNCKS_SOURCE: @un_check.UNCKS_SOURCE, UNCKS_TEMP_REC: @un_check.UNCKS_TEMP_REC, primaryKey: @un_check.primaryKey }
    assert_redirected_to un_check_path(assigns(:un_check))
  end

  test "should destroy un_check" do
    assert_difference('UnCheck.count', -1) do
      delete :destroy, id: @un_check
    end

    assert_redirected_to un_checks_path
  end
end

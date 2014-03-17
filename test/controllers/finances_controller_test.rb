require 'test_helper'

class FinancesControllerTest < ActionController::TestCase
  setup do
    @finance = finances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finance" do
    assert_difference('Finance.count') do
      post :create, finance: { FI_1: @finance.FI_1, FI_2: @finance.FI_2, FI_3: @finance.FI_3, FI_4: @finance.FI_4, FI_5: @finance.FI_5, FI_6: @finance.FI_6, FI_7: @finance.FI_7, FI_8: @finance.FI_8, FI_AC_NUM: @finance.FI_AC_NUM, FI_CATEGORY: @finance.FI_CATEGORY, FI_CLASS: @finance.FI_CLASS, FI_CLIENT_NUM: @finance.FI_CLIENT_NUM, FI_GROUP: @finance.FI_GROUP, FI_L_MONTH: @finance.FI_L_MONTH, FI_L_MTD: @finance.FI_L_MTD, FI_L_MTD_PERCENT: @finance.FI_L_MTD_PERCENT, FI_L_PCT1: @finance.FI_L_PCT1, FI_L_PCT2: @finance.FI_L_PCT2, FI_L_PCT3: @finance.FI_L_PCT3, FI_L_PCT4: @finance.FI_L_PCT4, FI_L_PCT5: @finance.FI_L_PCT5, FI_L_YEAR: @finance.FI_L_YEAR, FI_L_YTD: @finance.FI_L_YTD, FI_L_YTD_PERCENT: @finance.FI_L_YTD_PERCENT, FI_MONTH: @finance.FI_MONTH, FI_MTD: @finance.FI_MTD, FI_MTD_PERCENT: @finance.FI_MTD_PERCENT, FI_NAME: @finance.FI_NAME, FI_NOTE: @finance.FI_NOTE, FI_PCT1: @finance.FI_PCT1, FI_PCT2: @finance.FI_PCT2, FI_PCT3: @finance.FI_PCT3, FI_PCT4: @finance.FI_PCT4, FI_PCT5: @finance.FI_PCT5, FI_ROLL_UP: @finance.FI_ROLL_UP, FI_SUB_CLASS: @finance.FI_SUB_CLASS, FI_YEAR: @finance.FI_YEAR, FI_YTD: @finance.FI_YTD, FI_YTD_PERCENT: @finance.FI_YTD_PERCENT, primaryKey: @finance.primaryKey }
    end

    assert_redirected_to finance_path(assigns(:finance))
  end

  test "should show finance" do
    get :show, id: @finance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finance
    assert_response :success
  end

  test "should update finance" do
    patch :update, id: @finance, finance: { FI_1: @finance.FI_1, FI_2: @finance.FI_2, FI_3: @finance.FI_3, FI_4: @finance.FI_4, FI_5: @finance.FI_5, FI_6: @finance.FI_6, FI_7: @finance.FI_7, FI_8: @finance.FI_8, FI_AC_NUM: @finance.FI_AC_NUM, FI_CATEGORY: @finance.FI_CATEGORY, FI_CLASS: @finance.FI_CLASS, FI_CLIENT_NUM: @finance.FI_CLIENT_NUM, FI_GROUP: @finance.FI_GROUP, FI_L_MONTH: @finance.FI_L_MONTH, FI_L_MTD: @finance.FI_L_MTD, FI_L_MTD_PERCENT: @finance.FI_L_MTD_PERCENT, FI_L_PCT1: @finance.FI_L_PCT1, FI_L_PCT2: @finance.FI_L_PCT2, FI_L_PCT3: @finance.FI_L_PCT3, FI_L_PCT4: @finance.FI_L_PCT4, FI_L_PCT5: @finance.FI_L_PCT5, FI_L_YEAR: @finance.FI_L_YEAR, FI_L_YTD: @finance.FI_L_YTD, FI_L_YTD_PERCENT: @finance.FI_L_YTD_PERCENT, FI_MONTH: @finance.FI_MONTH, FI_MTD: @finance.FI_MTD, FI_MTD_PERCENT: @finance.FI_MTD_PERCENT, FI_NAME: @finance.FI_NAME, FI_NOTE: @finance.FI_NOTE, FI_PCT1: @finance.FI_PCT1, FI_PCT2: @finance.FI_PCT2, FI_PCT3: @finance.FI_PCT3, FI_PCT4: @finance.FI_PCT4, FI_PCT5: @finance.FI_PCT5, FI_ROLL_UP: @finance.FI_ROLL_UP, FI_SUB_CLASS: @finance.FI_SUB_CLASS, FI_YEAR: @finance.FI_YEAR, FI_YTD: @finance.FI_YTD, FI_YTD_PERCENT: @finance.FI_YTD_PERCENT, primaryKey: @finance.primaryKey }
    assert_redirected_to finance_path(assigns(:finance))
  end

  test "should destroy finance" do
    assert_difference('Finance.count', -1) do
      delete :destroy, id: @finance
    end

    assert_redirected_to finances_path
  end
end

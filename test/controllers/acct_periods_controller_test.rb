require 'test_helper'

class AcctPeriodsControllerTest < ActionController::TestCase
  setup do
    @acct_period = acct_periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acct_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acct_period" do
    assert_difference('AcctPeriod.count') do
      post :create, acct_period: { PERIOD_10: @acct_period.PERIOD_10, PERIOD_11: @acct_period.PERIOD_11, PERIOD_12: @acct_period.PERIOD_12, PERIOD_13: @acct_period.PERIOD_13, PERIOD_14: @acct_period.PERIOD_14, PERIOD_15: @acct_period.PERIOD_15, PERIOD_16: @acct_period.PERIOD_16, PERIOD_17: @acct_period.PERIOD_17, PERIOD_18: @acct_period.PERIOD_18, PERIOD_19: @acct_period.PERIOD_19, PERIOD_1: @acct_period.PERIOD_1, PERIOD_20: @acct_period.PERIOD_20, PERIOD_21: @acct_period.PERIOD_21, PERIOD_22: @acct_period.PERIOD_22, PERIOD_23: @acct_period.PERIOD_23, PERIOD_24: @acct_period.PERIOD_24, PERIOD_2: @acct_period.PERIOD_2, PERIOD_3: @acct_period.PERIOD_3, PERIOD_4: @acct_period.PERIOD_4, PERIOD_5: @acct_period.PERIOD_5, PERIOD_6: @acct_period.PERIOD_6, PERIOD_7: @acct_period.PERIOD_7, PERIOD_8: @acct_period.PERIOD_8, PERIOD_9: @acct_period.PERIOD_9, PERIOD_CURR_PER: @acct_period.PERIOD_CURR_PER, PERIOD_FIRST_DAY: @acct_period.PERIOD_FIRST_DAY, PERIOD_FY1_NAME: @acct_period.PERIOD_FY1_NAME, PERIOD_FY2_NAME: @acct_period.PERIOD_FY2_NAME, PERIOD_ID: @acct_period.PERIOD_ID, PERIOD_LOCK10: @acct_period.PERIOD_LOCK10, PERIOD_LOCK11: @acct_period.PERIOD_LOCK11, PERIOD_LOCK12: @acct_period.PERIOD_LOCK12, PERIOD_LOCK13: @acct_period.PERIOD_LOCK13, PERIOD_LOCK14: @acct_period.PERIOD_LOCK14, PERIOD_LOCK15: @acct_period.PERIOD_LOCK15, PERIOD_LOCK16: @acct_period.PERIOD_LOCK16, PERIOD_LOCK17: @acct_period.PERIOD_LOCK17, PERIOD_LOCK18: @acct_period.PERIOD_LOCK18, PERIOD_LOCK19: @acct_period.PERIOD_LOCK19, PERIOD_LOCK1: @acct_period.PERIOD_LOCK1, PERIOD_LOCK20: @acct_period.PERIOD_LOCK20, PERIOD_LOCK21: @acct_period.PERIOD_LOCK21, PERIOD_LOCK22: @acct_period.PERIOD_LOCK22, PERIOD_LOCK23: @acct_period.PERIOD_LOCK23, PERIOD_LOCK24: @acct_period.PERIOD_LOCK24, PERIOD_LOCK2: @acct_period.PERIOD_LOCK2, PERIOD_LOCK3: @acct_period.PERIOD_LOCK3, PERIOD_LOCK4: @acct_period.PERIOD_LOCK4, PERIOD_LOCK5: @acct_period.PERIOD_LOCK5, PERIOD_LOCK6: @acct_period.PERIOD_LOCK6, PERIOD_LOCK7: @acct_period.PERIOD_LOCK7, PERIOD_LOCK8: @acct_period.PERIOD_LOCK8, PERIOD_LOCK9: @acct_period.PERIOD_LOCK9 }
    end

    assert_redirected_to acct_period_path(assigns(:acct_period))
  end

  test "should show acct_period" do
    get :show, id: @acct_period
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acct_period
    assert_response :success
  end

  test "should update acct_period" do
    patch :update, id: @acct_period, acct_period: { PERIOD_10: @acct_period.PERIOD_10, PERIOD_11: @acct_period.PERIOD_11, PERIOD_12: @acct_period.PERIOD_12, PERIOD_13: @acct_period.PERIOD_13, PERIOD_14: @acct_period.PERIOD_14, PERIOD_15: @acct_period.PERIOD_15, PERIOD_16: @acct_period.PERIOD_16, PERIOD_17: @acct_period.PERIOD_17, PERIOD_18: @acct_period.PERIOD_18, PERIOD_19: @acct_period.PERIOD_19, PERIOD_1: @acct_period.PERIOD_1, PERIOD_20: @acct_period.PERIOD_20, PERIOD_21: @acct_period.PERIOD_21, PERIOD_22: @acct_period.PERIOD_22, PERIOD_23: @acct_period.PERIOD_23, PERIOD_24: @acct_period.PERIOD_24, PERIOD_2: @acct_period.PERIOD_2, PERIOD_3: @acct_period.PERIOD_3, PERIOD_4: @acct_period.PERIOD_4, PERIOD_5: @acct_period.PERIOD_5, PERIOD_6: @acct_period.PERIOD_6, PERIOD_7: @acct_period.PERIOD_7, PERIOD_8: @acct_period.PERIOD_8, PERIOD_9: @acct_period.PERIOD_9, PERIOD_CURR_PER: @acct_period.PERIOD_CURR_PER, PERIOD_FIRST_DAY: @acct_period.PERIOD_FIRST_DAY, PERIOD_FY1_NAME: @acct_period.PERIOD_FY1_NAME, PERIOD_FY2_NAME: @acct_period.PERIOD_FY2_NAME, PERIOD_ID: @acct_period.PERIOD_ID, PERIOD_LOCK10: @acct_period.PERIOD_LOCK10, PERIOD_LOCK11: @acct_period.PERIOD_LOCK11, PERIOD_LOCK12: @acct_period.PERIOD_LOCK12, PERIOD_LOCK13: @acct_period.PERIOD_LOCK13, PERIOD_LOCK14: @acct_period.PERIOD_LOCK14, PERIOD_LOCK15: @acct_period.PERIOD_LOCK15, PERIOD_LOCK16: @acct_period.PERIOD_LOCK16, PERIOD_LOCK17: @acct_period.PERIOD_LOCK17, PERIOD_LOCK18: @acct_period.PERIOD_LOCK18, PERIOD_LOCK19: @acct_period.PERIOD_LOCK19, PERIOD_LOCK1: @acct_period.PERIOD_LOCK1, PERIOD_LOCK20: @acct_period.PERIOD_LOCK20, PERIOD_LOCK21: @acct_period.PERIOD_LOCK21, PERIOD_LOCK22: @acct_period.PERIOD_LOCK22, PERIOD_LOCK23: @acct_period.PERIOD_LOCK23, PERIOD_LOCK24: @acct_period.PERIOD_LOCK24, PERIOD_LOCK2: @acct_period.PERIOD_LOCK2, PERIOD_LOCK3: @acct_period.PERIOD_LOCK3, PERIOD_LOCK4: @acct_period.PERIOD_LOCK4, PERIOD_LOCK5: @acct_period.PERIOD_LOCK5, PERIOD_LOCK6: @acct_period.PERIOD_LOCK6, PERIOD_LOCK7: @acct_period.PERIOD_LOCK7, PERIOD_LOCK8: @acct_period.PERIOD_LOCK8, PERIOD_LOCK9: @acct_period.PERIOD_LOCK9 }
    assert_redirected_to acct_period_path(assigns(:acct_period))
  end

  test "should destroy acct_period" do
    assert_difference('AcctPeriod.count', -1) do
      delete :destroy, id: @acct_period
    end

    assert_redirected_to acct_periods_path
  end
end

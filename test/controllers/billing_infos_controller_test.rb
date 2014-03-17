require 'test_helper'

class BillingInfosControllerTest < ActionController::TestCase
  setup do
    @billing_info = billing_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billing_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billing_info" do
    assert_difference('BillingInfo.count') do
      post :create, billing_info: { B_ACCT1: @billing_info.B_ACCT1, B_ACCT2: @billing_info.B_ACCT2, B_ACCT3: @billing_info.B_ACCT3, B_ACCT4: @billing_info.B_ACCT4, B_ACCT5: @billing_info.B_ACCT5, B_ACCT6: @billing_info.B_ACCT6, B_ACCT7: @billing_info.B_ACCT7, B_ACCT8: @billing_info.B_ACCT8, B_ACCT9: @billing_info.B_ACCT9, B_COST_CTR1: @billing_info.B_COST_CTR1, B_COST_CTR2: @billing_info.B_COST_CTR2, B_COST_CTR3: @billing_info.B_COST_CTR3, B_COST_CTR4: @billing_info.B_COST_CTR4, B_COST_CTR5: @billing_info.B_COST_CTR5, B_COST_CTR6: @billing_info.B_COST_CTR6, B_COST_CTR7: @billing_info.B_COST_CTR7, B_COST_CTR8: @billing_info.B_COST_CTR8, B_COST_CTR9: @billing_info.B_COST_CTR9, B_EDITED_BY: @billing_info.B_EDITED_BY, B_EDITED_WHEN: @billing_info.B_EDITED_WHEN, B_JOB_NUM: @billing_info.B_JOB_NUM, B_PERCENT1: @billing_info.B_PERCENT1, B_PERCENT2: @billing_info.B_PERCENT2, B_PERCENT3: @billing_info.B_PERCENT3, B_PERCENT4: @billing_info.B_PERCENT4, B_PERCENT5: @billing_info.B_PERCENT5, B_PERCENT6: @billing_info.B_PERCENT6, B_PERCENT7: @billing_info.B_PERCENT7, B_PERCENT8: @billing_info.B_PERCENT8, B_PERCENT9: @billing_info.B_PERCENT9, primaryKey: @billing_info.primaryKey }
    end

    assert_redirected_to billing_info_path(assigns(:billing_info))
  end

  test "should show billing_info" do
    get :show, id: @billing_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billing_info
    assert_response :success
  end

  test "should update billing_info" do
    patch :update, id: @billing_info, billing_info: { B_ACCT1: @billing_info.B_ACCT1, B_ACCT2: @billing_info.B_ACCT2, B_ACCT3: @billing_info.B_ACCT3, B_ACCT4: @billing_info.B_ACCT4, B_ACCT5: @billing_info.B_ACCT5, B_ACCT6: @billing_info.B_ACCT6, B_ACCT7: @billing_info.B_ACCT7, B_ACCT8: @billing_info.B_ACCT8, B_ACCT9: @billing_info.B_ACCT9, B_COST_CTR1: @billing_info.B_COST_CTR1, B_COST_CTR2: @billing_info.B_COST_CTR2, B_COST_CTR3: @billing_info.B_COST_CTR3, B_COST_CTR4: @billing_info.B_COST_CTR4, B_COST_CTR5: @billing_info.B_COST_CTR5, B_COST_CTR6: @billing_info.B_COST_CTR6, B_COST_CTR7: @billing_info.B_COST_CTR7, B_COST_CTR8: @billing_info.B_COST_CTR8, B_COST_CTR9: @billing_info.B_COST_CTR9, B_EDITED_BY: @billing_info.B_EDITED_BY, B_EDITED_WHEN: @billing_info.B_EDITED_WHEN, B_JOB_NUM: @billing_info.B_JOB_NUM, B_PERCENT1: @billing_info.B_PERCENT1, B_PERCENT2: @billing_info.B_PERCENT2, B_PERCENT3: @billing_info.B_PERCENT3, B_PERCENT4: @billing_info.B_PERCENT4, B_PERCENT5: @billing_info.B_PERCENT5, B_PERCENT6: @billing_info.B_PERCENT6, B_PERCENT7: @billing_info.B_PERCENT7, B_PERCENT8: @billing_info.B_PERCENT8, B_PERCENT9: @billing_info.B_PERCENT9, primaryKey: @billing_info.primaryKey }
    assert_redirected_to billing_info_path(assigns(:billing_info))
  end

  test "should destroy billing_info" do
    assert_difference('BillingInfo.count', -1) do
      delete :destroy, id: @billing_info
    end

    assert_redirected_to billing_infos_path
  end
end

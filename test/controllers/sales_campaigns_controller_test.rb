require 'test_helper'

class SalesCampaignsControllerTest < ActionController::TestCase
  setup do
    @sales_campaign = sales_campaigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_campaigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_campaign" do
    assert_difference('SalesCampaign.count') do
      post :create, sales_campaign: { SCAM_ACTION1: @sales_campaign.SCAM_ACTION1, SCAM_ACTION1_DAYS: @sales_campaign.SCAM_ACTION1_DAYS, SCAM_ACTION2: @sales_campaign.SCAM_ACTION2, SCAM_ACTION2_DAYS: @sales_campaign.SCAM_ACTION2_DAYS, SCAM_ACTION3: @sales_campaign.SCAM_ACTION3, SCAM_ACTION3_DAYS: @sales_campaign.SCAM_ACTION3_DAYS, SCAM_ACTION: @sales_campaign.SCAM_ACTION, SCAM_ADDED_BY: @sales_campaign.SCAM_ADDED_BY, SCAM_ADDED_WHEN: @sales_campaign.SCAM_ADDED_WHEN, SCAM_CLIENT_NUM: @sales_campaign.SCAM_CLIENT_NUM, SCAM_DESC: @sales_campaign.SCAM_DESC, SCAM_EDITED_BY: @sales_campaign.SCAM_EDITED_BY, SCAM_EDITED_WHEN: @sales_campaign.SCAM_EDITED_WHEN, SCAM_END: @sales_campaign.SCAM_END, SCAM_ID: @sales_campaign.SCAM_ID, SCAM_OK: @sales_campaign.SCAM_OK, SCAM_OK_BY: @sales_campaign.SCAM_OK_BY, SCAM_START: @sales_campaign.SCAM_START, primaryKey: @sales_campaign.primaryKey }
    end

    assert_redirected_to sales_campaign_path(assigns(:sales_campaign))
  end

  test "should show sales_campaign" do
    get :show, id: @sales_campaign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_campaign
    assert_response :success
  end

  test "should update sales_campaign" do
    patch :update, id: @sales_campaign, sales_campaign: { SCAM_ACTION1: @sales_campaign.SCAM_ACTION1, SCAM_ACTION1_DAYS: @sales_campaign.SCAM_ACTION1_DAYS, SCAM_ACTION2: @sales_campaign.SCAM_ACTION2, SCAM_ACTION2_DAYS: @sales_campaign.SCAM_ACTION2_DAYS, SCAM_ACTION3: @sales_campaign.SCAM_ACTION3, SCAM_ACTION3_DAYS: @sales_campaign.SCAM_ACTION3_DAYS, SCAM_ACTION: @sales_campaign.SCAM_ACTION, SCAM_ADDED_BY: @sales_campaign.SCAM_ADDED_BY, SCAM_ADDED_WHEN: @sales_campaign.SCAM_ADDED_WHEN, SCAM_CLIENT_NUM: @sales_campaign.SCAM_CLIENT_NUM, SCAM_DESC: @sales_campaign.SCAM_DESC, SCAM_EDITED_BY: @sales_campaign.SCAM_EDITED_BY, SCAM_EDITED_WHEN: @sales_campaign.SCAM_EDITED_WHEN, SCAM_END: @sales_campaign.SCAM_END, SCAM_ID: @sales_campaign.SCAM_ID, SCAM_OK: @sales_campaign.SCAM_OK, SCAM_OK_BY: @sales_campaign.SCAM_OK_BY, SCAM_START: @sales_campaign.SCAM_START, primaryKey: @sales_campaign.primaryKey }
    assert_redirected_to sales_campaign_path(assigns(:sales_campaign))
  end

  test "should destroy sales_campaign" do
    assert_difference('SalesCampaign.count', -1) do
      delete :destroy, id: @sales_campaign
    end

    assert_redirected_to sales_campaigns_path
  end
end

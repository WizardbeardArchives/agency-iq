require 'test_helper'

class ProposalsControllerTest < ActionController::TestCase
  setup do
    @proposal = proposals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proposal" do
    assert_difference('Proposal.count') do
      post :create, proposal: { PROPS_ADDED_BY: @proposal.PROPS_ADDED_BY, PROPS_APPROVED: @proposal.PROPS_APPROVED, PROPS_APPROVED_BY: @proposal.PROPS_APPROVED_BY, PROPS_APPROVED_DATE: @proposal.PROPS_APPROVED_DATE, PROPS_BUDGET: @proposal.PROPS_BUDGET, PROPS_CB10: @proposal.PROPS_CB10, PROPS_CB11: @proposal.PROPS_CB11, PROPS_CB12: @proposal.PROPS_CB12, PROPS_CB13: @proposal.PROPS_CB13, PROPS_CB14: @proposal.PROPS_CB14, PROPS_CB15: @proposal.PROPS_CB15, PROPS_CB1: @proposal.PROPS_CB1, PROPS_CB2: @proposal.PROPS_CB2, PROPS_CB3: @proposal.PROPS_CB3, PROPS_CB4: @proposal.PROPS_CB4, PROPS_CB5: @proposal.PROPS_CB5, PROPS_CB6: @proposal.PROPS_CB6, PROPS_CB7: @proposal.PROPS_CB7, PROPS_CB8: @proposal.PROPS_CB8, PROPS_CB9: @proposal.PROPS_CB9, PROPS_CHARGE_NUM: @proposal.PROPS_CHARGE_NUM, PROPS_CLIENT_NUM: @proposal.PROPS_CLIENT_NUM, PROPS_DATE_ADDED: @proposal.PROPS_DATE_ADDED, PROPS_DESC: @proposal.PROPS_DESC, PROPS_DUE_DATE: @proposal.PROPS_DUE_DATE, PROPS_EDITED_BY: @proposal.PROPS_EDITED_BY, PROPS_EDITED_WHEN: @proposal.PROPS_EDITED_WHEN, PROPS_NAME: @proposal.PROPS_NAME, PROPS_OK_BY: @proposal.PROPS_OK_BY, PROPS_OK_DATE: @proposal.PROPS_OK_DATE, PROPS_REQUESTOR: @proposal.PROPS_REQUESTOR, PROPS_REVIEWER: @proposal.PROPS_REVIEWER, PROPS_START_DATE: @proposal.PROPS_START_DATE, PROPS_STATUS: @proposal.PROPS_STATUS, PROPS_STATUS_DESC: @proposal.PROPS_STATUS_DESC, PROPS_TYPE: @proposal.PROPS_TYPE, primaryKey: @proposal.primaryKey }
    end

    assert_redirected_to proposal_path(assigns(:proposal))
  end

  test "should show proposal" do
    get :show, id: @proposal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proposal
    assert_response :success
  end

  test "should update proposal" do
    patch :update, id: @proposal, proposal: { PROPS_ADDED_BY: @proposal.PROPS_ADDED_BY, PROPS_APPROVED: @proposal.PROPS_APPROVED, PROPS_APPROVED_BY: @proposal.PROPS_APPROVED_BY, PROPS_APPROVED_DATE: @proposal.PROPS_APPROVED_DATE, PROPS_BUDGET: @proposal.PROPS_BUDGET, PROPS_CB10: @proposal.PROPS_CB10, PROPS_CB11: @proposal.PROPS_CB11, PROPS_CB12: @proposal.PROPS_CB12, PROPS_CB13: @proposal.PROPS_CB13, PROPS_CB14: @proposal.PROPS_CB14, PROPS_CB15: @proposal.PROPS_CB15, PROPS_CB1: @proposal.PROPS_CB1, PROPS_CB2: @proposal.PROPS_CB2, PROPS_CB3: @proposal.PROPS_CB3, PROPS_CB4: @proposal.PROPS_CB4, PROPS_CB5: @proposal.PROPS_CB5, PROPS_CB6: @proposal.PROPS_CB6, PROPS_CB7: @proposal.PROPS_CB7, PROPS_CB8: @proposal.PROPS_CB8, PROPS_CB9: @proposal.PROPS_CB9, PROPS_CHARGE_NUM: @proposal.PROPS_CHARGE_NUM, PROPS_CLIENT_NUM: @proposal.PROPS_CLIENT_NUM, PROPS_DATE_ADDED: @proposal.PROPS_DATE_ADDED, PROPS_DESC: @proposal.PROPS_DESC, PROPS_DUE_DATE: @proposal.PROPS_DUE_DATE, PROPS_EDITED_BY: @proposal.PROPS_EDITED_BY, PROPS_EDITED_WHEN: @proposal.PROPS_EDITED_WHEN, PROPS_NAME: @proposal.PROPS_NAME, PROPS_OK_BY: @proposal.PROPS_OK_BY, PROPS_OK_DATE: @proposal.PROPS_OK_DATE, PROPS_REQUESTOR: @proposal.PROPS_REQUESTOR, PROPS_REVIEWER: @proposal.PROPS_REVIEWER, PROPS_START_DATE: @proposal.PROPS_START_DATE, PROPS_STATUS: @proposal.PROPS_STATUS, PROPS_STATUS_DESC: @proposal.PROPS_STATUS_DESC, PROPS_TYPE: @proposal.PROPS_TYPE, primaryKey: @proposal.primaryKey }
    assert_redirected_to proposal_path(assigns(:proposal))
  end

  test "should destroy proposal" do
    assert_difference('Proposal.count', -1) do
      delete :destroy, id: @proposal
    end

    assert_redirected_to proposals_path
  end
end

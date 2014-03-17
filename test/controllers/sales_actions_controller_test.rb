require 'test_helper'

class SalesActionsControllerTest < ActionController::TestCase
  setup do
    @sales_action = sales_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_action" do
    assert_difference('SalesAction.count') do
      post :create, sales_action: { SACT_ADDED_BY: @sales_action.SACT_ADDED_BY, SACT_ADDED_WHEN: @sales_action.SACT_ADDED_WHEN, SACT_BODY: @sales_action.SACT_BODY, SACT_CAMPAIGN: @sales_action.SACT_CAMPAIGN, SACT_CLIENT_NUM: @sales_action.SACT_CLIENT_NUM, SACT_CON__SEQ: @sales_action.SACT_CON__SEQ, SACT_DATE: @sales_action.SACT_DATE, SACT_EDITED_BY: @sales_action.SACT_EDITED_BY, SACT_EDITED_WHEN: @sales_action.SACT_EDITED_WHEN, SACT_FROM_STAFF: @sales_action.SACT_FROM_STAFF, SACT_KIND: @sales_action.SACT_KIND, SACT_LENGTH: @sales_action.SACT_LENGTH, SACT_PRINTED: @sales_action.SACT_PRINTED, SACT_PRINTED_BY: @sales_action.SACT_PRINTED_BY, SACT_PRIORITY: @sales_action.SACT_PRIORITY, SACT_PS: @sales_action.SACT_PS, SACT_SLTR__SEQ: @sales_action.SACT_SLTR__SEQ, SACT_SUBJECT: @sales_action.SACT_SUBJECT, SACT_TIME: @sales_action.SACT_TIME, primaryKey: @sales_action.primaryKey }
    end

    assert_redirected_to sales_action_path(assigns(:sales_action))
  end

  test "should show sales_action" do
    get :show, id: @sales_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_action
    assert_response :success
  end

  test "should update sales_action" do
    patch :update, id: @sales_action, sales_action: { SACT_ADDED_BY: @sales_action.SACT_ADDED_BY, SACT_ADDED_WHEN: @sales_action.SACT_ADDED_WHEN, SACT_BODY: @sales_action.SACT_BODY, SACT_CAMPAIGN: @sales_action.SACT_CAMPAIGN, SACT_CLIENT_NUM: @sales_action.SACT_CLIENT_NUM, SACT_CON__SEQ: @sales_action.SACT_CON__SEQ, SACT_DATE: @sales_action.SACT_DATE, SACT_EDITED_BY: @sales_action.SACT_EDITED_BY, SACT_EDITED_WHEN: @sales_action.SACT_EDITED_WHEN, SACT_FROM_STAFF: @sales_action.SACT_FROM_STAFF, SACT_KIND: @sales_action.SACT_KIND, SACT_LENGTH: @sales_action.SACT_LENGTH, SACT_PRINTED: @sales_action.SACT_PRINTED, SACT_PRINTED_BY: @sales_action.SACT_PRINTED_BY, SACT_PRIORITY: @sales_action.SACT_PRIORITY, SACT_PS: @sales_action.SACT_PS, SACT_SLTR__SEQ: @sales_action.SACT_SLTR__SEQ, SACT_SUBJECT: @sales_action.SACT_SUBJECT, SACT_TIME: @sales_action.SACT_TIME, primaryKey: @sales_action.primaryKey }
    assert_redirected_to sales_action_path(assigns(:sales_action))
  end

  test "should destroy sales_action" do
    assert_difference('SalesAction.count', -1) do
      delete :destroy, id: @sales_action
    end

    assert_redirected_to sales_actions_path
  end
end

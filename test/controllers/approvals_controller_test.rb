require 'test_helper'

class ApprovalsControllerTest < ActionController::TestCase
  setup do
    @approval = approvals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:approvals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create approval" do
    assert_difference('Approval.count') do
      post :create, approval: { APPR_ADDED_BY: @approval.APPR_ADDED_BY, APPR_CHANGES: @approval.APPR_CHANGES, APPR_CLIENT_NUM: @approval.APPR_CLIENT_NUM, APPR_DATE_ADDED: @approval.APPR_DATE_ADDED, APPR_DATE_EXPIRES: @approval.APPR_DATE_EXPIRES, APPR_DRAFT: @approval.APPR_DRAFT, APPR_EDITED_BY: @approval.APPR_EDITED_BY, APPR_EDITED_WHEN: @approval.APPR_EDITED_WHEN, APPR_FILE_PATH: @approval.APPR_FILE_PATH, APPR_ID: @approval.APPR_ID, APPR_INSTRUCTIONS: @approval.APPR_INSTRUCTIONS, APPR_JOB_NUM: @approval.APPR_JOB_NUM, APPR_KIND: @approval.APPR_KIND, APPR_NEEDED_BY: @approval.APPR_NEEDED_BY, APPR_NEEDED_BY_NAME: @approval.APPR_NEEDED_BY_NAME, APPR_NEEDED_WHEN: @approval.APPR_NEEDED_WHEN, APPR_OKD_BY: @approval.APPR_OKD_BY, APPR_OKD_DATE: @approval.APPR_OKD_DATE, APPR_REF_NUM: @approval.APPR_REF_NUM, APPR_REPLY_TO: @approval.APPR_REPLY_TO, APPR_RUSH: @approval.APPR_RUSH, APPR_SENT_DATE: @approval.APPR_SENT_DATE, APPR_STATUS: @approval.APPR_STATUS, APPR_STATUS_NOTE: @approval.APPR_STATUS_NOTE, APPR_STEP_DESC: @approval.APPR_STEP_DESC, primaryKey: @approval.primaryKey }
    end

    assert_redirected_to approval_path(assigns(:approval))
  end

  test "should show approval" do
    get :show, id: @approval
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @approval
    assert_response :success
  end

  test "should update approval" do
    patch :update, id: @approval, approval: { APPR_ADDED_BY: @approval.APPR_ADDED_BY, APPR_CHANGES: @approval.APPR_CHANGES, APPR_CLIENT_NUM: @approval.APPR_CLIENT_NUM, APPR_DATE_ADDED: @approval.APPR_DATE_ADDED, APPR_DATE_EXPIRES: @approval.APPR_DATE_EXPIRES, APPR_DRAFT: @approval.APPR_DRAFT, APPR_EDITED_BY: @approval.APPR_EDITED_BY, APPR_EDITED_WHEN: @approval.APPR_EDITED_WHEN, APPR_FILE_PATH: @approval.APPR_FILE_PATH, APPR_ID: @approval.APPR_ID, APPR_INSTRUCTIONS: @approval.APPR_INSTRUCTIONS, APPR_JOB_NUM: @approval.APPR_JOB_NUM, APPR_KIND: @approval.APPR_KIND, APPR_NEEDED_BY: @approval.APPR_NEEDED_BY, APPR_NEEDED_BY_NAME: @approval.APPR_NEEDED_BY_NAME, APPR_NEEDED_WHEN: @approval.APPR_NEEDED_WHEN, APPR_OKD_BY: @approval.APPR_OKD_BY, APPR_OKD_DATE: @approval.APPR_OKD_DATE, APPR_REF_NUM: @approval.APPR_REF_NUM, APPR_REPLY_TO: @approval.APPR_REPLY_TO, APPR_RUSH: @approval.APPR_RUSH, APPR_SENT_DATE: @approval.APPR_SENT_DATE, APPR_STATUS: @approval.APPR_STATUS, APPR_STATUS_NOTE: @approval.APPR_STATUS_NOTE, APPR_STEP_DESC: @approval.APPR_STEP_DESC, primaryKey: @approval.primaryKey }
    assert_redirected_to approval_path(assigns(:approval))
  end

  test "should destroy approval" do
    assert_difference('Approval.count', -1) do
      delete :destroy, id: @approval
    end

    assert_redirected_to approvals_path
  end
end

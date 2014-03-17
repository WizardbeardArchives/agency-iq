require 'test_helper'

class StatusCodesControllerTest < ActionController::TestCase
  setup do
    @status_code = status_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_code" do
    assert_difference('StatusCode.count') do
      post :create, status_code: { STATUS_ACCT: @status_code.STATUS_ACCT, STATUS_ACTIVE: @status_code.STATUS_ACTIVE, STATUS_ADDED_BY: @status_code.STATUS_ADDED_BY, STATUS_ADDED_WHEN: @status_code.STATUS_ADDED_WHEN, STATUS_ALERT: @status_code.STATUS_ALERT, STATUS_ALERT_BUTTON: @status_code.STATUS_ALERT_BUTTON, STATUS_BILL_ALERT: @status_code.STATUS_BILL_ALERT, STATUS_CAT: @status_code.STATUS_CAT, STATUS_COLOR: @status_code.STATUS_COLOR, STATUS_DESC: @status_code.STATUS_DESC, STATUS_EDITED_BY: @status_code.STATUS_EDITED_BY, STATUS_EDITED_WHEN: @status_code.STATUS_EDITED_WHEN, STATUS_MAIL_BCC: @status_code.STATUS_MAIL_BCC, STATUS_MAIL_CC: @status_code.STATUS_MAIL_CC, STATUS_MAIL_MSG: @status_code.STATUS_MAIL_MSG, STATUS_MAIL_TO: @status_code.STATUS_MAIL_TO, STATUS_NUM: @status_code.STATUS_NUM, STATUS_PROD: @status_code.STATUS_PROD, STATUS_PROD_ALERT: @status_code.STATUS_PROD_ALERT, STATUS_STOP: @status_code.STATUS_STOP, primaryKey: @status_code.primaryKey }
    end

    assert_redirected_to status_code_path(assigns(:status_code))
  end

  test "should show status_code" do
    get :show, id: @status_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_code
    assert_response :success
  end

  test "should update status_code" do
    patch :update, id: @status_code, status_code: { STATUS_ACCT: @status_code.STATUS_ACCT, STATUS_ACTIVE: @status_code.STATUS_ACTIVE, STATUS_ADDED_BY: @status_code.STATUS_ADDED_BY, STATUS_ADDED_WHEN: @status_code.STATUS_ADDED_WHEN, STATUS_ALERT: @status_code.STATUS_ALERT, STATUS_ALERT_BUTTON: @status_code.STATUS_ALERT_BUTTON, STATUS_BILL_ALERT: @status_code.STATUS_BILL_ALERT, STATUS_CAT: @status_code.STATUS_CAT, STATUS_COLOR: @status_code.STATUS_COLOR, STATUS_DESC: @status_code.STATUS_DESC, STATUS_EDITED_BY: @status_code.STATUS_EDITED_BY, STATUS_EDITED_WHEN: @status_code.STATUS_EDITED_WHEN, STATUS_MAIL_BCC: @status_code.STATUS_MAIL_BCC, STATUS_MAIL_CC: @status_code.STATUS_MAIL_CC, STATUS_MAIL_MSG: @status_code.STATUS_MAIL_MSG, STATUS_MAIL_TO: @status_code.STATUS_MAIL_TO, STATUS_NUM: @status_code.STATUS_NUM, STATUS_PROD: @status_code.STATUS_PROD, STATUS_PROD_ALERT: @status_code.STATUS_PROD_ALERT, STATUS_STOP: @status_code.STATUS_STOP, primaryKey: @status_code.primaryKey }
    assert_redirected_to status_code_path(assigns(:status_code))
  end

  test "should destroy status_code" do
    assert_difference('StatusCode.count', -1) do
      delete :destroy, id: @status_code
    end

    assert_redirected_to status_codes_path
  end
end

require 'test_helper'

class HistoriesControllerTest < ActionController::TestCase
  setup do
    @history = histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history" do
    assert_difference('History.count') do
      post :create, history: { H_ADDED_BY: @history.H_ADDED_BY, H_ADDED_WHEN: @history.H_ADDED_WHEN, H_DATE: @history.H_DATE, H_DESC: @history.H_DESC, H_EDITED_BY: @history.H_EDITED_BY, H_EDITED_WHEN: @history.H_EDITED_WHEN, H_FOR: @history.H_FOR, H_JOB_NUM: @history.H_JOB_NUM, H_MAIL_TO: @history.H_MAIL_TO, H_MANUAL: @history.H_MANUAL, H_NUM: @history.H_NUM, H_RESOLVED: @history.H_RESOLVED, H_USER_NOTE: @history.H_USER_NOTE, H_WHO: @history.H_WHO, primaryKey: @history.primaryKey }
    end

    assert_redirected_to history_path(assigns(:history))
  end

  test "should show history" do
    get :show, id: @history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @history
    assert_response :success
  end

  test "should update history" do
    patch :update, id: @history, history: { H_ADDED_BY: @history.H_ADDED_BY, H_ADDED_WHEN: @history.H_ADDED_WHEN, H_DATE: @history.H_DATE, H_DESC: @history.H_DESC, H_EDITED_BY: @history.H_EDITED_BY, H_EDITED_WHEN: @history.H_EDITED_WHEN, H_FOR: @history.H_FOR, H_JOB_NUM: @history.H_JOB_NUM, H_MAIL_TO: @history.H_MAIL_TO, H_MANUAL: @history.H_MANUAL, H_NUM: @history.H_NUM, H_RESOLVED: @history.H_RESOLVED, H_USER_NOTE: @history.H_USER_NOTE, H_WHO: @history.H_WHO, primaryKey: @history.primaryKey }
    assert_redirected_to history_path(assigns(:history))
  end

  test "should destroy history" do
    assert_difference('History.count', -1) do
      delete :destroy, id: @history
    end

    assert_redirected_to histories_path
  end
end

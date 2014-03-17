require 'test_helper'

class MlinkLogsControllerTest < ActionController::TestCase
  setup do
    @mlink_log = mlink_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mlink_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mlink_log" do
    assert_difference('MlinkLog.count') do
      post :create, mlink_log: { MLOG_ADDED_BY: @mlink_log.MLOG_ADDED_BY, MLOG_BUYID: @mlink_log.MLOG_BUYID, MLOG_DATE: @mlink_log.MLOG_DATE, MLOG_STATUS: @mlink_log.MLOG_STATUS, primaryKey: @mlink_log.primaryKey }
    end

    assert_redirected_to mlink_log_path(assigns(:mlink_log))
  end

  test "should show mlink_log" do
    get :show, id: @mlink_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mlink_log
    assert_response :success
  end

  test "should update mlink_log" do
    patch :update, id: @mlink_log, mlink_log: { MLOG_ADDED_BY: @mlink_log.MLOG_ADDED_BY, MLOG_BUYID: @mlink_log.MLOG_BUYID, MLOG_DATE: @mlink_log.MLOG_DATE, MLOG_STATUS: @mlink_log.MLOG_STATUS, primaryKey: @mlink_log.primaryKey }
    assert_redirected_to mlink_log_path(assigns(:mlink_log))
  end

  test "should destroy mlink_log" do
    assert_difference('MlinkLog.count', -1) do
      delete :destroy, id: @mlink_log
    end

    assert_redirected_to mlink_logs_path
  end
end

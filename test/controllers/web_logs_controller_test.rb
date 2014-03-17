require 'test_helper'

class WebLogsControllerTest < ActionController::TestCase
  setup do
    @web_log = web_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_log" do
    assert_difference('WebLog.count') do
      post :create, web_log: { WLOG_DATE: @web_log.WLOG_DATE, WLOG_DATETIME: @web_log.WLOG_DATETIME, WLOG_DAY: @web_log.WLOG_DAY, WLOG_EVENT: @web_log.WLOG_EVENT, WLOG_HOUR: @web_log.WLOG_HOUR, WLOG_IP: @web_log.WLOG_IP, WLOG_PAGE: @web_log.WLOG_PAGE, WLOG_STATUS: @web_log.WLOG_STATUS, WLOG_TIME: @web_log.WLOG_TIME, WLOG_USER: @web_log.WLOG_USER, primaryKey: @web_log.primaryKey }
    end

    assert_redirected_to web_log_path(assigns(:web_log))
  end

  test "should show web_log" do
    get :show, id: @web_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_log
    assert_response :success
  end

  test "should update web_log" do
    patch :update, id: @web_log, web_log: { WLOG_DATE: @web_log.WLOG_DATE, WLOG_DATETIME: @web_log.WLOG_DATETIME, WLOG_DAY: @web_log.WLOG_DAY, WLOG_EVENT: @web_log.WLOG_EVENT, WLOG_HOUR: @web_log.WLOG_HOUR, WLOG_IP: @web_log.WLOG_IP, WLOG_PAGE: @web_log.WLOG_PAGE, WLOG_STATUS: @web_log.WLOG_STATUS, WLOG_TIME: @web_log.WLOG_TIME, WLOG_USER: @web_log.WLOG_USER, primaryKey: @web_log.primaryKey }
    assert_redirected_to web_log_path(assigns(:web_log))
  end

  test "should destroy web_log" do
    assert_difference('WebLog.count', -1) do
      delete :destroy, id: @web_log
    end

    assert_redirected_to web_logs_path
  end
end

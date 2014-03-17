require 'test_helper'

class WebIpLogsControllerTest < ActionController::TestCase
  setup do
    @web_ip_log = web_ip_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_ip_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_ip_log" do
    assert_difference('WebIpLog.count') do
      post :create, web_ip_log: { WIP_DATE: @web_ip_log.WIP_DATE, WIP_DATETIME: @web_ip_log.WIP_DATETIME, WIP_IP: @web_ip_log.WIP_IP, WIP_NAME: @web_ip_log.WIP_NAME, primaryKey: @web_ip_log.primaryKey }
    end

    assert_redirected_to web_ip_log_path(assigns(:web_ip_log))
  end

  test "should show web_ip_log" do
    get :show, id: @web_ip_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_ip_log
    assert_response :success
  end

  test "should update web_ip_log" do
    patch :update, id: @web_ip_log, web_ip_log: { WIP_DATE: @web_ip_log.WIP_DATE, WIP_DATETIME: @web_ip_log.WIP_DATETIME, WIP_IP: @web_ip_log.WIP_IP, WIP_NAME: @web_ip_log.WIP_NAME, primaryKey: @web_ip_log.primaryKey }
    assert_redirected_to web_ip_log_path(assigns(:web_ip_log))
  end

  test "should destroy web_ip_log" do
    assert_difference('WebIpLog.count', -1) do
      delete :destroy, id: @web_ip_log
    end

    assert_redirected_to web_ip_logs_path
  end
end

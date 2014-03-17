require 'test_helper'

class CalendarsControllerTest < ActionController::TestCase
  setup do
    @calendar = calendars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calendars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calendar" do
    assert_difference('Calendar.count') do
      post :create, calendar: { CAL_ADDED_BY: @calendar.CAL_ADDED_BY, CAL_AMT: @calendar.CAL_AMT, CAL_CLIENT_NUM: @calendar.CAL_CLIENT_NUM, CAL_DATE: @calendar.CAL_DATE, CAL_DESC: @calendar.CAL_DESC, CAL_ID: @calendar.CAL_ID, CAL_JOB_NUM: @calendar.CAL_JOB_NUM, CAL_KIND: @calendar.CAL_KIND, CAL_LOCATION: @calendar.CAL_LOCATION, CAL_MAIL_TO: @calendar.CAL_MAIL_TO, CAL_NOTIFIED: @calendar.CAL_NOTIFIED, CAL_NOTIFY_DAYS: @calendar.CAL_NOTIFY_DAYS, CAL_PRIORITY: @calendar.CAL_PRIORITY, CAL_STATUS: @calendar.CAL_STATUS, CAL_SUBJECT: @calendar.CAL_SUBJECT, CAL_TASK: @calendar.CAL_TASK, CAL_TIME: @calendar.CAL_TIME, CAL_TO_FROM: @calendar.CAL_TO_FROM, primaryKey: @calendar.primaryKey }
    end

    assert_redirected_to calendar_path(assigns(:calendar))
  end

  test "should show calendar" do
    get :show, id: @calendar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calendar
    assert_response :success
  end

  test "should update calendar" do
    patch :update, id: @calendar, calendar: { CAL_ADDED_BY: @calendar.CAL_ADDED_BY, CAL_AMT: @calendar.CAL_AMT, CAL_CLIENT_NUM: @calendar.CAL_CLIENT_NUM, CAL_DATE: @calendar.CAL_DATE, CAL_DESC: @calendar.CAL_DESC, CAL_ID: @calendar.CAL_ID, CAL_JOB_NUM: @calendar.CAL_JOB_NUM, CAL_KIND: @calendar.CAL_KIND, CAL_LOCATION: @calendar.CAL_LOCATION, CAL_MAIL_TO: @calendar.CAL_MAIL_TO, CAL_NOTIFIED: @calendar.CAL_NOTIFIED, CAL_NOTIFY_DAYS: @calendar.CAL_NOTIFY_DAYS, CAL_PRIORITY: @calendar.CAL_PRIORITY, CAL_STATUS: @calendar.CAL_STATUS, CAL_SUBJECT: @calendar.CAL_SUBJECT, CAL_TASK: @calendar.CAL_TASK, CAL_TIME: @calendar.CAL_TIME, CAL_TO_FROM: @calendar.CAL_TO_FROM, primaryKey: @calendar.primaryKey }
    assert_redirected_to calendar_path(assigns(:calendar))
  end

  test "should destroy calendar" do
    assert_difference('Calendar.count', -1) do
      delete :destroy, id: @calendar
    end

    assert_redirected_to calendars_path
  end
end

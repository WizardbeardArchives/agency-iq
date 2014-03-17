require 'test_helper'

class MeetingsControllerTest < ActionController::TestCase
  setup do
    @meeting = meetings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meetings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meeting" do
    assert_difference('Meeting.count') do
      post :create, meeting: { MEET_ACTION_ITEMS: @meeting.MEET_ACTION_ITEMS, MEET_ADDED_BY: @meeting.MEET_ADDED_BY, MEET_ATTENDEES: @meeting.MEET_ATTENDEES, MEET_CC: @meeting.MEET_CC, MEET_CLIENT_NUM: @meeting.MEET_CLIENT_NUM, MEET_COORD: @meeting.MEET_COORD, MEET_DATE: @meeting.MEET_DATE, MEET_DIRECTIONS: @meeting.MEET_DIRECTIONS, MEET_DISCUSSION: @meeting.MEET_DISCUSSION, MEET_DURATION: @meeting.MEET_DURATION, MEET_EDITED_BY: @meeting.MEET_EDITED_BY, MEET_EDITED_WHEN: @meeting.MEET_EDITED_WHEN, MEET_EMAIL_TO: @meeting.MEET_EMAIL_TO, MEET_FWD_SUM: @meeting.MEET_FWD_SUM, MEET_JOB_NUM: @meeting.MEET_JOB_NUM, MEET_LOCATION: @meeting.MEET_LOCATION, MEET_NEXT_DATE: @meeting.MEET_NEXT_DATE, MEET_NOTIFY: @meeting.MEET_NOTIFY, MEET_OBJECTIVE: @meeting.MEET_OBJECTIVE, MEET_STATUS: @meeting.MEET_STATUS, MEET_TIME: @meeting.MEET_TIME, MEET_TOPIC: @meeting.MEET_TOPIC, primaryKey: @meeting.primaryKey }
    end

    assert_redirected_to meeting_path(assigns(:meeting))
  end

  test "should show meeting" do
    get :show, id: @meeting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meeting
    assert_response :success
  end

  test "should update meeting" do
    patch :update, id: @meeting, meeting: { MEET_ACTION_ITEMS: @meeting.MEET_ACTION_ITEMS, MEET_ADDED_BY: @meeting.MEET_ADDED_BY, MEET_ATTENDEES: @meeting.MEET_ATTENDEES, MEET_CC: @meeting.MEET_CC, MEET_CLIENT_NUM: @meeting.MEET_CLIENT_NUM, MEET_COORD: @meeting.MEET_COORD, MEET_DATE: @meeting.MEET_DATE, MEET_DIRECTIONS: @meeting.MEET_DIRECTIONS, MEET_DISCUSSION: @meeting.MEET_DISCUSSION, MEET_DURATION: @meeting.MEET_DURATION, MEET_EDITED_BY: @meeting.MEET_EDITED_BY, MEET_EDITED_WHEN: @meeting.MEET_EDITED_WHEN, MEET_EMAIL_TO: @meeting.MEET_EMAIL_TO, MEET_FWD_SUM: @meeting.MEET_FWD_SUM, MEET_JOB_NUM: @meeting.MEET_JOB_NUM, MEET_LOCATION: @meeting.MEET_LOCATION, MEET_NEXT_DATE: @meeting.MEET_NEXT_DATE, MEET_NOTIFY: @meeting.MEET_NOTIFY, MEET_OBJECTIVE: @meeting.MEET_OBJECTIVE, MEET_STATUS: @meeting.MEET_STATUS, MEET_TIME: @meeting.MEET_TIME, MEET_TOPIC: @meeting.MEET_TOPIC, primaryKey: @meeting.primaryKey }
    assert_redirected_to meeting_path(assigns(:meeting))
  end

  test "should destroy meeting" do
    assert_difference('Meeting.count', -1) do
      delete :destroy, id: @meeting
    end

    assert_redirected_to meetings_path
  end
end

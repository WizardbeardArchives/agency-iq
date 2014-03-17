require 'test_helper'

class ScheduleHeadersControllerTest < ActionController::TestCase
  setup do
    @schedule_header = schedule_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_header" do
    assert_difference('ScheduleHeader.count') do
      post :create, schedule_header: { SH_10: @schedule_header.SH_10, SH_11: @schedule_header.SH_11, SH_12: @schedule_header.SH_12, SH_1: @schedule_header.SH_1, SH_2: @schedule_header.SH_2, SH_3: @schedule_header.SH_3, SH_4: @schedule_header.SH_4, SH_5: @schedule_header.SH_5, SH_6: @schedule_header.SH_6, SH_7: @schedule_header.SH_7, SH_8: @schedule_header.SH_8, SH_9: @schedule_header.SH_9, SH_CLIENT_NUM: @schedule_header.SH_CLIENT_NUM, SH_DATE1: @schedule_header.SH_DATE1, SH_DATE2: @schedule_header.SH_DATE2, SH_JOB_NUM: @schedule_header.SH_JOB_NUM, primaryKey: @schedule_header.primaryKey }
    end

    assert_redirected_to schedule_header_path(assigns(:schedule_header))
  end

  test "should show schedule_header" do
    get :show, id: @schedule_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule_header
    assert_response :success
  end

  test "should update schedule_header" do
    patch :update, id: @schedule_header, schedule_header: { SH_10: @schedule_header.SH_10, SH_11: @schedule_header.SH_11, SH_12: @schedule_header.SH_12, SH_1: @schedule_header.SH_1, SH_2: @schedule_header.SH_2, SH_3: @schedule_header.SH_3, SH_4: @schedule_header.SH_4, SH_5: @schedule_header.SH_5, SH_6: @schedule_header.SH_6, SH_7: @schedule_header.SH_7, SH_8: @schedule_header.SH_8, SH_9: @schedule_header.SH_9, SH_CLIENT_NUM: @schedule_header.SH_CLIENT_NUM, SH_DATE1: @schedule_header.SH_DATE1, SH_DATE2: @schedule_header.SH_DATE2, SH_JOB_NUM: @schedule_header.SH_JOB_NUM, primaryKey: @schedule_header.primaryKey }
    assert_redirected_to schedule_header_path(assigns(:schedule_header))
  end

  test "should destroy schedule_header" do
    assert_difference('ScheduleHeader.count', -1) do
      delete :destroy, id: @schedule_header
    end

    assert_redirected_to schedule_headers_path
  end
end

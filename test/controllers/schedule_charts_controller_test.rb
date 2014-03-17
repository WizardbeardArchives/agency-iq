require 'test_helper'

class ScheduleChartsControllerTest < ActionController::TestCase
  setup do
    @schedule_chart = schedule_charts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_charts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_chart" do
    assert_difference('ScheduleChart.count') do
      post :create, schedule_chart: { SC_10: @schedule_chart.SC_10, SC_11: @schedule_chart.SC_11, SC_12: @schedule_chart.SC_12, SC_1: @schedule_chart.SC_1, SC_2: @schedule_chart.SC_2, SC_3: @schedule_chart.SC_3, SC_4: @schedule_chart.SC_4, SC_5: @schedule_chart.SC_5, SC_6: @schedule_chart.SC_6, SC_7: @schedule_chart.SC_7, SC_8: @schedule_chart.SC_8, SC_9: @schedule_chart.SC_9, SC_CLIENT_NUM: @schedule_chart.SC_CLIENT_NUM, SC_J_NUM: @schedule_chart.SC_J_NUM, primaryKey: @schedule_chart.primaryKey }
    end

    assert_redirected_to schedule_chart_path(assigns(:schedule_chart))
  end

  test "should show schedule_chart" do
    get :show, id: @schedule_chart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule_chart
    assert_response :success
  end

  test "should update schedule_chart" do
    patch :update, id: @schedule_chart, schedule_chart: { SC_10: @schedule_chart.SC_10, SC_11: @schedule_chart.SC_11, SC_12: @schedule_chart.SC_12, SC_1: @schedule_chart.SC_1, SC_2: @schedule_chart.SC_2, SC_3: @schedule_chart.SC_3, SC_4: @schedule_chart.SC_4, SC_5: @schedule_chart.SC_5, SC_6: @schedule_chart.SC_6, SC_7: @schedule_chart.SC_7, SC_8: @schedule_chart.SC_8, SC_9: @schedule_chart.SC_9, SC_CLIENT_NUM: @schedule_chart.SC_CLIENT_NUM, SC_J_NUM: @schedule_chart.SC_J_NUM, primaryKey: @schedule_chart.primaryKey }
    assert_redirected_to schedule_chart_path(assigns(:schedule_chart))
  end

  test "should destroy schedule_chart" do
    assert_difference('ScheduleChart.count', -1) do
      delete :destroy, id: @schedule_chart
    end

    assert_redirected_to schedule_charts_path
  end
end

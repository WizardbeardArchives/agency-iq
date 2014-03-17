require 'test_helper'

class TimeImportsControllerTest < ActionController::TestCase
  setup do
    @time_import = time_imports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_imports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_import" do
    assert_difference('TimeImport.count') do
      post :create, time_import: { TM_BAD: @time_import.TM_BAD, TM_BILLABLE: @time_import.TM_BILLABLE, TM_BILL_RATE: @time_import.TM_BILL_RATE, TM_CLIENT_NUM: @time_import.TM_CLIENT_NUM, TM_COST_RATE: @time_import.TM_COST_RATE, TM_DATE: @time_import.TM_DATE, TM_DESC: @time_import.TM_DESC, TM_HOURS: @time_import.TM_HOURS, TM_JOB_NUM: @time_import.TM_JOB_NUM, TM_OT: @time_import.TM_OT, TM_PALM_ATTRIBS: @time_import.TM_PALM_ATTRIBS, TM_PALM_CATEGORY: @time_import.TM_PALM_CATEGORY, TM_PALM_ID: @time_import.TM_PALM_ID, TM_PERIOD: @time_import.TM_PERIOD, TM_STAFF: @time_import.TM_STAFF, TM_TASK: @time_import.TM_TASK, primaryKey: @time_import.primaryKey }
    end

    assert_redirected_to time_import_path(assigns(:time_import))
  end

  test "should show time_import" do
    get :show, id: @time_import
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_import
    assert_response :success
  end

  test "should update time_import" do
    patch :update, id: @time_import, time_import: { TM_BAD: @time_import.TM_BAD, TM_BILLABLE: @time_import.TM_BILLABLE, TM_BILL_RATE: @time_import.TM_BILL_RATE, TM_CLIENT_NUM: @time_import.TM_CLIENT_NUM, TM_COST_RATE: @time_import.TM_COST_RATE, TM_DATE: @time_import.TM_DATE, TM_DESC: @time_import.TM_DESC, TM_HOURS: @time_import.TM_HOURS, TM_JOB_NUM: @time_import.TM_JOB_NUM, TM_OT: @time_import.TM_OT, TM_PALM_ATTRIBS: @time_import.TM_PALM_ATTRIBS, TM_PALM_CATEGORY: @time_import.TM_PALM_CATEGORY, TM_PALM_ID: @time_import.TM_PALM_ID, TM_PERIOD: @time_import.TM_PERIOD, TM_STAFF: @time_import.TM_STAFF, TM_TASK: @time_import.TM_TASK, primaryKey: @time_import.primaryKey }
    assert_redirected_to time_import_path(assigns(:time_import))
  end

  test "should destroy time_import" do
    assert_difference('TimeImport.count', -1) do
      delete :destroy, id: @time_import
    end

    assert_redirected_to time_imports_path
  end
end

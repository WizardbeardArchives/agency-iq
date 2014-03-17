require 'test_helper'

class TaskTablesControllerTest < ActionController::TestCase
  setup do
    @task_table = task_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_table" do
    assert_difference('TaskTable.count') do
      post :create, task_table: { T_ACTIVE: @task_table.T_ACTIVE, T_ADDED_BY: @task_table.T_ADDED_BY, T_ADDED_WHEN: @task_table.T_ADDED_WHEN, T_ALWAYS_DISCUSS: @task_table.T_ALWAYS_DISCUSS, T_AMT1: @task_table.T_AMT1, T_AMT2: @task_table.T_AMT2, T_BILL_RATE: @task_table.T_BILL_RATE, T_CGL: @task_table.T_CGL, T_CHAR2: @task_table.T_CHAR2, T_CHAR3: @task_table.T_CHAR3, T_CHAR4: @task_table.T_CHAR4, T_CHAR5: @task_table.T_CHAR5, T_CHAR6: @task_table.T_CHAR6, T_CHAR7: @task_table.T_CHAR7, T_CLIENT_SCHED: @task_table.T_CLIENT_SCHED, T_COMMISSIONABLE: @task_table.T_COMMISSIONABLE, T_COMM_RATE_AE: @task_table.T_COMM_RATE_AE, T_COMM_RATE_BIZ: @task_table.T_COMM_RATE_BIZ, T_COST: @task_table.T_COST, T_DESC: @task_table.T_DESC, T_DGL: @task_table.T_DGL, T_EDITED_BY: @task_table.T_EDITED_BY, T_EDITED_WHEN: @task_table.T_EDITED_WHEN, T_GROUP: @task_table.T_GROUP, T_HOURS: @task_table.T_HOURS, T_ICON: @task_table.T_ICON, T_KIND: @task_table.T_KIND, T_LEAD_TIME: @task_table.T_LEAD_TIME, T_MARKUP: @task_table.T_MARKUP, T_MILESTONE: @task_table.T_MILESTONE, T_NAME: @task_table.T_NAME, T_NO_TIME: @task_table.T_NO_TIME, T_PAYROLL: @task_table.T_PAYROLL, T_PC: @task_table.T_PC, T_PREF3: @task_table.T_PREF3, T_PREF4: @task_table.T_PREF4, T_REQ_APPROVAL: @task_table.T_REQ_APPROVAL, T_REQ_APPROVAL_BY: @task_table.T_REQ_APPROVAL_BY, T_ROLL_UP: @task_table.T_ROLL_UP, T_SMALL_ICON: @task_table.T_SMALL_ICON, T_SORT: @task_table.T_SORT, T_SORT_PROD: @task_table.T_SORT_PROD, T_STATUS_FINISHED: @task_table.T_STATUS_FINISHED, T_TAGS: @task_table.T_TAGS, T_TASK: @task_table.T_TASK, T_TAX1: @task_table.T_TAX1, T_TAX2: @task_table.T_TAX2, T_TAX3: @task_table.T_TAX3, T_UNBILLABLE: @task_table.T_UNBILLABLE, T_UTIL_CAT: @task_table.T_UTIL_CAT, primaryKey: @task_table.primaryKey }
    end

    assert_redirected_to task_table_path(assigns(:task_table))
  end

  test "should show task_table" do
    get :show, id: @task_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_table
    assert_response :success
  end

  test "should update task_table" do
    patch :update, id: @task_table, task_table: { T_ACTIVE: @task_table.T_ACTIVE, T_ADDED_BY: @task_table.T_ADDED_BY, T_ADDED_WHEN: @task_table.T_ADDED_WHEN, T_ALWAYS_DISCUSS: @task_table.T_ALWAYS_DISCUSS, T_AMT1: @task_table.T_AMT1, T_AMT2: @task_table.T_AMT2, T_BILL_RATE: @task_table.T_BILL_RATE, T_CGL: @task_table.T_CGL, T_CHAR2: @task_table.T_CHAR2, T_CHAR3: @task_table.T_CHAR3, T_CHAR4: @task_table.T_CHAR4, T_CHAR5: @task_table.T_CHAR5, T_CHAR6: @task_table.T_CHAR6, T_CHAR7: @task_table.T_CHAR7, T_CLIENT_SCHED: @task_table.T_CLIENT_SCHED, T_COMMISSIONABLE: @task_table.T_COMMISSIONABLE, T_COMM_RATE_AE: @task_table.T_COMM_RATE_AE, T_COMM_RATE_BIZ: @task_table.T_COMM_RATE_BIZ, T_COST: @task_table.T_COST, T_DESC: @task_table.T_DESC, T_DGL: @task_table.T_DGL, T_EDITED_BY: @task_table.T_EDITED_BY, T_EDITED_WHEN: @task_table.T_EDITED_WHEN, T_GROUP: @task_table.T_GROUP, T_HOURS: @task_table.T_HOURS, T_ICON: @task_table.T_ICON, T_KIND: @task_table.T_KIND, T_LEAD_TIME: @task_table.T_LEAD_TIME, T_MARKUP: @task_table.T_MARKUP, T_MILESTONE: @task_table.T_MILESTONE, T_NAME: @task_table.T_NAME, T_NO_TIME: @task_table.T_NO_TIME, T_PAYROLL: @task_table.T_PAYROLL, T_PC: @task_table.T_PC, T_PREF3: @task_table.T_PREF3, T_PREF4: @task_table.T_PREF4, T_REQ_APPROVAL: @task_table.T_REQ_APPROVAL, T_REQ_APPROVAL_BY: @task_table.T_REQ_APPROVAL_BY, T_ROLL_UP: @task_table.T_ROLL_UP, T_SMALL_ICON: @task_table.T_SMALL_ICON, T_SORT: @task_table.T_SORT, T_SORT_PROD: @task_table.T_SORT_PROD, T_STATUS_FINISHED: @task_table.T_STATUS_FINISHED, T_TAGS: @task_table.T_TAGS, T_TASK: @task_table.T_TASK, T_TAX1: @task_table.T_TAX1, T_TAX2: @task_table.T_TAX2, T_TAX3: @task_table.T_TAX3, T_UNBILLABLE: @task_table.T_UNBILLABLE, T_UTIL_CAT: @task_table.T_UTIL_CAT, primaryKey: @task_table.primaryKey }
    assert_redirected_to task_table_path(assigns(:task_table))
  end

  test "should destroy task_table" do
    assert_difference('TaskTable.count', -1) do
      delete :destroy, id: @task_table
    end

    assert_redirected_to task_tables_path
  end
end

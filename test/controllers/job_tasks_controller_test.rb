require 'test_helper'

class JobTasksControllerTest < ActionController::TestCase
  setup do
    @job_task = job_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_task" do
    assert_difference('JobTask.count') do
      post :create, job_task: { X_ADDED_BY: @job_task.X_ADDED_BY, X_ADDED_WHEN: @job_task.X_ADDED_WHEN, X_AMT4: @job_task.X_AMT4, X_BILLED: @job_task.X_BILLED, X_BILL_RATE: @job_task.X_BILL_RATE, X_BUDGET: @job_task.X_BUDGET, X_CGL: @job_task.X_CGL, X_CHANGE_AMT: @job_task.X_CHANGE_AMT, X_CHANGE_BUDGET: @job_task.X_CHANGE_BUDGET, X_CHANGE_HRS: @job_task.X_CHANGE_HRS, X_CHAR10_2: @job_task.X_CHAR10_2, X_CHAR10_3: @job_task.X_CHAR10_3, X_CHAR20: @job_task.X_CHAR20, X_CHAR30: @job_task.X_CHAR30, X_CLIENT_SCHED: @job_task.X_CLIENT_SCHED, X_COLOR: @job_task.X_COLOR, X_COMMISSIONABLE: @job_task.X_COMMISSIONABLE, X_COMPLETED: @job_task.X_COMPLETED, X_COST: @job_task.X_COST, X_DATE_FINISHED: @job_task.X_DATE_FINISHED, X_DESC: @job_task.X_DESC, X_DGL: @job_task.X_DGL, X_DUE_DATE: @job_task.X_DUE_DATE, X_DUE_WHEN: @job_task.X_DUE_WHEN, X_EDITED_BY: @job_task.X_EDITED_BY, X_EDITED_WHEN: @job_task.X_EDITED_WHEN, X_EST1: @job_task.X_EST1, X_EST2: @job_task.X_EST2, X_EST3: @job_task.X_EST3, X_ESTIMATE: @job_task.X_ESTIMATE, X_EST_HRS1: @job_task.X_EST_HRS1, X_EST_HRS2: @job_task.X_EST_HRS2, X_EST_HRS3: @job_task.X_EST_HRS3, X_EXPENSES: @job_task.X_EXPENSES, X_FINISHED: @job_task.X_FINISHED, X_GROSS_COSTS: @job_task.X_GROSS_COSTS, X_GROSS_EXP: @job_task.X_GROSS_EXP, X_GROSS_LABOR: @job_task.X_GROSS_LABOR, X_GROUP: @job_task.X_GROUP, X_GROUP_PROD: @job_task.X_GROUP_PROD, X_HOURS_ACT: @job_task.X_HOURS_ACT, X_HOURS_BILLED: @job_task.X_HOURS_BILLED, X_HOURS_EST: @job_task.X_HOURS_EST, X_HOURS_WK1_1: @job_task.X_HOURS_WK1_1, X_HOURS_WK1_2: @job_task.X_HOURS_WK1_2, X_HOURS_WK1_3: @job_task.X_HOURS_WK1_3, X_HOURS_WK1_4: @job_task.X_HOURS_WK1_4, X_HOURS_WK1_5: @job_task.X_HOURS_WK1_5, X_HOURS_WK2_1: @job_task.X_HOURS_WK2_1, X_HOURS_WK2_2: @job_task.X_HOURS_WK2_2, X_HOURS_WK2_3: @job_task.X_HOURS_WK2_3, X_HOURS_WK2_4: @job_task.X_HOURS_WK2_4, X_HOURS_WK2_5: @job_task.X_HOURS_WK2_5, X_HRS_UNBILLED: @job_task.X_HRS_UNBILLED, X_JOB_NUM: @job_task.X_JOB_NUM, X_KEY: @job_task.X_KEY, X_KEY_RESOURCE: @job_task.X_KEY_RESOURCE, X_KIND: @job_task.X_KIND, X_LABOR: @job_task.X_LABOR, X_LAST_WORK: @job_task.X_LAST_WORK, X_LEAD_TIME: @job_task.X_LEAD_TIME, X_MARKUP: @job_task.X_MARKUP, X_MEDIA_COMM: @job_task.X_MEDIA_COMM, X_MILESTONE: @job_task.X_MILESTONE, X_MU_AMT: @job_task.X_MU_AMT, X_NAME: @job_task.X_NAME, X_NEXT_BILL_AMT: @job_task.X_NEXT_BILL_AMT, X_NEXT_BILL_DATE: @job_task.X_NEXT_BILL_DATE, X_NEXT_BILL_HRS: @job_task.X_NEXT_BILL_HRS, X_NOTE: @job_task.X_NOTE, X_NO_TIME: @job_task.X_NO_TIME, X_NUM2D_5: @job_task.X_NUM2D_5, X_NUM2D_6: @job_task.X_NUM2D_6, X_NUM2D_7: @job_task.X_NUM2D_7, X_PC: @job_task.X_PC, X_PHASE: @job_task.X_PHASE, X_PO_GROSS: @job_task.X_PO_GROSS, X_PO_NET: @job_task.X_PO_NET, X_PRIORITY: @job_task.X_PRIORITY, X_RATE_KIND: @job_task.X_RATE_KIND, X_RELATION: @job_task.X_RELATION, X_RELATION_TYPE: @job_task.X_RELATION_TYPE, X_REQ_APPROVAL: @job_task.X_REQ_APPROVAL, X_REQ_APPROVED_DATE: @job_task.X_REQ_APPROVED_DATE, X_RESOURCE: @job_task.X_RESOURCE, X_ROLL_UP: @job_task.X_ROLL_UP, X_SHOW_DESC: @job_task.X_SHOW_DESC, X_SORT: @job_task.X_SORT, X_SORT_PROD: @job_task.X_SORT_PROD, X_SPECS: @job_task.X_SPECS, X_START_DATE: @job_task.X_START_DATE, X_STATUS: @job_task.X_STATUS, X_SUB_ACT_HRS: @job_task.X_SUB_ACT_HRS, X_SUB_EST_HRS: @job_task.X_SUB_EST_HRS, X_TAGS: @job_task.X_TAGS, X_TASK: @job_task.X_TASK, X_TAX1_RATE: @job_task.X_TAX1_RATE, X_TAX2_RATE: @job_task.X_TAX2_RATE, X_TAX3_RATE: @job_task.X_TAX3_RATE, X_TAXABLE1: @job_task.X_TAXABLE1, X_TAXABLE2: @job_task.X_TAXABLE2, X_TAXABLE3: @job_task.X_TAXABLE3, X_UNBILLABLE: @job_task.X_UNBILLABLE, X_UNBILLED: @job_task.X_UNBILLED, primaryKey: @job_task.primaryKey }
    end

    assert_redirected_to job_task_path(assigns(:job_task))
  end

  test "should show job_task" do
    get :show, id: @job_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_task
    assert_response :success
  end

  test "should update job_task" do
    patch :update, id: @job_task, job_task: { X_ADDED_BY: @job_task.X_ADDED_BY, X_ADDED_WHEN: @job_task.X_ADDED_WHEN, X_AMT4: @job_task.X_AMT4, X_BILLED: @job_task.X_BILLED, X_BILL_RATE: @job_task.X_BILL_RATE, X_BUDGET: @job_task.X_BUDGET, X_CGL: @job_task.X_CGL, X_CHANGE_AMT: @job_task.X_CHANGE_AMT, X_CHANGE_BUDGET: @job_task.X_CHANGE_BUDGET, X_CHANGE_HRS: @job_task.X_CHANGE_HRS, X_CHAR10_2: @job_task.X_CHAR10_2, X_CHAR10_3: @job_task.X_CHAR10_3, X_CHAR20: @job_task.X_CHAR20, X_CHAR30: @job_task.X_CHAR30, X_CLIENT_SCHED: @job_task.X_CLIENT_SCHED, X_COLOR: @job_task.X_COLOR, X_COMMISSIONABLE: @job_task.X_COMMISSIONABLE, X_COMPLETED: @job_task.X_COMPLETED, X_COST: @job_task.X_COST, X_DATE_FINISHED: @job_task.X_DATE_FINISHED, X_DESC: @job_task.X_DESC, X_DGL: @job_task.X_DGL, X_DUE_DATE: @job_task.X_DUE_DATE, X_DUE_WHEN: @job_task.X_DUE_WHEN, X_EDITED_BY: @job_task.X_EDITED_BY, X_EDITED_WHEN: @job_task.X_EDITED_WHEN, X_EST1: @job_task.X_EST1, X_EST2: @job_task.X_EST2, X_EST3: @job_task.X_EST3, X_ESTIMATE: @job_task.X_ESTIMATE, X_EST_HRS1: @job_task.X_EST_HRS1, X_EST_HRS2: @job_task.X_EST_HRS2, X_EST_HRS3: @job_task.X_EST_HRS3, X_EXPENSES: @job_task.X_EXPENSES, X_FINISHED: @job_task.X_FINISHED, X_GROSS_COSTS: @job_task.X_GROSS_COSTS, X_GROSS_EXP: @job_task.X_GROSS_EXP, X_GROSS_LABOR: @job_task.X_GROSS_LABOR, X_GROUP: @job_task.X_GROUP, X_GROUP_PROD: @job_task.X_GROUP_PROD, X_HOURS_ACT: @job_task.X_HOURS_ACT, X_HOURS_BILLED: @job_task.X_HOURS_BILLED, X_HOURS_EST: @job_task.X_HOURS_EST, X_HOURS_WK1_1: @job_task.X_HOURS_WK1_1, X_HOURS_WK1_2: @job_task.X_HOURS_WK1_2, X_HOURS_WK1_3: @job_task.X_HOURS_WK1_3, X_HOURS_WK1_4: @job_task.X_HOURS_WK1_4, X_HOURS_WK1_5: @job_task.X_HOURS_WK1_5, X_HOURS_WK2_1: @job_task.X_HOURS_WK2_1, X_HOURS_WK2_2: @job_task.X_HOURS_WK2_2, X_HOURS_WK2_3: @job_task.X_HOURS_WK2_3, X_HOURS_WK2_4: @job_task.X_HOURS_WK2_4, X_HOURS_WK2_5: @job_task.X_HOURS_WK2_5, X_HRS_UNBILLED: @job_task.X_HRS_UNBILLED, X_JOB_NUM: @job_task.X_JOB_NUM, X_KEY: @job_task.X_KEY, X_KEY_RESOURCE: @job_task.X_KEY_RESOURCE, X_KIND: @job_task.X_KIND, X_LABOR: @job_task.X_LABOR, X_LAST_WORK: @job_task.X_LAST_WORK, X_LEAD_TIME: @job_task.X_LEAD_TIME, X_MARKUP: @job_task.X_MARKUP, X_MEDIA_COMM: @job_task.X_MEDIA_COMM, X_MILESTONE: @job_task.X_MILESTONE, X_MU_AMT: @job_task.X_MU_AMT, X_NAME: @job_task.X_NAME, X_NEXT_BILL_AMT: @job_task.X_NEXT_BILL_AMT, X_NEXT_BILL_DATE: @job_task.X_NEXT_BILL_DATE, X_NEXT_BILL_HRS: @job_task.X_NEXT_BILL_HRS, X_NOTE: @job_task.X_NOTE, X_NO_TIME: @job_task.X_NO_TIME, X_NUM2D_5: @job_task.X_NUM2D_5, X_NUM2D_6: @job_task.X_NUM2D_6, X_NUM2D_7: @job_task.X_NUM2D_7, X_PC: @job_task.X_PC, X_PHASE: @job_task.X_PHASE, X_PO_GROSS: @job_task.X_PO_GROSS, X_PO_NET: @job_task.X_PO_NET, X_PRIORITY: @job_task.X_PRIORITY, X_RATE_KIND: @job_task.X_RATE_KIND, X_RELATION: @job_task.X_RELATION, X_RELATION_TYPE: @job_task.X_RELATION_TYPE, X_REQ_APPROVAL: @job_task.X_REQ_APPROVAL, X_REQ_APPROVED_DATE: @job_task.X_REQ_APPROVED_DATE, X_RESOURCE: @job_task.X_RESOURCE, X_ROLL_UP: @job_task.X_ROLL_UP, X_SHOW_DESC: @job_task.X_SHOW_DESC, X_SORT: @job_task.X_SORT, X_SORT_PROD: @job_task.X_SORT_PROD, X_SPECS: @job_task.X_SPECS, X_START_DATE: @job_task.X_START_DATE, X_STATUS: @job_task.X_STATUS, X_SUB_ACT_HRS: @job_task.X_SUB_ACT_HRS, X_SUB_EST_HRS: @job_task.X_SUB_EST_HRS, X_TAGS: @job_task.X_TAGS, X_TASK: @job_task.X_TASK, X_TAX1_RATE: @job_task.X_TAX1_RATE, X_TAX2_RATE: @job_task.X_TAX2_RATE, X_TAX3_RATE: @job_task.X_TAX3_RATE, X_TAXABLE1: @job_task.X_TAXABLE1, X_TAXABLE2: @job_task.X_TAXABLE2, X_TAXABLE3: @job_task.X_TAXABLE3, X_UNBILLABLE: @job_task.X_UNBILLABLE, X_UNBILLED: @job_task.X_UNBILLED, primaryKey: @job_task.primaryKey }
    assert_redirected_to job_task_path(assigns(:job_task))
  end

  test "should destroy job_task" do
    assert_difference('JobTask.count', -1) do
      delete :destroy, id: @job_task
    end

    assert_redirected_to job_tasks_path
  end
end

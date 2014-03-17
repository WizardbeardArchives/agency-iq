require 'test_helper'

class SchedRevsControllerTest < ActionController::TestCase
  setup do
    @sched_rev = sched_revs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sched_revs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sched_rev" do
    assert_difference('SchedRev.count') do
      post :create, sched_rev: { SCV_ADDED_BY: @sched_rev.SCV_ADDED_BY, SCV_ADDED_WHEN: @sched_rev.SCV_ADDED_WHEN, SCV_DATE_FINISHED: @sched_rev.SCV_DATE_FINISHED, SCV_DUE_DATE: @sched_rev.SCV_DUE_DATE, SCV_DUE_WHEN: @sched_rev.SCV_DUE_WHEN, SCV_EDITED_BY: @sched_rev.SCV_EDITED_BY, SCV_EDITED_WHEN: @sched_rev.SCV_EDITED_WHEN, SCV_FINAL: @sched_rev.SCV_FINAL, SCV_FINISHED: @sched_rev.SCV_FINISHED, SCV_JOB_NUM: @sched_rev.SCV_JOB_NUM, SCV_J_DUE_DATE: @sched_rev.SCV_J_DUE_DATE, SCV_J_START_DATE: @sched_rev.SCV_J_START_DATE, SCV_KIND: @sched_rev.SCV_KIND, SCV_LEAD_TIME: @sched_rev.SCV_LEAD_TIME, SCV_REASON: @sched_rev.SCV_REASON, SCV_RESOURCE: @sched_rev.SCV_RESOURCE, SCV_REVISED_BY: @sched_rev.SCV_REVISED_BY, SCV_REVISION: @sched_rev.SCV_REVISION, SCV_REVISION_DATE: @sched_rev.SCV_REVISION_DATE, SCV_REVISION_NOTES: @sched_rev.SCV_REVISION_NOTES, SCV_REV_OKD_BY: @sched_rev.SCV_REV_OKD_BY, SCV_REV_OKD_DATE: @sched_rev.SCV_REV_OKD_DATE, SCV_SORT: @sched_rev.SCV_SORT, SCV_START_DATE: @sched_rev.SCV_START_DATE, SCV_TASK: @sched_rev.SCV_TASK, SCV_TASK_NAME: @sched_rev.SCV_TASK_NAME, SCV_TASK_SPECS: @sched_rev.SCV_TASK_SPECS, primaryKey: @sched_rev.primaryKey }
    end

    assert_redirected_to sched_rev_path(assigns(:sched_rev))
  end

  test "should show sched_rev" do
    get :show, id: @sched_rev
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sched_rev
    assert_response :success
  end

  test "should update sched_rev" do
    patch :update, id: @sched_rev, sched_rev: { SCV_ADDED_BY: @sched_rev.SCV_ADDED_BY, SCV_ADDED_WHEN: @sched_rev.SCV_ADDED_WHEN, SCV_DATE_FINISHED: @sched_rev.SCV_DATE_FINISHED, SCV_DUE_DATE: @sched_rev.SCV_DUE_DATE, SCV_DUE_WHEN: @sched_rev.SCV_DUE_WHEN, SCV_EDITED_BY: @sched_rev.SCV_EDITED_BY, SCV_EDITED_WHEN: @sched_rev.SCV_EDITED_WHEN, SCV_FINAL: @sched_rev.SCV_FINAL, SCV_FINISHED: @sched_rev.SCV_FINISHED, SCV_JOB_NUM: @sched_rev.SCV_JOB_NUM, SCV_J_DUE_DATE: @sched_rev.SCV_J_DUE_DATE, SCV_J_START_DATE: @sched_rev.SCV_J_START_DATE, SCV_KIND: @sched_rev.SCV_KIND, SCV_LEAD_TIME: @sched_rev.SCV_LEAD_TIME, SCV_REASON: @sched_rev.SCV_REASON, SCV_RESOURCE: @sched_rev.SCV_RESOURCE, SCV_REVISED_BY: @sched_rev.SCV_REVISED_BY, SCV_REVISION: @sched_rev.SCV_REVISION, SCV_REVISION_DATE: @sched_rev.SCV_REVISION_DATE, SCV_REVISION_NOTES: @sched_rev.SCV_REVISION_NOTES, SCV_REV_OKD_BY: @sched_rev.SCV_REV_OKD_BY, SCV_REV_OKD_DATE: @sched_rev.SCV_REV_OKD_DATE, SCV_SORT: @sched_rev.SCV_SORT, SCV_START_DATE: @sched_rev.SCV_START_DATE, SCV_TASK: @sched_rev.SCV_TASK, SCV_TASK_NAME: @sched_rev.SCV_TASK_NAME, SCV_TASK_SPECS: @sched_rev.SCV_TASK_SPECS, primaryKey: @sched_rev.primaryKey }
    assert_redirected_to sched_rev_path(assigns(:sched_rev))
  end

  test "should destroy sched_rev" do
    assert_difference('SchedRev.count', -1) do
      delete :destroy, id: @sched_rev
    end

    assert_redirected_to sched_revs_path
  end
end

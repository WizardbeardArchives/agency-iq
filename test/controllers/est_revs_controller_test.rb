require 'test_helper'

class EstRevsControllerTest < ActionController::TestCase
  setup do
    @est_rev = est_revs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:est_revs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create est_rev" do
    assert_difference('EstRev.count') do
      post :create, est_rev: { RV_ADDED_BY: @est_rev.RV_ADDED_BY, RV_ADDED_WHEN: @est_rev.RV_ADDED_WHEN, RV_BUDGET: @est_rev.RV_BUDGET, RV_EDITED_BY: @est_rev.RV_EDITED_BY, RV_EDITED_WHEN: @est_rev.RV_EDITED_WHEN, RV_EST1: @est_rev.RV_EST1, RV_EST2: @est_rev.RV_EST2, RV_EST3: @est_rev.RV_EST3, RV_EST_HEAD1: @est_rev.RV_EST_HEAD1, RV_EST_HEAD2: @est_rev.RV_EST_HEAD2, RV_EST_HEAD3: @est_rev.RV_EST_HEAD3, RV_EST_HRS1: @est_rev.RV_EST_HRS1, RV_EST_HRS2: @est_rev.RV_EST_HRS2, RV_EST_HRS3: @est_rev.RV_EST_HRS3, RV_FINAL: @est_rev.RV_FINAL, RV_GROUP: @est_rev.RV_GROUP, RV_JOB_NUM: @est_rev.RV_JOB_NUM, RV_NAME: @est_rev.RV_NAME, RV_REASON: @est_rev.RV_REASON, RV_REVISED_BY: @est_rev.RV_REVISED_BY, RV_REVISION: @est_rev.RV_REVISION, RV_REVISION_DATE: @est_rev.RV_REVISION_DATE, RV_REVISION_NOTES: @est_rev.RV_REVISION_NOTES, RV_REV_OKD_BY: @est_rev.RV_REV_OKD_BY, RV_REV_OKD_DATE: @est_rev.RV_REV_OKD_DATE, RV_SORT: @est_rev.RV_SORT, RV_TASK: @est_rev.RV_TASK, primaryKey: @est_rev.primaryKey }
    end

    assert_redirected_to est_rev_path(assigns(:est_rev))
  end

  test "should show est_rev" do
    get :show, id: @est_rev
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @est_rev
    assert_response :success
  end

  test "should update est_rev" do
    patch :update, id: @est_rev, est_rev: { RV_ADDED_BY: @est_rev.RV_ADDED_BY, RV_ADDED_WHEN: @est_rev.RV_ADDED_WHEN, RV_BUDGET: @est_rev.RV_BUDGET, RV_EDITED_BY: @est_rev.RV_EDITED_BY, RV_EDITED_WHEN: @est_rev.RV_EDITED_WHEN, RV_EST1: @est_rev.RV_EST1, RV_EST2: @est_rev.RV_EST2, RV_EST3: @est_rev.RV_EST3, RV_EST_HEAD1: @est_rev.RV_EST_HEAD1, RV_EST_HEAD2: @est_rev.RV_EST_HEAD2, RV_EST_HEAD3: @est_rev.RV_EST_HEAD3, RV_EST_HRS1: @est_rev.RV_EST_HRS1, RV_EST_HRS2: @est_rev.RV_EST_HRS2, RV_EST_HRS3: @est_rev.RV_EST_HRS3, RV_FINAL: @est_rev.RV_FINAL, RV_GROUP: @est_rev.RV_GROUP, RV_JOB_NUM: @est_rev.RV_JOB_NUM, RV_NAME: @est_rev.RV_NAME, RV_REASON: @est_rev.RV_REASON, RV_REVISED_BY: @est_rev.RV_REVISED_BY, RV_REVISION: @est_rev.RV_REVISION, RV_REVISION_DATE: @est_rev.RV_REVISION_DATE, RV_REVISION_NOTES: @est_rev.RV_REVISION_NOTES, RV_REV_OKD_BY: @est_rev.RV_REV_OKD_BY, RV_REV_OKD_DATE: @est_rev.RV_REV_OKD_DATE, RV_SORT: @est_rev.RV_SORT, RV_TASK: @est_rev.RV_TASK, primaryKey: @est_rev.primaryKey }
    assert_redirected_to est_rev_path(assigns(:est_rev))
  end

  test "should destroy est_rev" do
    assert_difference('EstRev.count', -1) do
      delete :destroy, id: @est_rev
    end

    assert_redirected_to est_revs_path
  end
end

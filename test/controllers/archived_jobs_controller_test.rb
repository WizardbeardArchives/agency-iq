require 'test_helper'

class ArchivedJobsControllerTest < ActionController::TestCase
  setup do
    @archived_job = archived_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archived_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archived_job" do
    assert_difference('ArchivedJob.count') do
      post :create, archived_job: { AJ_ARTIST: @archived_job.AJ_ARTIST, AJ_FORM: @archived_job.AJ_FORM, AJ_JOB_NUM: @archived_job.AJ_JOB_NUM, AJ_LOCATION: @archived_job.AJ_LOCATION, AJ_NAME: @archived_job.AJ_NAME, AJ_PRINTER: @archived_job.AJ_PRINTER, AJ_REF: @archived_job.AJ_REF, primaryKey: @archived_job.primaryKey }
    end

    assert_redirected_to archived_job_path(assigns(:archived_job))
  end

  test "should show archived_job" do
    get :show, id: @archived_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archived_job
    assert_response :success
  end

  test "should update archived_job" do
    patch :update, id: @archived_job, archived_job: { AJ_ARTIST: @archived_job.AJ_ARTIST, AJ_FORM: @archived_job.AJ_FORM, AJ_JOB_NUM: @archived_job.AJ_JOB_NUM, AJ_LOCATION: @archived_job.AJ_LOCATION, AJ_NAME: @archived_job.AJ_NAME, AJ_PRINTER: @archived_job.AJ_PRINTER, AJ_REF: @archived_job.AJ_REF, primaryKey: @archived_job.primaryKey }
    assert_redirected_to archived_job_path(assigns(:archived_job))
  end

  test "should destroy archived_job" do
    assert_difference('ArchivedJob.count', -1) do
      delete :destroy, id: @archived_job
    end

    assert_redirected_to archived_jobs_path
  end
end

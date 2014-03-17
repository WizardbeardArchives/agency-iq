require 'test_helper'

class PalmJobsControllerTest < ActionController::TestCase
  setup do
    @palm_job = palm_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palm_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palm_job" do
    assert_difference('PalmJob.count') do
      post :create, palm_job: { PALM_JOB_ATTRIBS: @palm_job.PALM_JOB_ATTRIBS, PALM_JOB_CATEGORY: @palm_job.PALM_JOB_CATEGORY, PALM_JOB_ID: @palm_job.PALM_JOB_ID, PALM_JOB_NAME: @palm_job.PALM_JOB_NAME, PALM_JOB_NUM: @palm_job.PALM_JOB_NUM, PALM_JOB_PLUS: @palm_job.PALM_JOB_PLUS, PALM_JOB_USER: @palm_job.PALM_JOB_USER, primaryKey: @palm_job.primaryKey }
    end

    assert_redirected_to palm_job_path(assigns(:palm_job))
  end

  test "should show palm_job" do
    get :show, id: @palm_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palm_job
    assert_response :success
  end

  test "should update palm_job" do
    patch :update, id: @palm_job, palm_job: { PALM_JOB_ATTRIBS: @palm_job.PALM_JOB_ATTRIBS, PALM_JOB_CATEGORY: @palm_job.PALM_JOB_CATEGORY, PALM_JOB_ID: @palm_job.PALM_JOB_ID, PALM_JOB_NAME: @palm_job.PALM_JOB_NAME, PALM_JOB_NUM: @palm_job.PALM_JOB_NUM, PALM_JOB_PLUS: @palm_job.PALM_JOB_PLUS, PALM_JOB_USER: @palm_job.PALM_JOB_USER, primaryKey: @palm_job.primaryKey }
    assert_redirected_to palm_job_path(assigns(:palm_job))
  end

  test "should destroy palm_job" do
    assert_difference('PalmJob.count', -1) do
      delete :destroy, id: @palm_job
    end

    assert_redirected_to palm_jobs_path
  end
end

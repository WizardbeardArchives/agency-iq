require 'test_helper'

class PalmTasksControllerTest < ActionController::TestCase
  setup do
    @palm_task = palm_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palm_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palm_task" do
    assert_difference('PalmTask.count') do
      post :create, palm_task: { PALM_TASK_ATTRIBS: @palm_task.PALM_TASK_ATTRIBS, PALM_TASK_CAT: @palm_task.PALM_TASK_CAT, PALM_TASK_CODE: @palm_task.PALM_TASK_CODE, PALM_TASK_ID: @palm_task.PALM_TASK_ID, PALM_TASK_NAME: @palm_task.PALM_TASK_NAME, PALM_TASK_USER: @palm_task.PALM_TASK_USER, primaryKey: @palm_task.primaryKey }
    end

    assert_redirected_to palm_task_path(assigns(:palm_task))
  end

  test "should show palm_task" do
    get :show, id: @palm_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palm_task
    assert_response :success
  end

  test "should update palm_task" do
    patch :update, id: @palm_task, palm_task: { PALM_TASK_ATTRIBS: @palm_task.PALM_TASK_ATTRIBS, PALM_TASK_CAT: @palm_task.PALM_TASK_CAT, PALM_TASK_CODE: @palm_task.PALM_TASK_CODE, PALM_TASK_ID: @palm_task.PALM_TASK_ID, PALM_TASK_NAME: @palm_task.PALM_TASK_NAME, PALM_TASK_USER: @palm_task.PALM_TASK_USER, primaryKey: @palm_task.primaryKey }
    assert_redirected_to palm_task_path(assigns(:palm_task))
  end

  test "should destroy palm_task" do
    assert_difference('PalmTask.count', -1) do
      delete :destroy, id: @palm_task
    end

    assert_redirected_to palm_tasks_path
  end
end

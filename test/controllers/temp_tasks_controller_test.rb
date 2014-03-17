require 'test_helper'

class TempTasksControllerTest < ActionController::TestCase
  setup do
    @temp_task = temp_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temp_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temp_task" do
    assert_difference('TempTask.count') do
      post :create, temp_task: { TT_ADDED_BY: @temp_task.TT_ADDED_BY, TT_ADDED_WHEN: @temp_task.TT_ADDED_WHEN, TT_EDITED_BY: @temp_task.TT_EDITED_BY, TT_EDITED_WHEN: @temp_task.TT_EDITED_WHEN, TT_EST1: @temp_task.TT_EST1, TT_EST2: @temp_task.TT_EST2, TT_EST3: @temp_task.TT_EST3, TT_EST_HOURS: @temp_task.TT_EST_HOURS, TT_LEAD1: @temp_task.TT_LEAD1, TT_LEAD2: @temp_task.TT_LEAD2, TT_LEAD3: @temp_task.TT_LEAD3, TT_NAME: @temp_task.TT_NAME, TT_TASK: @temp_task.TT_TASK, TT_TASK_DESC: @temp_task.TT_TASK_DESC, TT_TYPE: @temp_task.TT_TYPE, primaryKey: @temp_task.primaryKey }
    end

    assert_redirected_to temp_task_path(assigns(:temp_task))
  end

  test "should show temp_task" do
    get :show, id: @temp_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temp_task
    assert_response :success
  end

  test "should update temp_task" do
    patch :update, id: @temp_task, temp_task: { TT_ADDED_BY: @temp_task.TT_ADDED_BY, TT_ADDED_WHEN: @temp_task.TT_ADDED_WHEN, TT_EDITED_BY: @temp_task.TT_EDITED_BY, TT_EDITED_WHEN: @temp_task.TT_EDITED_WHEN, TT_EST1: @temp_task.TT_EST1, TT_EST2: @temp_task.TT_EST2, TT_EST3: @temp_task.TT_EST3, TT_EST_HOURS: @temp_task.TT_EST_HOURS, TT_LEAD1: @temp_task.TT_LEAD1, TT_LEAD2: @temp_task.TT_LEAD2, TT_LEAD3: @temp_task.TT_LEAD3, TT_NAME: @temp_task.TT_NAME, TT_TASK: @temp_task.TT_TASK, TT_TASK_DESC: @temp_task.TT_TASK_DESC, TT_TYPE: @temp_task.TT_TYPE, primaryKey: @temp_task.primaryKey }
    assert_redirected_to temp_task_path(assigns(:temp_task))
  end

  test "should destroy temp_task" do
    assert_difference('TempTask.count', -1) do
      delete :destroy, id: @temp_task
    end

    assert_redirected_to temp_tasks_path
  end
end

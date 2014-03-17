require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { PROJ_ADDED_BY: @project.PROJ_ADDED_BY, PROJ_ADDED_WHEN: @project.PROJ_ADDED_WHEN, PROJ_BUDGET: @project.PROJ_BUDGET, PROJ_CLIENT_NUM: @project.PROJ_CLIENT_NUM, PROJ_DESC: @project.PROJ_DESC, PROJ_EDITED_BY: @project.PROJ_EDITED_BY, PROJ_EDITED_WHEN: @project.PROJ_EDITED_WHEN, PROJ_NAME: @project.PROJ_NAME, PROJ_NUM10: @project.PROJ_NUM10, PROJ_NUM11: @project.PROJ_NUM11, PROJ_NUM12: @project.PROJ_NUM12, PROJ_NUM1: @project.PROJ_NUM1, PROJ_NUM2: @project.PROJ_NUM2, PROJ_NUM3: @project.PROJ_NUM3, PROJ_NUM4: @project.PROJ_NUM4, PROJ_NUM5: @project.PROJ_NUM5, PROJ_NUM6: @project.PROJ_NUM6, PROJ_NUM7: @project.PROJ_NUM7, PROJ_NUM8: @project.PROJ_NUM8, PROJ_NUM9: @project.PROJ_NUM9, PROJ_STATUS: @project.PROJ_STATUS, primaryKey: @project.primaryKey }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { PROJ_ADDED_BY: @project.PROJ_ADDED_BY, PROJ_ADDED_WHEN: @project.PROJ_ADDED_WHEN, PROJ_BUDGET: @project.PROJ_BUDGET, PROJ_CLIENT_NUM: @project.PROJ_CLIENT_NUM, PROJ_DESC: @project.PROJ_DESC, PROJ_EDITED_BY: @project.PROJ_EDITED_BY, PROJ_EDITED_WHEN: @project.PROJ_EDITED_WHEN, PROJ_NAME: @project.PROJ_NAME, PROJ_NUM10: @project.PROJ_NUM10, PROJ_NUM11: @project.PROJ_NUM11, PROJ_NUM12: @project.PROJ_NUM12, PROJ_NUM1: @project.PROJ_NUM1, PROJ_NUM2: @project.PROJ_NUM2, PROJ_NUM3: @project.PROJ_NUM3, PROJ_NUM4: @project.PROJ_NUM4, PROJ_NUM5: @project.PROJ_NUM5, PROJ_NUM6: @project.PROJ_NUM6, PROJ_NUM7: @project.PROJ_NUM7, PROJ_NUM8: @project.PROJ_NUM8, PROJ_NUM9: @project.PROJ_NUM9, PROJ_STATUS: @project.PROJ_STATUS, primaryKey: @project.primaryKey }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end

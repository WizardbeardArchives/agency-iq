require 'test_helper'

class DeptsControllerTest < ActionController::TestCase
  setup do
    @dept = depts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:depts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dept" do
    assert_difference('Dept.count') do
      post :create, dept: { DEPT_ADDED_BY: @dept.DEPT_ADDED_BY, DEPT_ADDED_WHEN: @dept.DEPT_ADDED_WHEN, DEPT_DESC: @dept.DEPT_DESC, DEPT_EDITED_BY: @dept.DEPT_EDITED_BY, DEPT_EDITED_WHEN: @dept.DEPT_EDITED_WHEN, DEPT_MGR: @dept.DEPT_MGR, DEPT_NAME: @dept.DEPT_NAME, DEPT_NUM: @dept.DEPT_NUM, DEPT_OFFICE: @dept.DEPT_OFFICE, primaryKey: @dept.primaryKey }
    end

    assert_redirected_to dept_path(assigns(:dept))
  end

  test "should show dept" do
    get :show, id: @dept
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dept
    assert_response :success
  end

  test "should update dept" do
    patch :update, id: @dept, dept: { DEPT_ADDED_BY: @dept.DEPT_ADDED_BY, DEPT_ADDED_WHEN: @dept.DEPT_ADDED_WHEN, DEPT_DESC: @dept.DEPT_DESC, DEPT_EDITED_BY: @dept.DEPT_EDITED_BY, DEPT_EDITED_WHEN: @dept.DEPT_EDITED_WHEN, DEPT_MGR: @dept.DEPT_MGR, DEPT_NAME: @dept.DEPT_NAME, DEPT_NUM: @dept.DEPT_NUM, DEPT_OFFICE: @dept.DEPT_OFFICE, primaryKey: @dept.primaryKey }
    assert_redirected_to dept_path(assigns(:dept))
  end

  test "should destroy dept" do
    assert_difference('Dept.count', -1) do
      delete :destroy, id: @dept
    end

    assert_redirected_to depts_path
  end
end

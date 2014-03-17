require 'test_helper'

class JobUserFieldsControllerTest < ActionController::TestCase
  setup do
    @job_user_field = job_user_fields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_user_fields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_user_field" do
    assert_difference('JobUserField.count') do
      post :create, job_user_field: { JU_FIELD: @job_user_field.JU_FIELD, JU_VALUE: @job_user_field.JU_VALUE, primaryKey: @job_user_field.primaryKey }
    end

    assert_redirected_to job_user_field_path(assigns(:job_user_field))
  end

  test "should show job_user_field" do
    get :show, id: @job_user_field
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_user_field
    assert_response :success
  end

  test "should update job_user_field" do
    patch :update, id: @job_user_field, job_user_field: { JU_FIELD: @job_user_field.JU_FIELD, JU_VALUE: @job_user_field.JU_VALUE, primaryKey: @job_user_field.primaryKey }
    assert_redirected_to job_user_field_path(assigns(:job_user_field))
  end

  test "should destroy job_user_field" do
    assert_difference('JobUserField.count', -1) do
      delete :destroy, id: @job_user_field
    end

    assert_redirected_to job_user_fields_path
  end
end

require 'test_helper'

class SubClassesControllerTest < ActionController::TestCase
  setup do
    @sub_class = sub_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_class" do
    assert_difference('SubClass.count') do
      post :create, sub_class: { SUB_ADDED_BY: @sub_class.SUB_ADDED_BY, SUB_ADDED_WHEN: @sub_class.SUB_ADDED_WHEN, SUB_DESC: @sub_class.SUB_DESC, SUB_EDITED_BY: @sub_class.SUB_EDITED_BY, SUB_EDITED_WHEN: @sub_class.SUB_EDITED_WHEN, SUB_NUM: @sub_class.SUB_NUM, primaryKey: @sub_class.primaryKey }
    end

    assert_redirected_to sub_class_path(assigns(:sub_class))
  end

  test "should show sub_class" do
    get :show, id: @sub_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_class
    assert_response :success
  end

  test "should update sub_class" do
    patch :update, id: @sub_class, sub_class: { SUB_ADDED_BY: @sub_class.SUB_ADDED_BY, SUB_ADDED_WHEN: @sub_class.SUB_ADDED_WHEN, SUB_DESC: @sub_class.SUB_DESC, SUB_EDITED_BY: @sub_class.SUB_EDITED_BY, SUB_EDITED_WHEN: @sub_class.SUB_EDITED_WHEN, SUB_NUM: @sub_class.SUB_NUM, primaryKey: @sub_class.primaryKey }
    assert_redirected_to sub_class_path(assigns(:sub_class))
  end

  test "should destroy sub_class" do
    assert_difference('SubClass.count', -1) do
      delete :destroy, id: @sub_class
    end

    assert_redirected_to sub_classes_path
  end
end

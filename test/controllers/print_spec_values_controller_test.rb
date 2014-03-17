require 'test_helper'

class PrintSpecValuesControllerTest < ActionController::TestCase
  setup do
    @print_spec_value = print_spec_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:print_spec_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create print_spec_value" do
    assert_difference('PrintSpecValue.count') do
      post :create, print_spec_value: { PSV_ADDED_BY: @print_spec_value.PSV_ADDED_BY, PSV_ADDED_WHEN: @print_spec_value.PSV_ADDED_WHEN, PSV_CAT: @print_spec_value.PSV_CAT, PSV_EDITED_BY: @print_spec_value.PSV_EDITED_BY, PSV_EDITED_WHEN: @print_spec_value.PSV_EDITED_WHEN, PSV_VALUE: @print_spec_value.PSV_VALUE, primaryKey: @print_spec_value.primaryKey }
    end

    assert_redirected_to print_spec_value_path(assigns(:print_spec_value))
  end

  test "should show print_spec_value" do
    get :show, id: @print_spec_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @print_spec_value
    assert_response :success
  end

  test "should update print_spec_value" do
    patch :update, id: @print_spec_value, print_spec_value: { PSV_ADDED_BY: @print_spec_value.PSV_ADDED_BY, PSV_ADDED_WHEN: @print_spec_value.PSV_ADDED_WHEN, PSV_CAT: @print_spec_value.PSV_CAT, PSV_EDITED_BY: @print_spec_value.PSV_EDITED_BY, PSV_EDITED_WHEN: @print_spec_value.PSV_EDITED_WHEN, PSV_VALUE: @print_spec_value.PSV_VALUE, primaryKey: @print_spec_value.primaryKey }
    assert_redirected_to print_spec_value_path(assigns(:print_spec_value))
  end

  test "should destroy print_spec_value" do
    assert_difference('PrintSpecValue.count', -1) do
      delete :destroy, id: @print_spec_value
    end

    assert_redirected_to print_spec_values_path
  end
end

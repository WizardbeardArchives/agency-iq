require 'test_helper'

class IntItemsControllerTest < ActionController::TestCase
  setup do
    @int_item = int_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:int_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create int_item" do
    assert_difference('IntItem.count') do
      post :create, int_item: { INT_ADDED_BY: @int_item.INT_ADDED_BY, INT_ADDED_WHEN: @int_item.INT_ADDED_WHEN, INT_COST_EA: @int_item.INT_COST_EA, INT_DESC: @int_item.INT_DESC, INT_EDITED_BY: @int_item.INT_EDITED_BY, INT_EDITED_WHEN: @int_item.INT_EDITED_WHEN, INT_GROSS_EA: @int_item.INT_GROSS_EA, INT_ITEM: @int_item.INT_ITEM, INT_KEY: @int_item.INT_KEY, INT_SIZE: @int_item.INT_SIZE, INT_TASK: @int_item.INT_TASK, INT_UNIT: @int_item.INT_UNIT, primaryKey: @int_item.primaryKey }
    end

    assert_redirected_to int_item_path(assigns(:int_item))
  end

  test "should show int_item" do
    get :show, id: @int_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @int_item
    assert_response :success
  end

  test "should update int_item" do
    patch :update, id: @int_item, int_item: { INT_ADDED_BY: @int_item.INT_ADDED_BY, INT_ADDED_WHEN: @int_item.INT_ADDED_WHEN, INT_COST_EA: @int_item.INT_COST_EA, INT_DESC: @int_item.INT_DESC, INT_EDITED_BY: @int_item.INT_EDITED_BY, INT_EDITED_WHEN: @int_item.INT_EDITED_WHEN, INT_GROSS_EA: @int_item.INT_GROSS_EA, INT_ITEM: @int_item.INT_ITEM, INT_KEY: @int_item.INT_KEY, INT_SIZE: @int_item.INT_SIZE, INT_TASK: @int_item.INT_TASK, INT_UNIT: @int_item.INT_UNIT, primaryKey: @int_item.primaryKey }
    assert_redirected_to int_item_path(assigns(:int_item))
  end

  test "should destroy int_item" do
    assert_difference('IntItem.count', -1) do
      delete :destroy, id: @int_item
    end

    assert_redirected_to int_items_path
  end
end

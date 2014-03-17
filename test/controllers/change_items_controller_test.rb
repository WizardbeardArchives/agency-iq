require 'test_helper'

class ChangeItemsControllerTest < ActionController::TestCase
  setup do
    @change_item = change_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:change_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create change_item" do
    assert_difference('ChangeItem.count') do
      post :create, change_item: { CHX_ADDED_BY: @change_item.CHX_ADDED_BY, CHX_ADDED_WHEN: @change_item.CHX_ADDED_WHEN, CHX_BUDGET: @change_item.CHX_BUDGET, CHX_EDITED_BY: @change_item.CHX_EDITED_BY, CHX_EDITED_WHEN: @change_item.CHX_EDITED_WHEN, CHX_ESTIMATE: @change_item.CHX_ESTIMATE, CHX_HOURS: @change_item.CHX_HOURS, CHX_JOB_NUM: @change_item.CHX_JOB_NUM, CHX_NAME: @change_item.CHX_NAME, CHX_NOTES: @change_item.CHX_NOTES, CHX_NUM: @change_item.CHX_NUM, CHX_ROLLUP: @change_item.CHX_ROLLUP, CHX_TASK: @change_item.CHX_TASK, CHX_TAXABLE1: @change_item.CHX_TAXABLE1, CHX_TAXABLE2: @change_item.CHX_TAXABLE2, primaryKey: @change_item.primaryKey }
    end

    assert_redirected_to change_item_path(assigns(:change_item))
  end

  test "should show change_item" do
    get :show, id: @change_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @change_item
    assert_response :success
  end

  test "should update change_item" do
    patch :update, id: @change_item, change_item: { CHX_ADDED_BY: @change_item.CHX_ADDED_BY, CHX_ADDED_WHEN: @change_item.CHX_ADDED_WHEN, CHX_BUDGET: @change_item.CHX_BUDGET, CHX_EDITED_BY: @change_item.CHX_EDITED_BY, CHX_EDITED_WHEN: @change_item.CHX_EDITED_WHEN, CHX_ESTIMATE: @change_item.CHX_ESTIMATE, CHX_HOURS: @change_item.CHX_HOURS, CHX_JOB_NUM: @change_item.CHX_JOB_NUM, CHX_NAME: @change_item.CHX_NAME, CHX_NOTES: @change_item.CHX_NOTES, CHX_NUM: @change_item.CHX_NUM, CHX_ROLLUP: @change_item.CHX_ROLLUP, CHX_TASK: @change_item.CHX_TASK, CHX_TAXABLE1: @change_item.CHX_TAXABLE1, CHX_TAXABLE2: @change_item.CHX_TAXABLE2, primaryKey: @change_item.primaryKey }
    assert_redirected_to change_item_path(assigns(:change_item))
  end

  test "should destroy change_item" do
    assert_difference('ChangeItem.count', -1) do
      delete :destroy, id: @change_item
    end

    assert_redirected_to change_items_path
  end
end

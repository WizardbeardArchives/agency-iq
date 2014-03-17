require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  setup do
    @group = groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group" do
    assert_difference('Group.count') do
      post :create, group: { GROUP_ADDED_BY: @group.GROUP_ADDED_BY, GROUP_ADDED_WHEN: @group.GROUP_ADDED_WHEN, GROUP_CAT: @group.GROUP_CAT, GROUP_DESC: @group.GROUP_DESC, GROUP_EDITED_BY: @group.GROUP_EDITED_BY, GROUP_EDITED_WHEN: @group.GROUP_EDITED_WHEN, GROUP_NUM: @group.GROUP_NUM, primaryKey: @group.primaryKey }
    end

    assert_redirected_to group_path(assigns(:group))
  end

  test "should show group" do
    get :show, id: @group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group
    assert_response :success
  end

  test "should update group" do
    patch :update, id: @group, group: { GROUP_ADDED_BY: @group.GROUP_ADDED_BY, GROUP_ADDED_WHEN: @group.GROUP_ADDED_WHEN, GROUP_CAT: @group.GROUP_CAT, GROUP_DESC: @group.GROUP_DESC, GROUP_EDITED_BY: @group.GROUP_EDITED_BY, GROUP_EDITED_WHEN: @group.GROUP_EDITED_WHEN, GROUP_NUM: @group.GROUP_NUM, primaryKey: @group.primaryKey }
    assert_redirected_to group_path(assigns(:group))
  end

  test "should destroy group" do
    assert_difference('Group.count', -1) do
      delete :destroy, id: @group
    end

    assert_redirected_to groups_path
  end
end

require 'test_helper'

class AvailsControllerTest < ActionController::TestCase
  setup do
    @avail = avails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avail" do
    assert_difference('Avail.count') do
      post :create, avail: { AV_ADDED_BY: @avail.AV_ADDED_BY, AV_ADDED_WHEN: @avail.AV_ADDED_WHEN, AV_DATE: @avail.AV_DATE, AV_DESC: @avail.AV_DESC, AV_EDITED_BY: @avail.AV_EDITED_BY, AV_EDIT_WHEN: @avail.AV_EDIT_WHEN, AV_INITIALS: @avail.AV_INITIALS, AV_KEY: @avail.AV_KEY, AV_KIND: @avail.AV_KIND, AV_NOTE: @avail.AV_NOTE, primaryKey: @avail.primaryKey }
    end

    assert_redirected_to avail_path(assigns(:avail))
  end

  test "should show avail" do
    get :show, id: @avail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avail
    assert_response :success
  end

  test "should update avail" do
    patch :update, id: @avail, avail: { AV_ADDED_BY: @avail.AV_ADDED_BY, AV_ADDED_WHEN: @avail.AV_ADDED_WHEN, AV_DATE: @avail.AV_DATE, AV_DESC: @avail.AV_DESC, AV_EDITED_BY: @avail.AV_EDITED_BY, AV_EDIT_WHEN: @avail.AV_EDIT_WHEN, AV_INITIALS: @avail.AV_INITIALS, AV_KEY: @avail.AV_KEY, AV_KIND: @avail.AV_KIND, AV_NOTE: @avail.AV_NOTE, primaryKey: @avail.primaryKey }
    assert_redirected_to avail_path(assigns(:avail))
  end

  test "should destroy avail" do
    assert_difference('Avail.count', -1) do
      delete :destroy, id: @avail
    end

    assert_redirected_to avails_path
  end
end

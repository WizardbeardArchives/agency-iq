require 'test_helper'

class RatesControllerTest < ActionController::TestCase
  setup do
    @rate = rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rate" do
    assert_difference('Rate.count') do
      post :create, rate: { RATE_ADDED_BY: @rate.RATE_ADDED_BY, RATE_ADDED_WHEN: @rate.RATE_ADDED_WHEN, RATE_CLIENT_NUM: @rate.RATE_CLIENT_NUM, RATE_EDITED_BY: @rate.RATE_EDITED_BY, RATE_EDITED_WHEN: @rate.RATE_EDITED_WHEN, RATE_KEY: @rate.RATE_KEY, RATE_NOTE: @rate.RATE_NOTE, RATE_STAFF: @rate.RATE_STAFF, RATE_TASK: @rate.RATE_TASK, SPECIAL_RATE: @rate.SPECIAL_RATE, primaryKey: @rate.primaryKey }
    end

    assert_redirected_to rate_path(assigns(:rate))
  end

  test "should show rate" do
    get :show, id: @rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rate
    assert_response :success
  end

  test "should update rate" do
    patch :update, id: @rate, rate: { RATE_ADDED_BY: @rate.RATE_ADDED_BY, RATE_ADDED_WHEN: @rate.RATE_ADDED_WHEN, RATE_CLIENT_NUM: @rate.RATE_CLIENT_NUM, RATE_EDITED_BY: @rate.RATE_EDITED_BY, RATE_EDITED_WHEN: @rate.RATE_EDITED_WHEN, RATE_KEY: @rate.RATE_KEY, RATE_NOTE: @rate.RATE_NOTE, RATE_STAFF: @rate.RATE_STAFF, RATE_TASK: @rate.RATE_TASK, SPECIAL_RATE: @rate.SPECIAL_RATE, primaryKey: @rate.primaryKey }
    assert_redirected_to rate_path(assigns(:rate))
  end

  test "should destroy rate" do
    assert_difference('Rate.count', -1) do
      delete :destroy, id: @rate
    end

    assert_redirected_to rates_path
  end
end

require 'test_helper'

class ThoughtsControllerTest < ActionController::TestCase
  setup do
    @thought = thoughts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thoughts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thought" do
    assert_difference('Thought.count') do
      post :create, thought: { MSG_1: @thought.MSG_1, MSG_DAILY_INFO_CTR: @thought.MSG_DAILY_INFO_CTR, MSG_DATE: @thought.MSG_DATE, MSG_TEXT: @thought.MSG_TEXT, primaryKey: @thought.primaryKey }
    end

    assert_redirected_to thought_path(assigns(:thought))
  end

  test "should show thought" do
    get :show, id: @thought
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thought
    assert_response :success
  end

  test "should update thought" do
    patch :update, id: @thought, thought: { MSG_1: @thought.MSG_1, MSG_DAILY_INFO_CTR: @thought.MSG_DAILY_INFO_CTR, MSG_DATE: @thought.MSG_DATE, MSG_TEXT: @thought.MSG_TEXT, primaryKey: @thought.primaryKey }
    assert_redirected_to thought_path(assigns(:thought))
  end

  test "should destroy thought" do
    assert_difference('Thought.count', -1) do
      delete :destroy, id: @thought
    end

    assert_redirected_to thoughts_path
  end
end

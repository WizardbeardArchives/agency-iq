require 'test_helper'

class HomeCommentsControllerTest < ActionController::TestCase
  setup do
    @home_comment = home_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_comment" do
    assert_difference('HomeComment.count') do
      post :create, home_comment: { COMMENT_ADDED_BY: @home_comment.COMMENT_ADDED_BY, COMMENT_ADDED_KIND: @home_comment.COMMENT_ADDED_KIND, COMMENT_CHOICE: @home_comment.COMMENT_CHOICE, COMMENT_DATE_ADDED: @home_comment.COMMENT_DATE_ADDED, COMMENT_FILE_NAME: @home_comment.COMMENT_FILE_NAME, COMMENT_FINAL: @home_comment.COMMENT_FINAL, COMMENT_HOME__SEQ: @home_comment.COMMENT_HOME__SEQ, COMMENT_JOB_NUM: @home_comment.COMMENT_JOB_NUM, COMMENT_KIND: @home_comment.COMMENT_KIND, COMMENT_LOCKED: @home_comment.COMMENT_LOCKED, COMMENT_MESSAGE: @home_comment.COMMENT_MESSAGE, COMMENT_PING: @home_comment.COMMENT_PING, COMMENT_PRIORITY: @home_comment.COMMENT_PRIORITY, COMMENT_PRIVATE1: @home_comment.COMMENT_PRIVATE1, COMMENT_PRIVATE2: @home_comment.COMMENT_PRIVATE2, COMMENT_PROD_STATUS: @home_comment.COMMENT_PROD_STATUS, COMMENT_RATING: @home_comment.COMMENT_RATING, COMMENT_REPLY: @home_comment.COMMENT_REPLY, COMMENT_SORT: @home_comment.COMMENT_SORT, COMMENT_STAR: @home_comment.COMMENT_STAR, COMMENT_TASK: @home_comment.COMMENT_TASK, COMMENT_X_PHASE: @home_comment.COMMENT_X_PHASE, primaryKey: @home_comment.primaryKey }
    end

    assert_redirected_to home_comment_path(assigns(:home_comment))
  end

  test "should show home_comment" do
    get :show, id: @home_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_comment
    assert_response :success
  end

  test "should update home_comment" do
    patch :update, id: @home_comment, home_comment: { COMMENT_ADDED_BY: @home_comment.COMMENT_ADDED_BY, COMMENT_ADDED_KIND: @home_comment.COMMENT_ADDED_KIND, COMMENT_CHOICE: @home_comment.COMMENT_CHOICE, COMMENT_DATE_ADDED: @home_comment.COMMENT_DATE_ADDED, COMMENT_FILE_NAME: @home_comment.COMMENT_FILE_NAME, COMMENT_FINAL: @home_comment.COMMENT_FINAL, COMMENT_HOME__SEQ: @home_comment.COMMENT_HOME__SEQ, COMMENT_JOB_NUM: @home_comment.COMMENT_JOB_NUM, COMMENT_KIND: @home_comment.COMMENT_KIND, COMMENT_LOCKED: @home_comment.COMMENT_LOCKED, COMMENT_MESSAGE: @home_comment.COMMENT_MESSAGE, COMMENT_PING: @home_comment.COMMENT_PING, COMMENT_PRIORITY: @home_comment.COMMENT_PRIORITY, COMMENT_PRIVATE1: @home_comment.COMMENT_PRIVATE1, COMMENT_PRIVATE2: @home_comment.COMMENT_PRIVATE2, COMMENT_PROD_STATUS: @home_comment.COMMENT_PROD_STATUS, COMMENT_RATING: @home_comment.COMMENT_RATING, COMMENT_REPLY: @home_comment.COMMENT_REPLY, COMMENT_SORT: @home_comment.COMMENT_SORT, COMMENT_STAR: @home_comment.COMMENT_STAR, COMMENT_TASK: @home_comment.COMMENT_TASK, COMMENT_X_PHASE: @home_comment.COMMENT_X_PHASE, primaryKey: @home_comment.primaryKey }
    assert_redirected_to home_comment_path(assigns(:home_comment))
  end

  test "should destroy home_comment" do
    assert_difference('HomeComment.count', -1) do
      delete :destroy, id: @home_comment
    end

    assert_redirected_to home_comments_path
  end
end

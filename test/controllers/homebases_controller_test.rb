require 'test_helper'

class HomebasesControllerTest < ActionController::TestCase
  setup do
    @homebasis = homebases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homebases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homebasis" do
    assert_difference('Homebase.count') do
      post :create, homebasis: { HOME_ADDED_BY: @homebasis.HOME_ADDED_BY, HOME_ADDED_KIND: @homebasis.HOME_ADDED_KIND, HOME_AVAIL_CLIENTS: @homebasis.HOME_AVAIL_CLIENTS, HOME_AVAIL_CREATIVE: @homebasis.HOME_AVAIL_CREATIVE, HOME_AVAIL_PROD: @homebasis.HOME_AVAIL_PROD, HOME_AVAIL_STAFF: @homebasis.HOME_AVAIL_STAFF, HOME_AVAIL_VENDORS: @homebasis.HOME_AVAIL_VENDORS, HOME_CHOICE1: @homebasis.HOME_CHOICE1, HOME_CHOICE2: @homebasis.HOME_CHOICE2, HOME_CHOICE3: @homebasis.HOME_CHOICE3, HOME_CHOICE4: @homebasis.HOME_CHOICE4, HOME_CHOICE5: @homebasis.HOME_CHOICE5, HOME_CHOICE6: @homebasis.HOME_CHOICE6, HOME_COMMENT: @homebasis.HOME_COMMENT, HOME_DATE_ADDED: @homebasis.HOME_DATE_ADDED, HOME_DUE_DATE: @homebasis.HOME_DUE_DATE, HOME_EMAIL_IT: @homebasis.HOME_EMAIL_IT, HOME_FILE_NAME: @homebasis.HOME_FILE_NAME, HOME_JOB_NUM: @homebasis.HOME_JOB_NUM, HOME_KIND: @homebasis.HOME_KIND, HOME_LAST_REPLY: @homebasis.HOME_LAST_REPLY, HOME_LOCKED: @homebasis.HOME_LOCKED, HOME_MESSAGE: @homebasis.HOME_MESSAGE, HOME_ORIG__SEQ: @homebasis.HOME_ORIG__SEQ, HOME_PRIORITY: @homebasis.HOME_PRIORITY, HOME_PRIVATE1: @homebasis.HOME_PRIVATE1, HOME_PRIVATE2: @homebasis.HOME_PRIVATE2, HOME_PROD_STATUS: @homebasis.HOME_PROD_STATUS, HOME_RATING: @homebasis.HOME_RATING, HOME_REPLY: @homebasis.HOME_REPLY, HOME_SORT: @homebasis.HOME_SORT, HOME_STATUS: @homebasis.HOME_STATUS, HOME_SUBJECT: @homebasis.HOME_SUBJECT, HOME_S_INITIALS: @homebasis.HOME_S_INITIALS, HOME_TASK: @homebasis.HOME_TASK, HOME_X_PHASE: @homebasis.HOME_X_PHASE, primaryKey: @homebasis.primaryKey }
    end

    assert_redirected_to homebasis_path(assigns(:homebasis))
  end

  test "should show homebasis" do
    get :show, id: @homebasis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homebasis
    assert_response :success
  end

  test "should update homebasis" do
    patch :update, id: @homebasis, homebasis: { HOME_ADDED_BY: @homebasis.HOME_ADDED_BY, HOME_ADDED_KIND: @homebasis.HOME_ADDED_KIND, HOME_AVAIL_CLIENTS: @homebasis.HOME_AVAIL_CLIENTS, HOME_AVAIL_CREATIVE: @homebasis.HOME_AVAIL_CREATIVE, HOME_AVAIL_PROD: @homebasis.HOME_AVAIL_PROD, HOME_AVAIL_STAFF: @homebasis.HOME_AVAIL_STAFF, HOME_AVAIL_VENDORS: @homebasis.HOME_AVAIL_VENDORS, HOME_CHOICE1: @homebasis.HOME_CHOICE1, HOME_CHOICE2: @homebasis.HOME_CHOICE2, HOME_CHOICE3: @homebasis.HOME_CHOICE3, HOME_CHOICE4: @homebasis.HOME_CHOICE4, HOME_CHOICE5: @homebasis.HOME_CHOICE5, HOME_CHOICE6: @homebasis.HOME_CHOICE6, HOME_COMMENT: @homebasis.HOME_COMMENT, HOME_DATE_ADDED: @homebasis.HOME_DATE_ADDED, HOME_DUE_DATE: @homebasis.HOME_DUE_DATE, HOME_EMAIL_IT: @homebasis.HOME_EMAIL_IT, HOME_FILE_NAME: @homebasis.HOME_FILE_NAME, HOME_JOB_NUM: @homebasis.HOME_JOB_NUM, HOME_KIND: @homebasis.HOME_KIND, HOME_LAST_REPLY: @homebasis.HOME_LAST_REPLY, HOME_LOCKED: @homebasis.HOME_LOCKED, HOME_MESSAGE: @homebasis.HOME_MESSAGE, HOME_ORIG__SEQ: @homebasis.HOME_ORIG__SEQ, HOME_PRIORITY: @homebasis.HOME_PRIORITY, HOME_PRIVATE1: @homebasis.HOME_PRIVATE1, HOME_PRIVATE2: @homebasis.HOME_PRIVATE2, HOME_PROD_STATUS: @homebasis.HOME_PROD_STATUS, HOME_RATING: @homebasis.HOME_RATING, HOME_REPLY: @homebasis.HOME_REPLY, HOME_SORT: @homebasis.HOME_SORT, HOME_STATUS: @homebasis.HOME_STATUS, HOME_SUBJECT: @homebasis.HOME_SUBJECT, HOME_S_INITIALS: @homebasis.HOME_S_INITIALS, HOME_TASK: @homebasis.HOME_TASK, HOME_X_PHASE: @homebasis.HOME_X_PHASE, primaryKey: @homebasis.primaryKey }
    assert_redirected_to homebasis_path(assigns(:homebasis))
  end

  test "should destroy homebasis" do
    assert_difference('Homebase.count', -1) do
      delete :destroy, id: @homebasis
    end

    assert_redirected_to homebases_path
  end
end

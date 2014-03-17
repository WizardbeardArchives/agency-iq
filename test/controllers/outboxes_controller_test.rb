require 'test_helper'

class OutboxesControllerTest < ActionController::TestCase
  setup do
    @outbox = outboxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outboxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outbox" do
    assert_difference('Outbox.count') do
      post :create, outbox: { OUT_ADDED_BY: @outbox.OUT_ADDED_BY, OUT_ATTACHMENT: @outbox.OUT_ATTACHMENT, OUT_BCC: @outbox.OUT_BCC, OUT_BODY: @outbox.OUT_BODY, OUT_CC: @outbox.OUT_CC, OUT_DATE_ADDED: @outbox.OUT_DATE_ADDED, OUT_FROM_EMAIL: @outbox.OUT_FROM_EMAIL, OUT_OK: @outbox.OUT_OK, OUT_REAL_NAME: @outbox.OUT_REAL_NAME, OUT_SEND_DATE: @outbox.OUT_SEND_DATE, OUT_SUBJECT: @outbox.OUT_SUBJECT, OUT_TO_EMAIL: @outbox.OUT_TO_EMAIL, primaryKey: @outbox.primaryKey }
    end

    assert_redirected_to outbox_path(assigns(:outbox))
  end

  test "should show outbox" do
    get :show, id: @outbox
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outbox
    assert_response :success
  end

  test "should update outbox" do
    patch :update, id: @outbox, outbox: { OUT_ADDED_BY: @outbox.OUT_ADDED_BY, OUT_ATTACHMENT: @outbox.OUT_ATTACHMENT, OUT_BCC: @outbox.OUT_BCC, OUT_BODY: @outbox.OUT_BODY, OUT_CC: @outbox.OUT_CC, OUT_DATE_ADDED: @outbox.OUT_DATE_ADDED, OUT_FROM_EMAIL: @outbox.OUT_FROM_EMAIL, OUT_OK: @outbox.OUT_OK, OUT_REAL_NAME: @outbox.OUT_REAL_NAME, OUT_SEND_DATE: @outbox.OUT_SEND_DATE, OUT_SUBJECT: @outbox.OUT_SUBJECT, OUT_TO_EMAIL: @outbox.OUT_TO_EMAIL, primaryKey: @outbox.primaryKey }
    assert_redirected_to outbox_path(assigns(:outbox))
  end

  test "should destroy outbox" do
    assert_difference('Outbox.count', -1) do
      delete :destroy, id: @outbox
    end

    assert_redirected_to outboxes_path
  end
end

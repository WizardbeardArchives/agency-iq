require 'test_helper'

class HistoryClientsControllerTest < ActionController::TestCase
  setup do
    @history_client = history_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:history_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history_client" do
    assert_difference('HistoryClient.count') do
      post :create, history_client: { HC_ADDED_BY: @history_client.HC_ADDED_BY, HC_AUTO_DIARY: @history_client.HC_AUTO_DIARY, HC_BCC: @history_client.HC_BCC, HC_CC: @history_client.HC_CC, HC_CLIENT_NUM: @history_client.HC_CLIENT_NUM, HC_DATE: @history_client.HC_DATE, HC_DESC: @history_client.HC_DESC, HC_EDITED_BY: @history_client.HC_EDITED_BY, HC_EDITED_WHEN: @history_client.HC_EDITED_WHEN, HC_FOR: @history_client.HC_FOR, HC_INV_NUM: @history_client.HC_INV_NUM, HC_KIND: @history_client.HC_KIND, HC_MAIL_TO: @history_client.HC_MAIL_TO, HC_NOTIFIED: @history_client.HC_NOTIFIED, HC_NUM: @history_client.HC_NUM, HC_OK: @history_client.HC_OK, HC_SUBJECT: @history_client.HC_SUBJECT, primaryKey: @history_client.primaryKey }
    end

    assert_redirected_to history_client_path(assigns(:history_client))
  end

  test "should show history_client" do
    get :show, id: @history_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @history_client
    assert_response :success
  end

  test "should update history_client" do
    patch :update, id: @history_client, history_client: { HC_ADDED_BY: @history_client.HC_ADDED_BY, HC_AUTO_DIARY: @history_client.HC_AUTO_DIARY, HC_BCC: @history_client.HC_BCC, HC_CC: @history_client.HC_CC, HC_CLIENT_NUM: @history_client.HC_CLIENT_NUM, HC_DATE: @history_client.HC_DATE, HC_DESC: @history_client.HC_DESC, HC_EDITED_BY: @history_client.HC_EDITED_BY, HC_EDITED_WHEN: @history_client.HC_EDITED_WHEN, HC_FOR: @history_client.HC_FOR, HC_INV_NUM: @history_client.HC_INV_NUM, HC_KIND: @history_client.HC_KIND, HC_MAIL_TO: @history_client.HC_MAIL_TO, HC_NOTIFIED: @history_client.HC_NOTIFIED, HC_NUM: @history_client.HC_NUM, HC_OK: @history_client.HC_OK, HC_SUBJECT: @history_client.HC_SUBJECT, primaryKey: @history_client.primaryKey }
    assert_redirected_to history_client_path(assigns(:history_client))
  end

  test "should destroy history_client" do
    assert_difference('HistoryClient.count', -1) do
      delete :destroy, id: @history_client
    end

    assert_redirected_to history_clients_path
  end
end

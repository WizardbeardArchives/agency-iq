require 'test_helper'

class WebPrefsControllerTest < ActionController::TestCase
  setup do
    @web_pref = web_prefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_prefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_pref" do
    assert_difference('WebPref.count') do
      post :create, web_pref: { ALT_SOCKET: @web_pref.ALT_SOCKET, BYTES_RECEIVED: @web_pref.BYTES_RECEIVED, BYTES_SENT: @web_pref.BYTES_SENT, CAL_DAY: @web_pref.CAL_DAY, CAL_MODE: @web_pref.CAL_MODE, CAL_MONTH: @web_pref.CAL_MONTH, CAL_YEAR: @web_pref.CAL_YEAR, CGL_NAME: @web_pref.CGL_NAME, DGL_NAME: @web_pref.DGL_NAME, EST_REVISION: @web_pref.EST_REVISION, FINAL_ESTIMATE: @web_pref.FINAL_ESTIMATE, GREETING: @web_pref.GREETING, HEADER_LIST: @web_pref.HEADER_LIST, HIT_DURATION: @web_pref.HIT_DURATION, JOB_NAME: @web_pref.JOB_NAME, KIND: @web_pref.KIND, LOOKUP2: @web_pref.LOOKUP2, LOOKUP3: @web_pref.LOOKUP3, LOOKUP4: @web_pref.LOOKUP4, LOOKUP5: @web_pref.LOOKUP5, LOOKUP6: @web_pref.LOOKUP6, LOOKUP_JOBS: @web_pref.LOOKUP_JOBS, MESSAGE_DATA: @web_pref.MESSAGE_DATA, POSTED: @web_pref.POSTED, QUERY_DURATION: @web_pref.QUERY_DURATION, STATUS_DESC1: @web_pref.STATUS_DESC1, STATUS_DESC2: @web_pref.STATUS_DESC2, TASK_KIND: @web_pref.TASK_KIND, TASK_NAME: @web_pref.TASK_NAME, TRANSACTION_TYPE: @web_pref.TRANSACTION_TYPE, TYPE: @web_pref.TYPE, VER: @web_pref.VER, WP_ALERT_ERROR: @web_pref.WP_ALERT_ERROR, WP_ALERT_ID: @web_pref.WP_ALERT_ID, WP_ALERT_LOGON: @web_pref.WP_ALERT_LOGON, WP_ALERT_PW: @web_pref.WP_ALERT_PW, WP_AUTO_ARCHIVE_LOG: @web_pref.WP_AUTO_ARCHIVE_LOG, WP_AUTO_START: @web_pref.WP_AUTO_START, WP_AUTO_START_MY: @web_pref.WP_AUTO_START_MY, WP_BACKUP: @web_pref.WP_BACKUP, WP_BELL_ON_HITS: @web_pref.WP_BELL_ON_HITS, WP_BOXR_EMAIL: @web_pref.WP_BOXR_EMAIL, WP_BOXR_PW: @web_pref.WP_BOXR_PW, WP_BOXR_SERVER: @web_pref.WP_BOXR_SERVER, WP_BOXR_USERNAME: @web_pref.WP_BOXR_USERNAME, WP_CLOSE_TIME: @web_pref.WP_CLOSE_TIME, WP_CURRENT_EVENT: @web_pref.WP_CURRENT_EVENT, WP_DATE: @web_pref.WP_DATE, WP_DATETIME: @web_pref.WP_DATETIME, WP_DISABLE_BAD_LOGIN: @web_pref.WP_DISABLE_BAD_LOGIN, WP_DISABLE_LOG: @web_pref.WP_DISABLE_LOG, WP_DISCONNECT: @web_pref.WP_DISCONNECT, WP_EDITED_BY: @web_pref.WP_EDITED_BY, WP_EDITED_WHEN: @web_pref.WP_EDITED_WHEN, WP_FONT_CLOSE: @web_pref.WP_FONT_CLOSE, WP_FONT_OPEN: @web_pref.WP_FONT_OPEN, WP_JS_SERVER: @web_pref.WP_JS_SERVER, WP_LAST_ARCHIVE: @web_pref.WP_LAST_ARCHIVE, WP_LOGO_LINK: @web_pref.WP_LOGO_LINK, WP_LOGO_URL: @web_pref.WP_LOGO_URL, WP_LOG_IP_ERRORS: @web_pref.WP_LOG_IP_ERRORS, WP_OPEN_TIME: @web_pref.WP_OPEN_TIME, WP_PORT_NUMBER: @web_pref.WP_PORT_NUMBER, WP_REMOTE_ADMIN: @web_pref.WP_REMOTE_ADMIN, WP_REMOTE_ADMIN_IP: @web_pref.WP_REMOTE_ADMIN_IP, WP_SHOW_DATE: @web_pref.WP_SHOW_DATE, WP_SMTP_AUTH_ID: @web_pref.WP_SMTP_AUTH_ID, WP_SMTP_AUTH_PW: @web_pref.WP_SMTP_AUTH_PW, WP_SMTP_PORT: @web_pref.WP_SMTP_PORT, WP_SMTP_SERVER: @web_pref.WP_SMTP_SERVER, WP_SMTP_SSL_TYPE: @web_pref.WP_SMTP_SSL_TYPE, WP_SSL: @web_pref.WP_SSL, WP_USER: @web_pref.WP_USER, WP_WEBMASTER: @web_pref.WP_WEBMASTER, WP_WEBMSTR_EMAIL: @web_pref.WP_WEBMSTR_EMAIL, primaryKey: @web_pref.primaryKey }
    end

    assert_redirected_to web_pref_path(assigns(:web_pref))
  end

  test "should show web_pref" do
    get :show, id: @web_pref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_pref
    assert_response :success
  end

  test "should update web_pref" do
    patch :update, id: @web_pref, web_pref: { ALT_SOCKET: @web_pref.ALT_SOCKET, BYTES_RECEIVED: @web_pref.BYTES_RECEIVED, BYTES_SENT: @web_pref.BYTES_SENT, CAL_DAY: @web_pref.CAL_DAY, CAL_MODE: @web_pref.CAL_MODE, CAL_MONTH: @web_pref.CAL_MONTH, CAL_YEAR: @web_pref.CAL_YEAR, CGL_NAME: @web_pref.CGL_NAME, DGL_NAME: @web_pref.DGL_NAME, EST_REVISION: @web_pref.EST_REVISION, FINAL_ESTIMATE: @web_pref.FINAL_ESTIMATE, GREETING: @web_pref.GREETING, HEADER_LIST: @web_pref.HEADER_LIST, HIT_DURATION: @web_pref.HIT_DURATION, JOB_NAME: @web_pref.JOB_NAME, KIND: @web_pref.KIND, LOOKUP2: @web_pref.LOOKUP2, LOOKUP3: @web_pref.LOOKUP3, LOOKUP4: @web_pref.LOOKUP4, LOOKUP5: @web_pref.LOOKUP5, LOOKUP6: @web_pref.LOOKUP6, LOOKUP_JOBS: @web_pref.LOOKUP_JOBS, MESSAGE_DATA: @web_pref.MESSAGE_DATA, POSTED: @web_pref.POSTED, QUERY_DURATION: @web_pref.QUERY_DURATION, STATUS_DESC1: @web_pref.STATUS_DESC1, STATUS_DESC2: @web_pref.STATUS_DESC2, TASK_KIND: @web_pref.TASK_KIND, TASK_NAME: @web_pref.TASK_NAME, TRANSACTION_TYPE: @web_pref.TRANSACTION_TYPE, TYPE: @web_pref.TYPE, VER: @web_pref.VER, WP_ALERT_ERROR: @web_pref.WP_ALERT_ERROR, WP_ALERT_ID: @web_pref.WP_ALERT_ID, WP_ALERT_LOGON: @web_pref.WP_ALERT_LOGON, WP_ALERT_PW: @web_pref.WP_ALERT_PW, WP_AUTO_ARCHIVE_LOG: @web_pref.WP_AUTO_ARCHIVE_LOG, WP_AUTO_START: @web_pref.WP_AUTO_START, WP_AUTO_START_MY: @web_pref.WP_AUTO_START_MY, WP_BACKUP: @web_pref.WP_BACKUP, WP_BELL_ON_HITS: @web_pref.WP_BELL_ON_HITS, WP_BOXR_EMAIL: @web_pref.WP_BOXR_EMAIL, WP_BOXR_PW: @web_pref.WP_BOXR_PW, WP_BOXR_SERVER: @web_pref.WP_BOXR_SERVER, WP_BOXR_USERNAME: @web_pref.WP_BOXR_USERNAME, WP_CLOSE_TIME: @web_pref.WP_CLOSE_TIME, WP_CURRENT_EVENT: @web_pref.WP_CURRENT_EVENT, WP_DATE: @web_pref.WP_DATE, WP_DATETIME: @web_pref.WP_DATETIME, WP_DISABLE_BAD_LOGIN: @web_pref.WP_DISABLE_BAD_LOGIN, WP_DISABLE_LOG: @web_pref.WP_DISABLE_LOG, WP_DISCONNECT: @web_pref.WP_DISCONNECT, WP_EDITED_BY: @web_pref.WP_EDITED_BY, WP_EDITED_WHEN: @web_pref.WP_EDITED_WHEN, WP_FONT_CLOSE: @web_pref.WP_FONT_CLOSE, WP_FONT_OPEN: @web_pref.WP_FONT_OPEN, WP_JS_SERVER: @web_pref.WP_JS_SERVER, WP_LAST_ARCHIVE: @web_pref.WP_LAST_ARCHIVE, WP_LOGO_LINK: @web_pref.WP_LOGO_LINK, WP_LOGO_URL: @web_pref.WP_LOGO_URL, WP_LOG_IP_ERRORS: @web_pref.WP_LOG_IP_ERRORS, WP_OPEN_TIME: @web_pref.WP_OPEN_TIME, WP_PORT_NUMBER: @web_pref.WP_PORT_NUMBER, WP_REMOTE_ADMIN: @web_pref.WP_REMOTE_ADMIN, WP_REMOTE_ADMIN_IP: @web_pref.WP_REMOTE_ADMIN_IP, WP_SHOW_DATE: @web_pref.WP_SHOW_DATE, WP_SMTP_AUTH_ID: @web_pref.WP_SMTP_AUTH_ID, WP_SMTP_AUTH_PW: @web_pref.WP_SMTP_AUTH_PW, WP_SMTP_PORT: @web_pref.WP_SMTP_PORT, WP_SMTP_SERVER: @web_pref.WP_SMTP_SERVER, WP_SMTP_SSL_TYPE: @web_pref.WP_SMTP_SSL_TYPE, WP_SSL: @web_pref.WP_SSL, WP_USER: @web_pref.WP_USER, WP_WEBMASTER: @web_pref.WP_WEBMASTER, WP_WEBMSTR_EMAIL: @web_pref.WP_WEBMSTR_EMAIL, primaryKey: @web_pref.primaryKey }
    assert_redirected_to web_pref_path(assigns(:web_pref))
  end

  test "should destroy web_pref" do
    assert_difference('WebPref.count', -1) do
      delete :destroy, id: @web_pref
    end

    assert_redirected_to web_prefs_path
  end
end

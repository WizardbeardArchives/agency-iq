require 'test_helper'

class MlinkPrefsControllerTest < ActionController::TestCase
  setup do
    @mlink_pref = mlink_prefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mlink_prefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mlink_pref" do
    assert_difference('MlinkPref.count') do
      post :create, mlink_pref: { MLINK_AFTER_PREF: @mlink_pref.MLINK_AFTER_PREF, MLINK_AMT: @mlink_pref.MLINK_AMT, MLINK_AUTO_IMPORT: @mlink_pref.MLINK_AUTO_IMPORT, MLINK_BELL: @mlink_pref.MLINK_BELL, MLINK_BROAD_COMM: @mlink_pref.MLINK_BROAD_COMM, MLINK_CLIENTS_PREF: @mlink_pref.MLINK_CLIENTS_PREF, MLINK_COUNT_TODAY: @mlink_pref.MLINK_COUNT_TODAY, MLINK_COUNT_TOTAL: @mlink_pref.MLINK_COUNT_TOTAL, MLINK_DATE: @mlink_pref.MLINK_DATE, MLINK_EDITED_BY: @mlink_pref.MLINK_EDITED_BY, MLINK_EDITED_WHEN: @mlink_pref.MLINK_EDITED_WHEN, MLINK_EMAIL_ADDRESS: @mlink_pref.MLINK_EMAIL_ADDRESS, MLINK_EMAIL_NAME: @mlink_pref.MLINK_EMAIL_NAME, MLINK_ENABLE_LOG: @mlink_pref.MLINK_ENABLE_LOG, MLINK_IMPORT_EVERY: @mlink_pref.MLINK_IMPORT_EVERY, MLINK_IMPORT_INTERVAL: @mlink_pref.MLINK_IMPORT_INTERVAL, MLINK_IMPORT_MINUTES: @mlink_pref.MLINK_IMPORT_MINUTES, MLINK_IMPORT_TIME: @mlink_pref.MLINK_IMPORT_TIME, MLINK_LAST_IMPORT: @mlink_pref.MLINK_LAST_IMPORT, MLINK_MOVE_PATH: @mlink_pref.MLINK_MOVE_PATH, MLINK_NOTIFY: @mlink_pref.MLINK_NOTIFY, MLINK_PATH: @mlink_pref.MLINK_PATH, MLINK_PRINT_BILL_NET: @mlink_pref.MLINK_PRINT_BILL_NET, MLINK_PRINT_COMM: @mlink_pref.MLINK_PRINT_COMM, MLINK_STATUS: @mlink_pref.MLINK_STATUS, MLINK_SYSTEM: @mlink_pref.MLINK_SYSTEM, MLINK_TV_BILL_NET: @mlink_pref.MLINK_TV_BILL_NET, MLINK_VENDORS_PREF: @mlink_pref.MLINK_VENDORS_PREF, primaryKey: @mlink_pref.primaryKey }
    end

    assert_redirected_to mlink_pref_path(assigns(:mlink_pref))
  end

  test "should show mlink_pref" do
    get :show, id: @mlink_pref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mlink_pref
    assert_response :success
  end

  test "should update mlink_pref" do
    patch :update, id: @mlink_pref, mlink_pref: { MLINK_AFTER_PREF: @mlink_pref.MLINK_AFTER_PREF, MLINK_AMT: @mlink_pref.MLINK_AMT, MLINK_AUTO_IMPORT: @mlink_pref.MLINK_AUTO_IMPORT, MLINK_BELL: @mlink_pref.MLINK_BELL, MLINK_BROAD_COMM: @mlink_pref.MLINK_BROAD_COMM, MLINK_CLIENTS_PREF: @mlink_pref.MLINK_CLIENTS_PREF, MLINK_COUNT_TODAY: @mlink_pref.MLINK_COUNT_TODAY, MLINK_COUNT_TOTAL: @mlink_pref.MLINK_COUNT_TOTAL, MLINK_DATE: @mlink_pref.MLINK_DATE, MLINK_EDITED_BY: @mlink_pref.MLINK_EDITED_BY, MLINK_EDITED_WHEN: @mlink_pref.MLINK_EDITED_WHEN, MLINK_EMAIL_ADDRESS: @mlink_pref.MLINK_EMAIL_ADDRESS, MLINK_EMAIL_NAME: @mlink_pref.MLINK_EMAIL_NAME, MLINK_ENABLE_LOG: @mlink_pref.MLINK_ENABLE_LOG, MLINK_IMPORT_EVERY: @mlink_pref.MLINK_IMPORT_EVERY, MLINK_IMPORT_INTERVAL: @mlink_pref.MLINK_IMPORT_INTERVAL, MLINK_IMPORT_MINUTES: @mlink_pref.MLINK_IMPORT_MINUTES, MLINK_IMPORT_TIME: @mlink_pref.MLINK_IMPORT_TIME, MLINK_LAST_IMPORT: @mlink_pref.MLINK_LAST_IMPORT, MLINK_MOVE_PATH: @mlink_pref.MLINK_MOVE_PATH, MLINK_NOTIFY: @mlink_pref.MLINK_NOTIFY, MLINK_PATH: @mlink_pref.MLINK_PATH, MLINK_PRINT_BILL_NET: @mlink_pref.MLINK_PRINT_BILL_NET, MLINK_PRINT_COMM: @mlink_pref.MLINK_PRINT_COMM, MLINK_STATUS: @mlink_pref.MLINK_STATUS, MLINK_SYSTEM: @mlink_pref.MLINK_SYSTEM, MLINK_TV_BILL_NET: @mlink_pref.MLINK_TV_BILL_NET, MLINK_VENDORS_PREF: @mlink_pref.MLINK_VENDORS_PREF, primaryKey: @mlink_pref.primaryKey }
    assert_redirected_to mlink_pref_path(assigns(:mlink_pref))
  end

  test "should destroy mlink_pref" do
    assert_difference('MlinkPref.count', -1) do
      delete :destroy, id: @mlink_pref
    end

    assert_redirected_to mlink_prefs_path
  end
end

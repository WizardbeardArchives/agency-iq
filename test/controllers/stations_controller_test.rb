require 'test_helper'

class StationsControllerTest < ActionController::TestCase
  setup do
    @station = stations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create station" do
    assert_difference('Station.count') do
      post :create, station: { PUB_ADDED_BY: @station.PUB_ADDED_BY, PUB_ADDED_WHEN: @station.PUB_ADDED_WHEN, PUB_ADDRESS1: @station.PUB_ADDRESS1, PUB_ADDRESS2: @station.PUB_ADDRESS2, PUB_ADDRESS3: @station.PUB_ADDRESS3, PUB_ADDRESS4: @station.PUB_ADDRESS4, PUB_CIRC: @station.PUB_CIRC, PUB_CLOSE_DATE: @station.PUB_CLOSE_DATE, PUB_CODE: @station.PUB_CODE, PUB_COMM_PC: @station.PUB_COMM_PC, PUB_EDITED_BY: @station.PUB_EDITED_BY, PUB_EDITED_WHEN: @station.PUB_EDITED_WHEN, PUB_FAX: @station.PUB_FAX, PUB_ISSUE_DATE: @station.PUB_ISSUE_DATE, PUB_MARKET: @station.PUB_MARKET, PUB_NAME: @station.PUB_NAME, PUB_NOTE: @station.PUB_NOTE, PUB_PHONE: @station.PUB_PHONE, PUB_REP: @station.PUB_REP, PUB_REP_ADDRESS1: @station.PUB_REP_ADDRESS1, PUB_REP_ADDRESS2: @station.PUB_REP_ADDRESS2, PUB_REP_ADDRESS3: @station.PUB_REP_ADDRESS3, PUB_REP_ADDRESS4: @station.PUB_REP_ADDRESS4, PUB_REP_ADDRESS5: @station.PUB_REP_ADDRESS5, PUB_TYPE: @station.PUB_TYPE, PUB_VENDOR_NUM: @station.PUB_VENDOR_NUM, primaryKey: @station.primaryKey }
    end

    assert_redirected_to station_path(assigns(:station))
  end

  test "should show station" do
    get :show, id: @station
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @station
    assert_response :success
  end

  test "should update station" do
    patch :update, id: @station, station: { PUB_ADDED_BY: @station.PUB_ADDED_BY, PUB_ADDED_WHEN: @station.PUB_ADDED_WHEN, PUB_ADDRESS1: @station.PUB_ADDRESS1, PUB_ADDRESS2: @station.PUB_ADDRESS2, PUB_ADDRESS3: @station.PUB_ADDRESS3, PUB_ADDRESS4: @station.PUB_ADDRESS4, PUB_CIRC: @station.PUB_CIRC, PUB_CLOSE_DATE: @station.PUB_CLOSE_DATE, PUB_CODE: @station.PUB_CODE, PUB_COMM_PC: @station.PUB_COMM_PC, PUB_EDITED_BY: @station.PUB_EDITED_BY, PUB_EDITED_WHEN: @station.PUB_EDITED_WHEN, PUB_FAX: @station.PUB_FAX, PUB_ISSUE_DATE: @station.PUB_ISSUE_DATE, PUB_MARKET: @station.PUB_MARKET, PUB_NAME: @station.PUB_NAME, PUB_NOTE: @station.PUB_NOTE, PUB_PHONE: @station.PUB_PHONE, PUB_REP: @station.PUB_REP, PUB_REP_ADDRESS1: @station.PUB_REP_ADDRESS1, PUB_REP_ADDRESS2: @station.PUB_REP_ADDRESS2, PUB_REP_ADDRESS3: @station.PUB_REP_ADDRESS3, PUB_REP_ADDRESS4: @station.PUB_REP_ADDRESS4, PUB_REP_ADDRESS5: @station.PUB_REP_ADDRESS5, PUB_TYPE: @station.PUB_TYPE, PUB_VENDOR_NUM: @station.PUB_VENDOR_NUM, primaryKey: @station.primaryKey }
    assert_redirected_to station_path(assigns(:station))
  end

  test "should destroy station" do
    assert_difference('Station.count', -1) do
      delete :destroy, id: @station
    end

    assert_redirected_to stations_path
  end
end

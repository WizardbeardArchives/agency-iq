require 'test_helper'

class DataCountsControllerTest < ActionController::TestCase
  setup do
    @data_count = data_counts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_counts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_count" do
    assert_difference('DataCount.count') do
      post :create, data_count: { DATA_AP: @data_count.DATA_AP, DATA_AR: @data_count.DATA_AR, DATA_CHECKS: @data_count.DATA_CHECKS, DATA_CLIENTS: @data_count.DATA_CLIENTS, DATA_DATE: @data_count.DATA_DATE, DATA_GL: @data_count.DATA_GL, DATA_JOBS: @data_count.DATA_JOBS, DATA_PAYMENTS: @data_count.DATA_PAYMENTS, DATA_PO: @data_count.DATA_PO, DATA_TOTAL: @data_count.DATA_TOTAL, DATA_VENDORS: @data_count.DATA_VENDORS, primaryKey: @data_count.primaryKey }
    end

    assert_redirected_to data_count_path(assigns(:data_count))
  end

  test "should show data_count" do
    get :show, id: @data_count
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_count
    assert_response :success
  end

  test "should update data_count" do
    patch :update, id: @data_count, data_count: { DATA_AP: @data_count.DATA_AP, DATA_AR: @data_count.DATA_AR, DATA_CHECKS: @data_count.DATA_CHECKS, DATA_CLIENTS: @data_count.DATA_CLIENTS, DATA_DATE: @data_count.DATA_DATE, DATA_GL: @data_count.DATA_GL, DATA_JOBS: @data_count.DATA_JOBS, DATA_PAYMENTS: @data_count.DATA_PAYMENTS, DATA_PO: @data_count.DATA_PO, DATA_TOTAL: @data_count.DATA_TOTAL, DATA_VENDORS: @data_count.DATA_VENDORS, primaryKey: @data_count.primaryKey }
    assert_redirected_to data_count_path(assigns(:data_count))
  end

  test "should destroy data_count" do
    assert_difference('DataCount.count', -1) do
      delete :destroy, id: @data_count
    end

    assert_redirected_to data_counts_path
  end
end

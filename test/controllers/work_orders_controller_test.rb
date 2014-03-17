require 'test_helper'

class WorkOrdersControllerTest < ActionController::TestCase
  setup do
    @work_order = work_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_order" do
    assert_difference('WorkOrder.count') do
      post :create, work_order: { WO_10: @work_order.WO_10, WO_10_LABEL: @work_order.WO_10_LABEL, WO_11: @work_order.WO_11, WO_11_LABEL: @work_order.WO_11_LABEL, WO_12: @work_order.WO_12, WO_12_LABEL: @work_order.WO_12_LABEL, WO_13: @work_order.WO_13, WO_13_LABEL: @work_order.WO_13_LABEL, WO_14: @work_order.WO_14, WO_14_LABEL: @work_order.WO_14_LABEL, WO_15: @work_order.WO_15, WO_15_LABEL: @work_order.WO_15_LABEL, WO_1: @work_order.WO_1, WO_1_LABEL: @work_order.WO_1_LABEL, WO_2: @work_order.WO_2, WO_2_LABEL: @work_order.WO_2_LABEL, WO_3: @work_order.WO_3, WO_3_LABEL: @work_order.WO_3_LABEL, WO_4: @work_order.WO_4, WO_4_LABEL: @work_order.WO_4_LABEL, WO_5: @work_order.WO_5, WO_5_LABEL: @work_order.WO_5_LABEL, WO_6: @work_order.WO_6, WO_6_LABEL: @work_order.WO_6_LABEL, WO_7: @work_order.WO_7, WO_7_LABEL: @work_order.WO_7_LABEL, WO_8: @work_order.WO_8, WO_8_LABEL: @work_order.WO_8_LABEL, WO_9: @work_order.WO_9, WO_9_LABEL: @work_order.WO_9_LABEL, WO_ADDED_BY: @work_order.WO_ADDED_BY, WO_ADR_NAME: @work_order.WO_ADR_NAME, WO_APPROVED: @work_order.WO_APPROVED, WO_APPROVED_BY: @work_order.WO_APPROVED_BY, WO_APPROVED_DATE: @work_order.WO_APPROVED_DATE, WO_CLIENT_NUM: @work_order.WO_CLIENT_NUM, WO_JOB_NUM: @work_order.WO_JOB_NUM, WO_OK: @work_order.WO_OK, WO_OK_BY: @work_order.WO_OK_BY, WO_OK_DATE: @work_order.WO_OK_DATE, WO_REV_BY: @work_order.WO_REV_BY, primaryKey: @work_order.primaryKey }
    end

    assert_redirected_to work_order_path(assigns(:work_order))
  end

  test "should show work_order" do
    get :show, id: @work_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_order
    assert_response :success
  end

  test "should update work_order" do
    patch :update, id: @work_order, work_order: { WO_10: @work_order.WO_10, WO_10_LABEL: @work_order.WO_10_LABEL, WO_11: @work_order.WO_11, WO_11_LABEL: @work_order.WO_11_LABEL, WO_12: @work_order.WO_12, WO_12_LABEL: @work_order.WO_12_LABEL, WO_13: @work_order.WO_13, WO_13_LABEL: @work_order.WO_13_LABEL, WO_14: @work_order.WO_14, WO_14_LABEL: @work_order.WO_14_LABEL, WO_15: @work_order.WO_15, WO_15_LABEL: @work_order.WO_15_LABEL, WO_1: @work_order.WO_1, WO_1_LABEL: @work_order.WO_1_LABEL, WO_2: @work_order.WO_2, WO_2_LABEL: @work_order.WO_2_LABEL, WO_3: @work_order.WO_3, WO_3_LABEL: @work_order.WO_3_LABEL, WO_4: @work_order.WO_4, WO_4_LABEL: @work_order.WO_4_LABEL, WO_5: @work_order.WO_5, WO_5_LABEL: @work_order.WO_5_LABEL, WO_6: @work_order.WO_6, WO_6_LABEL: @work_order.WO_6_LABEL, WO_7: @work_order.WO_7, WO_7_LABEL: @work_order.WO_7_LABEL, WO_8: @work_order.WO_8, WO_8_LABEL: @work_order.WO_8_LABEL, WO_9: @work_order.WO_9, WO_9_LABEL: @work_order.WO_9_LABEL, WO_ADDED_BY: @work_order.WO_ADDED_BY, WO_ADR_NAME: @work_order.WO_ADR_NAME, WO_APPROVED: @work_order.WO_APPROVED, WO_APPROVED_BY: @work_order.WO_APPROVED_BY, WO_APPROVED_DATE: @work_order.WO_APPROVED_DATE, WO_CLIENT_NUM: @work_order.WO_CLIENT_NUM, WO_JOB_NUM: @work_order.WO_JOB_NUM, WO_OK: @work_order.WO_OK, WO_OK_BY: @work_order.WO_OK_BY, WO_OK_DATE: @work_order.WO_OK_DATE, WO_REV_BY: @work_order.WO_REV_BY, primaryKey: @work_order.primaryKey }
    assert_redirected_to work_order_path(assigns(:work_order))
  end

  test "should destroy work_order" do
    assert_difference('WorkOrder.count', -1) do
      delete :destroy, id: @work_order
    end

    assert_redirected_to work_orders_path
  end
end

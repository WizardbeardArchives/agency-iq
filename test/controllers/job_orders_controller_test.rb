require 'test_helper'

class JobOrdersControllerTest < ActionController::TestCase
  setup do
    @job_order = job_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_order" do
    assert_difference('JobOrder.count') do
      post :create, job_order: { CB_10: @job_order.CB_10, CB_10_LABEL: @job_order.CB_10_LABEL, CB_11: @job_order.CB_11, CB_11_LABEL: @job_order.CB_11_LABEL, CB_12: @job_order.CB_12, CB_12_LABEL: @job_order.CB_12_LABEL, CB_13: @job_order.CB_13, CB_13_LABEL: @job_order.CB_13_LABEL, CB_14: @job_order.CB_14, CB_14_LABEL: @job_order.CB_14_LABEL, CB_15: @job_order.CB_15, CB_15_LABEL: @job_order.CB_15_LABEL, CB_1: @job_order.CB_1, CB_1_LABEL: @job_order.CB_1_LABEL, CB_2: @job_order.CB_2, CB_2_LABEL: @job_order.CB_2_LABEL, CB_3: @job_order.CB_3, CB_3_LABEL: @job_order.CB_3_LABEL, CB_4: @job_order.CB_4, CB_4_LABEL: @job_order.CB_4_LABEL, CB_5: @job_order.CB_5, CB_5_LABEL: @job_order.CB_5_LABEL, CB_6: @job_order.CB_6, CB_6_LABEL: @job_order.CB_6_LABEL, CB_7: @job_order.CB_7, CB_7_LABEL: @job_order.CB_7_LABEL, CB_8: @job_order.CB_8, CB_8_LABEL: @job_order.CB_8_LABEL, CB_9: @job_order.CB_9, CB_9_LABEL: @job_order.CB_9_LABEL, CB_ADDED_BY: @job_order.CB_ADDED_BY, CB_APPROVED: @job_order.CB_APPROVED, CB_APPROVED_BY: @job_order.CB_APPROVED_BY, CB_APPROVED_DATE: @job_order.CB_APPROVED_DATE, CB_CLIENT_NUM: @job_order.CB_CLIENT_NUM, CB_EDITED_BY: @job_order.CB_EDITED_BY, CB_EDITED_WHEN: @job_order.CB_EDITED_WHEN, CB_JOB_NUM: @job_order.CB_JOB_NUM, CB_OK: @job_order.CB_OK, CB_OK_BY: @job_order.CB_OK_BY, CB_OK_DATE: @job_order.CB_OK_DATE, CB_REV: @job_order.CB_REV, CB_REV_BY: @job_order.CB_REV_BY, CB_REV_DATE: @job_order.CB_REV_DATE, primaryKey: @job_order.primaryKey }
    end

    assert_redirected_to job_order_path(assigns(:job_order))
  end

  test "should show job_order" do
    get :show, id: @job_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_order
    assert_response :success
  end

  test "should update job_order" do
    patch :update, id: @job_order, job_order: { CB_10: @job_order.CB_10, CB_10_LABEL: @job_order.CB_10_LABEL, CB_11: @job_order.CB_11, CB_11_LABEL: @job_order.CB_11_LABEL, CB_12: @job_order.CB_12, CB_12_LABEL: @job_order.CB_12_LABEL, CB_13: @job_order.CB_13, CB_13_LABEL: @job_order.CB_13_LABEL, CB_14: @job_order.CB_14, CB_14_LABEL: @job_order.CB_14_LABEL, CB_15: @job_order.CB_15, CB_15_LABEL: @job_order.CB_15_LABEL, CB_1: @job_order.CB_1, CB_1_LABEL: @job_order.CB_1_LABEL, CB_2: @job_order.CB_2, CB_2_LABEL: @job_order.CB_2_LABEL, CB_3: @job_order.CB_3, CB_3_LABEL: @job_order.CB_3_LABEL, CB_4: @job_order.CB_4, CB_4_LABEL: @job_order.CB_4_LABEL, CB_5: @job_order.CB_5, CB_5_LABEL: @job_order.CB_5_LABEL, CB_6: @job_order.CB_6, CB_6_LABEL: @job_order.CB_6_LABEL, CB_7: @job_order.CB_7, CB_7_LABEL: @job_order.CB_7_LABEL, CB_8: @job_order.CB_8, CB_8_LABEL: @job_order.CB_8_LABEL, CB_9: @job_order.CB_9, CB_9_LABEL: @job_order.CB_9_LABEL, CB_ADDED_BY: @job_order.CB_ADDED_BY, CB_APPROVED: @job_order.CB_APPROVED, CB_APPROVED_BY: @job_order.CB_APPROVED_BY, CB_APPROVED_DATE: @job_order.CB_APPROVED_DATE, CB_CLIENT_NUM: @job_order.CB_CLIENT_NUM, CB_EDITED_BY: @job_order.CB_EDITED_BY, CB_EDITED_WHEN: @job_order.CB_EDITED_WHEN, CB_JOB_NUM: @job_order.CB_JOB_NUM, CB_OK: @job_order.CB_OK, CB_OK_BY: @job_order.CB_OK_BY, CB_OK_DATE: @job_order.CB_OK_DATE, CB_REV: @job_order.CB_REV, CB_REV_BY: @job_order.CB_REV_BY, CB_REV_DATE: @job_order.CB_REV_DATE, primaryKey: @job_order.primaryKey }
    assert_redirected_to job_order_path(assigns(:job_order))
  end

  test "should destroy job_order" do
    assert_difference('JobOrder.count', -1) do
      delete :destroy, id: @job_order
    end

    assert_redirected_to job_orders_path
  end
end

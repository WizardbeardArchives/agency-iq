require 'test_helper'

class ChangeOrdersControllerTest < ActionController::TestCase
  setup do
    @change_order = change_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:change_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create change_order" do
    assert_difference('ChangeOrder.count') do
      post :create, change_order: { CHANGE_ADDED_BY: @change_order.CHANGE_ADDED_BY, CHANGE_ADDED_WHEN: @change_order.CHANGE_ADDED_WHEN, CHANGE_AMT1: @change_order.CHANGE_AMT1, CHANGE_AMT2: @change_order.CHANGE_AMT2, CHANGE_AMT3: @change_order.CHANGE_AMT3, CHANGE_AMT4: @change_order.CHANGE_AMT4, CHANGE_AMT5: @change_order.CHANGE_AMT5, CHANGE_AMT6: @change_order.CHANGE_AMT6, CHANGE_APPROVE: @change_order.CHANGE_APPROVE, CHANGE_APPROVED: @change_order.CHANGE_APPROVED, CHANGE_APPROVED_BY: @change_order.CHANGE_APPROVED_BY, CHANGE_APPROVED_DATE: @change_order.CHANGE_APPROVED_DATE, CHANGE_BAMT1: @change_order.CHANGE_BAMT1, CHANGE_BAMT2: @change_order.CHANGE_BAMT2, CHANGE_BAMT3: @change_order.CHANGE_BAMT3, CHANGE_BAMT4: @change_order.CHANGE_BAMT4, CHANGE_BAMT5: @change_order.CHANGE_BAMT5, CHANGE_BAMT6: @change_order.CHANGE_BAMT6, CHANGE_DATE: @change_order.CHANGE_DATE, CHANGE_DESC: @change_order.CHANGE_DESC, CHANGE_EDITED_BY: @change_order.CHANGE_EDITED_BY, CHANGE_EDITED_WHEN: @change_order.CHANGE_EDITED_WHEN, CHANGE_HOURS1: @change_order.CHANGE_HOURS1, CHANGE_HOURS2: @change_order.CHANGE_HOURS2, CHANGE_HOURS3: @change_order.CHANGE_HOURS3, CHANGE_HOURS4: @change_order.CHANGE_HOURS4, CHANGE_HOURS5: @change_order.CHANGE_HOURS5, CHANGE_HOURS6: @change_order.CHANGE_HOURS6, CHANGE_JOB_NUM: @change_order.CHANGE_JOB_NUM, CHANGE_MAIL_TO: @change_order.CHANGE_MAIL_TO, CHANGE_NAME: @change_order.CHANGE_NAME, CHANGE_NOTE: @change_order.CHANGE_NOTE, CHANGE_NUM: @change_order.CHANGE_NUM, CHANGE_OK: @change_order.CHANGE_OK, CHANGE_OTHER: @change_order.CHANGE_OTHER, CHANGE_ROLLUP1: @change_order.CHANGE_ROLLUP1, CHANGE_ROLLUP2: @change_order.CHANGE_ROLLUP2, CHANGE_ROLLUP3: @change_order.CHANGE_ROLLUP3, CHANGE_ROLLUP4: @change_order.CHANGE_ROLLUP4, CHANGE_ROLLUP5: @change_order.CHANGE_ROLLUP5, CHANGE_ROLLUP6: @change_order.CHANGE_ROLLUP6, CHANGE_ROLL_UP: @change_order.CHANGE_ROLL_UP, CHANGE_SALES_TAX1: @change_order.CHANGE_SALES_TAX1, CHANGE_SALES_TAX2: @change_order.CHANGE_SALES_TAX2, CHANGE_SEND_PDF: @change_order.CHANGE_SEND_PDF, CHANGE_STATUS: @change_order.CHANGE_STATUS, CHANGE_TASK1: @change_order.CHANGE_TASK1, CHANGE_TASK2: @change_order.CHANGE_TASK2, CHANGE_TASK3: @change_order.CHANGE_TASK3, CHANGE_TASK4: @change_order.CHANGE_TASK4, CHANGE_TASK5: @change_order.CHANGE_TASK5, CHANGE_TASK6: @change_order.CHANGE_TASK6, CHANGE_TOTAL: @change_order.CHANGE_TOTAL, CHANGE_TYPE: @change_order.CHANGE_TYPE, CHANGE_WHO: @change_order.CHANGE_WHO, primaryKey: @change_order.primaryKey }
    end

    assert_redirected_to change_order_path(assigns(:change_order))
  end

  test "should show change_order" do
    get :show, id: @change_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @change_order
    assert_response :success
  end

  test "should update change_order" do
    patch :update, id: @change_order, change_order: { CHANGE_ADDED_BY: @change_order.CHANGE_ADDED_BY, CHANGE_ADDED_WHEN: @change_order.CHANGE_ADDED_WHEN, CHANGE_AMT1: @change_order.CHANGE_AMT1, CHANGE_AMT2: @change_order.CHANGE_AMT2, CHANGE_AMT3: @change_order.CHANGE_AMT3, CHANGE_AMT4: @change_order.CHANGE_AMT4, CHANGE_AMT5: @change_order.CHANGE_AMT5, CHANGE_AMT6: @change_order.CHANGE_AMT6, CHANGE_APPROVE: @change_order.CHANGE_APPROVE, CHANGE_APPROVED: @change_order.CHANGE_APPROVED, CHANGE_APPROVED_BY: @change_order.CHANGE_APPROVED_BY, CHANGE_APPROVED_DATE: @change_order.CHANGE_APPROVED_DATE, CHANGE_BAMT1: @change_order.CHANGE_BAMT1, CHANGE_BAMT2: @change_order.CHANGE_BAMT2, CHANGE_BAMT3: @change_order.CHANGE_BAMT3, CHANGE_BAMT4: @change_order.CHANGE_BAMT4, CHANGE_BAMT5: @change_order.CHANGE_BAMT5, CHANGE_BAMT6: @change_order.CHANGE_BAMT6, CHANGE_DATE: @change_order.CHANGE_DATE, CHANGE_DESC: @change_order.CHANGE_DESC, CHANGE_EDITED_BY: @change_order.CHANGE_EDITED_BY, CHANGE_EDITED_WHEN: @change_order.CHANGE_EDITED_WHEN, CHANGE_HOURS1: @change_order.CHANGE_HOURS1, CHANGE_HOURS2: @change_order.CHANGE_HOURS2, CHANGE_HOURS3: @change_order.CHANGE_HOURS3, CHANGE_HOURS4: @change_order.CHANGE_HOURS4, CHANGE_HOURS5: @change_order.CHANGE_HOURS5, CHANGE_HOURS6: @change_order.CHANGE_HOURS6, CHANGE_JOB_NUM: @change_order.CHANGE_JOB_NUM, CHANGE_MAIL_TO: @change_order.CHANGE_MAIL_TO, CHANGE_NAME: @change_order.CHANGE_NAME, CHANGE_NOTE: @change_order.CHANGE_NOTE, CHANGE_NUM: @change_order.CHANGE_NUM, CHANGE_OK: @change_order.CHANGE_OK, CHANGE_OTHER: @change_order.CHANGE_OTHER, CHANGE_ROLLUP1: @change_order.CHANGE_ROLLUP1, CHANGE_ROLLUP2: @change_order.CHANGE_ROLLUP2, CHANGE_ROLLUP3: @change_order.CHANGE_ROLLUP3, CHANGE_ROLLUP4: @change_order.CHANGE_ROLLUP4, CHANGE_ROLLUP5: @change_order.CHANGE_ROLLUP5, CHANGE_ROLLUP6: @change_order.CHANGE_ROLLUP6, CHANGE_ROLL_UP: @change_order.CHANGE_ROLL_UP, CHANGE_SALES_TAX1: @change_order.CHANGE_SALES_TAX1, CHANGE_SALES_TAX2: @change_order.CHANGE_SALES_TAX2, CHANGE_SEND_PDF: @change_order.CHANGE_SEND_PDF, CHANGE_STATUS: @change_order.CHANGE_STATUS, CHANGE_TASK1: @change_order.CHANGE_TASK1, CHANGE_TASK2: @change_order.CHANGE_TASK2, CHANGE_TASK3: @change_order.CHANGE_TASK3, CHANGE_TASK4: @change_order.CHANGE_TASK4, CHANGE_TASK5: @change_order.CHANGE_TASK5, CHANGE_TASK6: @change_order.CHANGE_TASK6, CHANGE_TOTAL: @change_order.CHANGE_TOTAL, CHANGE_TYPE: @change_order.CHANGE_TYPE, CHANGE_WHO: @change_order.CHANGE_WHO, primaryKey: @change_order.primaryKey }
    assert_redirected_to change_order_path(assigns(:change_order))
  end

  test "should destroy change_order" do
    assert_difference('ChangeOrder.count', -1) do
      delete :destroy, id: @change_order
    end

    assert_redirected_to change_orders_path
  end
end

require 'test_helper'

class RecurArsControllerTest < ActionController::TestCase
  setup do
    @recur_ar = recur_ars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recur_ars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recur_ar" do
    assert_difference('RecurAr.count') do
      post :create, recur_ar: { RAR_ADDED_BY: @recur_ar.RAR_ADDED_BY, RAR_ADDED_WHEN: @recur_ar.RAR_ADDED_WHEN, RAR_AMT1: @recur_ar.RAR_AMT1, RAR_AX_AMT1: @recur_ar.RAR_AX_AMT1, RAR_AX_AMT2: @recur_ar.RAR_AX_AMT2, RAR_AX_AMT3: @recur_ar.RAR_AX_AMT3, RAR_AX_AMT4: @recur_ar.RAR_AX_AMT4, RAR_AX_AMT5: @recur_ar.RAR_AX_AMT5, RAR_AX_AMT6: @recur_ar.RAR_AX_AMT6, RAR_AX_CGL1: @recur_ar.RAR_AX_CGL1, RAR_AX_CGL2: @recur_ar.RAR_AX_CGL2, RAR_AX_CGL3: @recur_ar.RAR_AX_CGL3, RAR_AX_CGL4: @recur_ar.RAR_AX_CGL4, RAR_AX_CGL5: @recur_ar.RAR_AX_CGL5, RAR_AX_CGL6: @recur_ar.RAR_AX_CGL6, RAR_AX_HOURS1: @recur_ar.RAR_AX_HOURS1, RAR_AX_HOURS2: @recur_ar.RAR_AX_HOURS2, RAR_AX_HOURS3: @recur_ar.RAR_AX_HOURS3, RAR_AX_HOURS4: @recur_ar.RAR_AX_HOURS4, RAR_AX_HOURS5: @recur_ar.RAR_AX_HOURS5, RAR_AX_HOURS6: @recur_ar.RAR_AX_HOURS6, RAR_AX_NAME1: @recur_ar.RAR_AX_NAME1, RAR_AX_NAME2: @recur_ar.RAR_AX_NAME2, RAR_AX_NAME3: @recur_ar.RAR_AX_NAME3, RAR_AX_NAME4: @recur_ar.RAR_AX_NAME4, RAR_AX_NAME5: @recur_ar.RAR_AX_NAME5, RAR_AX_NAME6: @recur_ar.RAR_AX_NAME6, RAR_AX_TASK1: @recur_ar.RAR_AX_TASK1, RAR_AX_TASK2: @recur_ar.RAR_AX_TASK2, RAR_AX_TASK3: @recur_ar.RAR_AX_TASK3, RAR_AX_TASK4: @recur_ar.RAR_AX_TASK4, RAR_AX_TASK5: @recur_ar.RAR_AX_TASK5, RAR_AX_TASK6: @recur_ar.RAR_AX_TASK6, RAR_CLIENT_NUM: @recur_ar.RAR_CLIENT_NUM, RAR_DATE: @recur_ar.RAR_DATE, RAR_DESC: @recur_ar.RAR_DESC, RAR_DGL: @recur_ar.RAR_DGL, RAR_EDITED_BY: @recur_ar.RAR_EDITED_BY, RAR_EDITED_WHEN: @recur_ar.RAR_EDITED_WHEN, RAR_INV_DATE: @recur_ar.RAR_INV_DATE, RAR_INV_NUM: @recur_ar.RAR_INV_NUM, RAR_JOB_NUM: @recur_ar.RAR_JOB_NUM, RAR_OPTION1: @recur_ar.RAR_OPTION1, RAR_OPTION2: @recur_ar.RAR_OPTION2, RAR_OPTION3: @recur_ar.RAR_OPTION3, RAR_PERIOD: @recur_ar.RAR_PERIOD, primaryKey: @recur_ar.primaryKey }
    end

    assert_redirected_to recur_ar_path(assigns(:recur_ar))
  end

  test "should show recur_ar" do
    get :show, id: @recur_ar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recur_ar
    assert_response :success
  end

  test "should update recur_ar" do
    patch :update, id: @recur_ar, recur_ar: { RAR_ADDED_BY: @recur_ar.RAR_ADDED_BY, RAR_ADDED_WHEN: @recur_ar.RAR_ADDED_WHEN, RAR_AMT1: @recur_ar.RAR_AMT1, RAR_AX_AMT1: @recur_ar.RAR_AX_AMT1, RAR_AX_AMT2: @recur_ar.RAR_AX_AMT2, RAR_AX_AMT3: @recur_ar.RAR_AX_AMT3, RAR_AX_AMT4: @recur_ar.RAR_AX_AMT4, RAR_AX_AMT5: @recur_ar.RAR_AX_AMT5, RAR_AX_AMT6: @recur_ar.RAR_AX_AMT6, RAR_AX_CGL1: @recur_ar.RAR_AX_CGL1, RAR_AX_CGL2: @recur_ar.RAR_AX_CGL2, RAR_AX_CGL3: @recur_ar.RAR_AX_CGL3, RAR_AX_CGL4: @recur_ar.RAR_AX_CGL4, RAR_AX_CGL5: @recur_ar.RAR_AX_CGL5, RAR_AX_CGL6: @recur_ar.RAR_AX_CGL6, RAR_AX_HOURS1: @recur_ar.RAR_AX_HOURS1, RAR_AX_HOURS2: @recur_ar.RAR_AX_HOURS2, RAR_AX_HOURS3: @recur_ar.RAR_AX_HOURS3, RAR_AX_HOURS4: @recur_ar.RAR_AX_HOURS4, RAR_AX_HOURS5: @recur_ar.RAR_AX_HOURS5, RAR_AX_HOURS6: @recur_ar.RAR_AX_HOURS6, RAR_AX_NAME1: @recur_ar.RAR_AX_NAME1, RAR_AX_NAME2: @recur_ar.RAR_AX_NAME2, RAR_AX_NAME3: @recur_ar.RAR_AX_NAME3, RAR_AX_NAME4: @recur_ar.RAR_AX_NAME4, RAR_AX_NAME5: @recur_ar.RAR_AX_NAME5, RAR_AX_NAME6: @recur_ar.RAR_AX_NAME6, RAR_AX_TASK1: @recur_ar.RAR_AX_TASK1, RAR_AX_TASK2: @recur_ar.RAR_AX_TASK2, RAR_AX_TASK3: @recur_ar.RAR_AX_TASK3, RAR_AX_TASK4: @recur_ar.RAR_AX_TASK4, RAR_AX_TASK5: @recur_ar.RAR_AX_TASK5, RAR_AX_TASK6: @recur_ar.RAR_AX_TASK6, RAR_CLIENT_NUM: @recur_ar.RAR_CLIENT_NUM, RAR_DATE: @recur_ar.RAR_DATE, RAR_DESC: @recur_ar.RAR_DESC, RAR_DGL: @recur_ar.RAR_DGL, RAR_EDITED_BY: @recur_ar.RAR_EDITED_BY, RAR_EDITED_WHEN: @recur_ar.RAR_EDITED_WHEN, RAR_INV_DATE: @recur_ar.RAR_INV_DATE, RAR_INV_NUM: @recur_ar.RAR_INV_NUM, RAR_JOB_NUM: @recur_ar.RAR_JOB_NUM, RAR_OPTION1: @recur_ar.RAR_OPTION1, RAR_OPTION2: @recur_ar.RAR_OPTION2, RAR_OPTION3: @recur_ar.RAR_OPTION3, RAR_PERIOD: @recur_ar.RAR_PERIOD, primaryKey: @recur_ar.primaryKey }
    assert_redirected_to recur_ar_path(assigns(:recur_ar))
  end

  test "should destroy recur_ar" do
    assert_difference('RecurAr.count', -1) do
      delete :destroy, id: @recur_ar
    end

    assert_redirected_to recur_ars_path
  end
end

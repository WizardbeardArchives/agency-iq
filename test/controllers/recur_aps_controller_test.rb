require 'test_helper'

class RecurApsControllerTest < ActionController::TestCase
  setup do
    @recur_ap = recur_aps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recur_aps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recur_ap" do
    assert_difference('RecurAp.count') do
      post :create, recur_ap: { RAP_ADDED_BY: @recur_ap.RAP_ADDED_BY, RAP_ADDED_WHEN: @recur_ap.RAP_ADDED_WHEN, RAP_AMT1: @recur_ap.RAP_AMT1, RAP_AMT2: @recur_ap.RAP_AMT2, RAP_AMT3: @recur_ap.RAP_AMT3, RAP_AMT4: @recur_ap.RAP_AMT4, RAP_AMT5: @recur_ap.RAP_AMT5, RAP_AMT6: @recur_ap.RAP_AMT6, RAP_CGL: @recur_ap.RAP_CGL, RAP_DATE: @recur_ap.RAP_DATE, RAP_DESC: @recur_ap.RAP_DESC, RAP_DGL1: @recur_ap.RAP_DGL1, RAP_DGL2: @recur_ap.RAP_DGL2, RAP_DGL3: @recur_ap.RAP_DGL3, RAP_DGL4: @recur_ap.RAP_DGL4, RAP_DGL5: @recur_ap.RAP_DGL5, RAP_DGL6: @recur_ap.RAP_DGL6, RAP_EDITED_BY: @recur_ap.RAP_EDITED_BY, RAP_EDITED_WHEN: @recur_ap.RAP_EDITED_WHEN, RAP_INV_DATE: @recur_ap.RAP_INV_DATE, RAP_INV_NUM: @recur_ap.RAP_INV_NUM, RAP_PERIOD: @recur_ap.RAP_PERIOD, RAP_VENDOR: @recur_ap.RAP_VENDOR, primaryKey: @recur_ap.primaryKey }
    end

    assert_redirected_to recur_ap_path(assigns(:recur_ap))
  end

  test "should show recur_ap" do
    get :show, id: @recur_ap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recur_ap
    assert_response :success
  end

  test "should update recur_ap" do
    patch :update, id: @recur_ap, recur_ap: { RAP_ADDED_BY: @recur_ap.RAP_ADDED_BY, RAP_ADDED_WHEN: @recur_ap.RAP_ADDED_WHEN, RAP_AMT1: @recur_ap.RAP_AMT1, RAP_AMT2: @recur_ap.RAP_AMT2, RAP_AMT3: @recur_ap.RAP_AMT3, RAP_AMT4: @recur_ap.RAP_AMT4, RAP_AMT5: @recur_ap.RAP_AMT5, RAP_AMT6: @recur_ap.RAP_AMT6, RAP_CGL: @recur_ap.RAP_CGL, RAP_DATE: @recur_ap.RAP_DATE, RAP_DESC: @recur_ap.RAP_DESC, RAP_DGL1: @recur_ap.RAP_DGL1, RAP_DGL2: @recur_ap.RAP_DGL2, RAP_DGL3: @recur_ap.RAP_DGL3, RAP_DGL4: @recur_ap.RAP_DGL4, RAP_DGL5: @recur_ap.RAP_DGL5, RAP_DGL6: @recur_ap.RAP_DGL6, RAP_EDITED_BY: @recur_ap.RAP_EDITED_BY, RAP_EDITED_WHEN: @recur_ap.RAP_EDITED_WHEN, RAP_INV_DATE: @recur_ap.RAP_INV_DATE, RAP_INV_NUM: @recur_ap.RAP_INV_NUM, RAP_PERIOD: @recur_ap.RAP_PERIOD, RAP_VENDOR: @recur_ap.RAP_VENDOR, primaryKey: @recur_ap.primaryKey }
    assert_redirected_to recur_ap_path(assigns(:recur_ap))
  end

  test "should destroy recur_ap" do
    assert_difference('RecurAp.count', -1) do
      delete :destroy, id: @recur_ap
    end

    assert_redirected_to recur_aps_path
  end
end

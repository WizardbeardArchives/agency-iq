require 'test_helper'

class RetainersControllerTest < ActionController::TestCase
  setup do
    @retainer = retainers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retainers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retainer" do
    assert_difference('Retainer.count') do
      post :create, retainer: { RET_10: @retainer.RET_10, RET_10_OK: @retainer.RET_10_OK, RET_11: @retainer.RET_11, RET_11_OK: @retainer.RET_11_OK, RET_12: @retainer.RET_12, RET_12_OK: @retainer.RET_12_OK, RET_1: @retainer.RET_1, RET_1_OK: @retainer.RET_1_OK, RET_2: @retainer.RET_2, RET_2_OK: @retainer.RET_2_OK, RET_3: @retainer.RET_3, RET_3_OK: @retainer.RET_3_OK, RET_4: @retainer.RET_4, RET_4_OK: @retainer.RET_4_OK, RET_5: @retainer.RET_5, RET_5_OK: @retainer.RET_5_OK, RET_6: @retainer.RET_6, RET_6_OK: @retainer.RET_6_OK, RET_7: @retainer.RET_7, RET_7_OK: @retainer.RET_7_OK, RET_8: @retainer.RET_8, RET_8_OK: @retainer.RET_8_OK, RET_9: @retainer.RET_9, RET_9_OK: @retainer.RET_9_OK, RET_ADDED_BY: @retainer.RET_ADDED_BY, RET_ADDED_WHEN: @retainer.RET_ADDED_WHEN, RET_AMT10: @retainer.RET_AMT10, RET_AMT11: @retainer.RET_AMT11, RET_AMT12: @retainer.RET_AMT12, RET_AMT1: @retainer.RET_AMT1, RET_AMT2: @retainer.RET_AMT2, RET_AMT3: @retainer.RET_AMT3, RET_AMT4: @retainer.RET_AMT4, RET_AMT5: @retainer.RET_AMT5, RET_AMT6: @retainer.RET_AMT6, RET_AMT7: @retainer.RET_AMT7, RET_AMT8: @retainer.RET_AMT8, RET_AMT9: @retainer.RET_AMT9, RET_AR_NUM10: @retainer.RET_AR_NUM10, RET_AR_NUM11: @retainer.RET_AR_NUM11, RET_AR_NUM12: @retainer.RET_AR_NUM12, RET_AR_NUM1: @retainer.RET_AR_NUM1, RET_AR_NUM2: @retainer.RET_AR_NUM2, RET_AR_NUM3: @retainer.RET_AR_NUM3, RET_AR_NUM4: @retainer.RET_AR_NUM4, RET_AR_NUM5: @retainer.RET_AR_NUM5, RET_AR_NUM6: @retainer.RET_AR_NUM6, RET_AR_NUM7: @retainer.RET_AR_NUM7, RET_AR_NUM8: @retainer.RET_AR_NUM8, RET_AR_NUM9: @retainer.RET_AR_NUM9, RET_CLIENT_NUM: @retainer.RET_CLIENT_NUM, RET_DATE10: @retainer.RET_DATE10, RET_DATE11: @retainer.RET_DATE11, RET_DATE12: @retainer.RET_DATE12, RET_DATE1: @retainer.RET_DATE1, RET_DATE2: @retainer.RET_DATE2, RET_DATE3: @retainer.RET_DATE3, RET_DATE4: @retainer.RET_DATE4, RET_DATE5: @retainer.RET_DATE5, RET_DATE6: @retainer.RET_DATE6, RET_DATE7: @retainer.RET_DATE7, RET_DATE8: @retainer.RET_DATE8, RET_DATE9: @retainer.RET_DATE9, RET_EDITED_BY: @retainer.RET_EDITED_BY, RET_EDITED_WHEN: @retainer.RET_EDITED_WHEN }
    end

    assert_redirected_to retainer_path(assigns(:retainer))
  end

  test "should show retainer" do
    get :show, id: @retainer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @retainer
    assert_response :success
  end

  test "should update retainer" do
    patch :update, id: @retainer, retainer: { RET_10: @retainer.RET_10, RET_10_OK: @retainer.RET_10_OK, RET_11: @retainer.RET_11, RET_11_OK: @retainer.RET_11_OK, RET_12: @retainer.RET_12, RET_12_OK: @retainer.RET_12_OK, RET_1: @retainer.RET_1, RET_1_OK: @retainer.RET_1_OK, RET_2: @retainer.RET_2, RET_2_OK: @retainer.RET_2_OK, RET_3: @retainer.RET_3, RET_3_OK: @retainer.RET_3_OK, RET_4: @retainer.RET_4, RET_4_OK: @retainer.RET_4_OK, RET_5: @retainer.RET_5, RET_5_OK: @retainer.RET_5_OK, RET_6: @retainer.RET_6, RET_6_OK: @retainer.RET_6_OK, RET_7: @retainer.RET_7, RET_7_OK: @retainer.RET_7_OK, RET_8: @retainer.RET_8, RET_8_OK: @retainer.RET_8_OK, RET_9: @retainer.RET_9, RET_9_OK: @retainer.RET_9_OK, RET_ADDED_BY: @retainer.RET_ADDED_BY, RET_ADDED_WHEN: @retainer.RET_ADDED_WHEN, RET_AMT10: @retainer.RET_AMT10, RET_AMT11: @retainer.RET_AMT11, RET_AMT12: @retainer.RET_AMT12, RET_AMT1: @retainer.RET_AMT1, RET_AMT2: @retainer.RET_AMT2, RET_AMT3: @retainer.RET_AMT3, RET_AMT4: @retainer.RET_AMT4, RET_AMT5: @retainer.RET_AMT5, RET_AMT6: @retainer.RET_AMT6, RET_AMT7: @retainer.RET_AMT7, RET_AMT8: @retainer.RET_AMT8, RET_AMT9: @retainer.RET_AMT9, RET_AR_NUM10: @retainer.RET_AR_NUM10, RET_AR_NUM11: @retainer.RET_AR_NUM11, RET_AR_NUM12: @retainer.RET_AR_NUM12, RET_AR_NUM1: @retainer.RET_AR_NUM1, RET_AR_NUM2: @retainer.RET_AR_NUM2, RET_AR_NUM3: @retainer.RET_AR_NUM3, RET_AR_NUM4: @retainer.RET_AR_NUM4, RET_AR_NUM5: @retainer.RET_AR_NUM5, RET_AR_NUM6: @retainer.RET_AR_NUM6, RET_AR_NUM7: @retainer.RET_AR_NUM7, RET_AR_NUM8: @retainer.RET_AR_NUM8, RET_AR_NUM9: @retainer.RET_AR_NUM9, RET_CLIENT_NUM: @retainer.RET_CLIENT_NUM, RET_DATE10: @retainer.RET_DATE10, RET_DATE11: @retainer.RET_DATE11, RET_DATE12: @retainer.RET_DATE12, RET_DATE1: @retainer.RET_DATE1, RET_DATE2: @retainer.RET_DATE2, RET_DATE3: @retainer.RET_DATE3, RET_DATE4: @retainer.RET_DATE4, RET_DATE5: @retainer.RET_DATE5, RET_DATE6: @retainer.RET_DATE6, RET_DATE7: @retainer.RET_DATE7, RET_DATE8: @retainer.RET_DATE8, RET_DATE9: @retainer.RET_DATE9, RET_EDITED_BY: @retainer.RET_EDITED_BY, RET_EDITED_WHEN: @retainer.RET_EDITED_WHEN }
    assert_redirected_to retainer_path(assigns(:retainer))
  end

  test "should destroy retainer" do
    assert_difference('Retainer.count', -1) do
      delete :destroy, id: @retainer
    end

    assert_redirected_to retainers_path
  end
end

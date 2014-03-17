require 'test_helper'

class MediaPlansControllerTest < ActionController::TestCase
  setup do
    @media_plan = media_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_plan" do
    assert_difference('MediaPlan.count') do
      post :create, media_plan: { M_ADDED_BY: @media_plan.M_ADDED_BY, M_AE_TEAM: @media_plan.M_AE_TEAM, M_APPROVAL1: @media_plan.M_APPROVAL1, M_APPROVAL2: @media_plan.M_APPROVAL2, M_APPROVAL3: @media_plan.M_APPROVAL3, M_APPROVED: @media_plan.M_APPROVED, M_APPROVED_BY: @media_plan.M_APPROVED_BY, M_APPROVED_DATE: @media_plan.M_APPROVED_DATE, M_BILLED: @media_plan.M_BILLED, M_BRAND: @media_plan.M_BRAND, M_BUDGET: @media_plan.M_BUDGET, M_CAMPAIGN: @media_plan.M_CAMPAIGN, M_CLIENT_CONT: @media_plan.M_CLIENT_CONT, M_CLIENT_NUM: @media_plan.M_CLIENT_NUM, M_CLIENT_PHONE: @media_plan.M_CLIENT_PHONE, M_CLOSED: @media_plan.M_CLOSED, M_COMMISSION: @media_plan.M_COMMISSION, M_COST: @media_plan.M_COST, M_COST_TOTAL: @media_plan.M_COST_TOTAL, M_CPP_TOTAL: @media_plan.M_CPP_TOTAL, M_CPS_TOTAL: @media_plan.M_CPS_TOTAL, M_DATE_ADDED: @media_plan.M_DATE_ADDED, M_DESC: @media_plan.M_DESC, M_EDITED_BY: @media_plan.M_EDITED_BY, M_EDITED_WHEN: @media_plan.M_EDITED_WHEN, M_END_START: @media_plan.M_END_START, M_F1: @media_plan.M_F1, M_F2: @media_plan.M_F2, M_F3: @media_plan.M_F3, M_FIELD1: @media_plan.M_FIELD1, M_FIELD2: @media_plan.M_FIELD2, M_FIELD3: @media_plan.M_FIELD3, M_FIELD4: @media_plan.M_FIELD4, M_FIELD5: @media_plan.M_FIELD5, M_FIELD6: @media_plan.M_FIELD6, M_FIELD_LABEL1: @media_plan.M_FIELD_LABEL1, M_FIELD_LABEL2: @media_plan.M_FIELD_LABEL2, M_FIELD_LABEL3: @media_plan.M_FIELD_LABEL3, M_FIELD_LABEL4: @media_plan.M_FIELD_LABEL4, M_FIELD_LABEL5: @media_plan.M_FIELD_LABEL5, M_FIELD_LABEL6: @media_plan.M_FIELD_LABEL6, M_FLIGHT: @media_plan.M_FLIGHT, M_INACTIVE: @media_plan.M_INACTIVE, M_JOB_NUM: @media_plan.M_JOB_NUM, M_KIND: @media_plan.M_KIND, M_M1: @media_plan.M_M1, M_M2: @media_plan.M_M2, M_MEMO: @media_plan.M_MEMO, M_NAME: @media_plan.M_NAME, M_NUM: @media_plan.M_NUM, M_PERIOD10: @media_plan.M_PERIOD10, M_PERIOD11: @media_plan.M_PERIOD11, M_PERIOD12: @media_plan.M_PERIOD12, M_PERIOD1: @media_plan.M_PERIOD1, M_PERIOD2: @media_plan.M_PERIOD2, M_PERIOD3: @media_plan.M_PERIOD3, M_PERIOD4: @media_plan.M_PERIOD4, M_PERIOD5: @media_plan.M_PERIOD5, M_PERIOD6: @media_plan.M_PERIOD6, M_PERIOD7: @media_plan.M_PERIOD7, M_PERIOD8: @media_plan.M_PERIOD8, M_PERIOD9: @media_plan.M_PERIOD9, M_PER_LABEL10: @media_plan.M_PER_LABEL10, M_PER_LABEL11: @media_plan.M_PER_LABEL11, M_PER_LABEL12: @media_plan.M_PER_LABEL12, M_PER_LABEL1: @media_plan.M_PER_LABEL1, M_PER_LABEL2: @media_plan.M_PER_LABEL2, M_PER_LABEL3: @media_plan.M_PER_LABEL3, M_PER_LABEL4: @media_plan.M_PER_LABEL4, M_PER_LABEL5: @media_plan.M_PER_LABEL5, M_PER_LABEL6: @media_plan.M_PER_LABEL6, M_PER_LABEL7: @media_plan.M_PER_LABEL7, M_PER_LABEL8: @media_plan.M_PER_LABEL8, M_PER_LABEL9: @media_plan.M_PER_LABEL9, M_PO_COST: @media_plan.M_PO_COST, M_PO_GROSS: @media_plan.M_PO_GROSS, M_RATING_TOTAL: @media_plan.M_RATING_TOTAL, M_REVISION: @media_plan.M_REVISION, M_REV_NOTE: @media_plan.M_REV_NOTE, M_RF_TOTAL: @media_plan.M_RF_TOTAL, M_SA1: @media_plan.M_SA1, M_SA2: @media_plan.M_SA2, M_SPOTS_TOTAL: @media_plan.M_SPOTS_TOTAL, M_START_DATE: @media_plan.M_START_DATE, M_STATUS: @media_plan.M_STATUS, M_STATUS_NOTE: @media_plan.M_STATUS_NOTE, M_SU1: @media_plan.M_SU1, M_SU2: @media_plan.M_SU2, M_TASK: @media_plan.M_TASK, M_TH1: @media_plan.M_TH1, M_TH2: @media_plan.M_TH2, M_TU1: @media_plan.M_TU1, M_TU2: @media_plan.M_TU2, M_TYPE: @media_plan.M_TYPE, M_W1: @media_plan.M_W1, M_W2: @media_plan.M_W2, primaryKey: @media_plan.primaryKey }
    end

    assert_redirected_to media_plan_path(assigns(:media_plan))
  end

  test "should show media_plan" do
    get :show, id: @media_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_plan
    assert_response :success
  end

  test "should update media_plan" do
    patch :update, id: @media_plan, media_plan: { M_ADDED_BY: @media_plan.M_ADDED_BY, M_AE_TEAM: @media_plan.M_AE_TEAM, M_APPROVAL1: @media_plan.M_APPROVAL1, M_APPROVAL2: @media_plan.M_APPROVAL2, M_APPROVAL3: @media_plan.M_APPROVAL3, M_APPROVED: @media_plan.M_APPROVED, M_APPROVED_BY: @media_plan.M_APPROVED_BY, M_APPROVED_DATE: @media_plan.M_APPROVED_DATE, M_BILLED: @media_plan.M_BILLED, M_BRAND: @media_plan.M_BRAND, M_BUDGET: @media_plan.M_BUDGET, M_CAMPAIGN: @media_plan.M_CAMPAIGN, M_CLIENT_CONT: @media_plan.M_CLIENT_CONT, M_CLIENT_NUM: @media_plan.M_CLIENT_NUM, M_CLIENT_PHONE: @media_plan.M_CLIENT_PHONE, M_CLOSED: @media_plan.M_CLOSED, M_COMMISSION: @media_plan.M_COMMISSION, M_COST: @media_plan.M_COST, M_COST_TOTAL: @media_plan.M_COST_TOTAL, M_CPP_TOTAL: @media_plan.M_CPP_TOTAL, M_CPS_TOTAL: @media_plan.M_CPS_TOTAL, M_DATE_ADDED: @media_plan.M_DATE_ADDED, M_DESC: @media_plan.M_DESC, M_EDITED_BY: @media_plan.M_EDITED_BY, M_EDITED_WHEN: @media_plan.M_EDITED_WHEN, M_END_START: @media_plan.M_END_START, M_F1: @media_plan.M_F1, M_F2: @media_plan.M_F2, M_F3: @media_plan.M_F3, M_FIELD1: @media_plan.M_FIELD1, M_FIELD2: @media_plan.M_FIELD2, M_FIELD3: @media_plan.M_FIELD3, M_FIELD4: @media_plan.M_FIELD4, M_FIELD5: @media_plan.M_FIELD5, M_FIELD6: @media_plan.M_FIELD6, M_FIELD_LABEL1: @media_plan.M_FIELD_LABEL1, M_FIELD_LABEL2: @media_plan.M_FIELD_LABEL2, M_FIELD_LABEL3: @media_plan.M_FIELD_LABEL3, M_FIELD_LABEL4: @media_plan.M_FIELD_LABEL4, M_FIELD_LABEL5: @media_plan.M_FIELD_LABEL5, M_FIELD_LABEL6: @media_plan.M_FIELD_LABEL6, M_FLIGHT: @media_plan.M_FLIGHT, M_INACTIVE: @media_plan.M_INACTIVE, M_JOB_NUM: @media_plan.M_JOB_NUM, M_KIND: @media_plan.M_KIND, M_M1: @media_plan.M_M1, M_M2: @media_plan.M_M2, M_MEMO: @media_plan.M_MEMO, M_NAME: @media_plan.M_NAME, M_NUM: @media_plan.M_NUM, M_PERIOD10: @media_plan.M_PERIOD10, M_PERIOD11: @media_plan.M_PERIOD11, M_PERIOD12: @media_plan.M_PERIOD12, M_PERIOD1: @media_plan.M_PERIOD1, M_PERIOD2: @media_plan.M_PERIOD2, M_PERIOD3: @media_plan.M_PERIOD3, M_PERIOD4: @media_plan.M_PERIOD4, M_PERIOD5: @media_plan.M_PERIOD5, M_PERIOD6: @media_plan.M_PERIOD6, M_PERIOD7: @media_plan.M_PERIOD7, M_PERIOD8: @media_plan.M_PERIOD8, M_PERIOD9: @media_plan.M_PERIOD9, M_PER_LABEL10: @media_plan.M_PER_LABEL10, M_PER_LABEL11: @media_plan.M_PER_LABEL11, M_PER_LABEL12: @media_plan.M_PER_LABEL12, M_PER_LABEL1: @media_plan.M_PER_LABEL1, M_PER_LABEL2: @media_plan.M_PER_LABEL2, M_PER_LABEL3: @media_plan.M_PER_LABEL3, M_PER_LABEL4: @media_plan.M_PER_LABEL4, M_PER_LABEL5: @media_plan.M_PER_LABEL5, M_PER_LABEL6: @media_plan.M_PER_LABEL6, M_PER_LABEL7: @media_plan.M_PER_LABEL7, M_PER_LABEL8: @media_plan.M_PER_LABEL8, M_PER_LABEL9: @media_plan.M_PER_LABEL9, M_PO_COST: @media_plan.M_PO_COST, M_PO_GROSS: @media_plan.M_PO_GROSS, M_RATING_TOTAL: @media_plan.M_RATING_TOTAL, M_REVISION: @media_plan.M_REVISION, M_REV_NOTE: @media_plan.M_REV_NOTE, M_RF_TOTAL: @media_plan.M_RF_TOTAL, M_SA1: @media_plan.M_SA1, M_SA2: @media_plan.M_SA2, M_SPOTS_TOTAL: @media_plan.M_SPOTS_TOTAL, M_START_DATE: @media_plan.M_START_DATE, M_STATUS: @media_plan.M_STATUS, M_STATUS_NOTE: @media_plan.M_STATUS_NOTE, M_SU1: @media_plan.M_SU1, M_SU2: @media_plan.M_SU2, M_TASK: @media_plan.M_TASK, M_TH1: @media_plan.M_TH1, M_TH2: @media_plan.M_TH2, M_TU1: @media_plan.M_TU1, M_TU2: @media_plan.M_TU2, M_TYPE: @media_plan.M_TYPE, M_W1: @media_plan.M_W1, M_W2: @media_plan.M_W2, primaryKey: @media_plan.primaryKey }
    assert_redirected_to media_plan_path(assigns(:media_plan))
  end

  test "should destroy media_plan" do
    assert_difference('MediaPlan.count', -1) do
      delete :destroy, id: @media_plan
    end

    assert_redirected_to media_plans_path
  end
end

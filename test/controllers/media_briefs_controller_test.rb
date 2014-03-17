require 'test_helper'

class MediaBriefsControllerTest < ActionController::TestCase
  setup do
    @media_brief = media_briefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_briefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_brief" do
    assert_difference('MediaBrief.count') do
      post :create, media_brief: { BR_ADDED_BY: @media_brief.BR_ADDED_BY, BR_AE: @media_brief.BR_AE, BR_APPROVED: @media_brief.BR_APPROVED, BR_APPROVED_BY: @media_brief.BR_APPROVED_BY, BR_APPROVED_DATE: @media_brief.BR_APPROVED_DATE, BR_BUDGET_AMT: @media_brief.BR_BUDGET_AMT, BR_BUD_BCAST: @media_brief.BR_BUD_BCAST, BR_BUD_CABLE: @media_brief.BR_BUD_CABLE, BR_BUD_INTER: @media_brief.BR_BUD_INTER, BR_BUD_MAG: @media_brief.BR_BUD_MAG, BR_BUD_NEWS: @media_brief.BR_BUD_NEWS, BR_BUD_OTHER: @media_brief.BR_BUD_OTHER, BR_BUD_OUT: @media_brief.BR_BUD_OUT, BR_BUD_RADIO: @media_brief.BR_BUD_RADIO, BR_CAMPAIGN: @media_brief.BR_CAMPAIGN, BR_CAMP_END: @media_brief.BR_CAMP_END, BR_CAMP_START: @media_brief.BR_CAMP_START, BR_CLIENT_NUM: @media_brief.BR_CLIENT_NUM, BR_COST: @media_brief.BR_COST, BR_COST_AMT: @media_brief.BR_COST_AMT, BR_CPP: @media_brief.BR_CPP, BR_CPS: @media_brief.BR_CPS, BR_DESC: @media_brief.BR_DESC, BR_DUE_DATE: @media_brief.BR_DUE_DATE, BR_EDITED_BY: @media_brief.BR_EDITED_BY, BR_EDITED_WHEN: @media_brief.BR_EDITED_WHEN, BR_EXHIBITS: @media_brief.BR_EXHIBITS, BR_MEDIA_REC: @media_brief.BR_MEDIA_REC, BR_MEDIA_SCHED: @media_brief.BR_MEDIA_SCHED, BR_NAME: @media_brief.BR_NAME, BR_OBJECTIVE: @media_brief.BR_OBJECTIVE, BR_RATINGS: @media_brief.BR_RATINGS, BR_REP: @media_brief.BR_REP, BR_RF: @media_brief.BR_RF, BR_SPOTS: @media_brief.BR_SPOTS, BR_STATUS: @media_brief.BR_STATUS, BR_STATUS_NUM: @media_brief.BR_STATUS_NUM, BR_TARGET_AGE: @media_brief.BR_TARGET_AGE, BR_TARGET_GENDER: @media_brief.BR_TARGET_GENDER, BR_TARGET_LIFESTYLE: @media_brief.BR_TARGET_LIFESTYLE, BR_TARGET_OCCUPATION: @media_brief.BR_TARGET_OCCUPATION, primaryKey: @media_brief.primaryKey }
    end

    assert_redirected_to media_brief_path(assigns(:media_brief))
  end

  test "should show media_brief" do
    get :show, id: @media_brief
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_brief
    assert_response :success
  end

  test "should update media_brief" do
    patch :update, id: @media_brief, media_brief: { BR_ADDED_BY: @media_brief.BR_ADDED_BY, BR_AE: @media_brief.BR_AE, BR_APPROVED: @media_brief.BR_APPROVED, BR_APPROVED_BY: @media_brief.BR_APPROVED_BY, BR_APPROVED_DATE: @media_brief.BR_APPROVED_DATE, BR_BUDGET_AMT: @media_brief.BR_BUDGET_AMT, BR_BUD_BCAST: @media_brief.BR_BUD_BCAST, BR_BUD_CABLE: @media_brief.BR_BUD_CABLE, BR_BUD_INTER: @media_brief.BR_BUD_INTER, BR_BUD_MAG: @media_brief.BR_BUD_MAG, BR_BUD_NEWS: @media_brief.BR_BUD_NEWS, BR_BUD_OTHER: @media_brief.BR_BUD_OTHER, BR_BUD_OUT: @media_brief.BR_BUD_OUT, BR_BUD_RADIO: @media_brief.BR_BUD_RADIO, BR_CAMPAIGN: @media_brief.BR_CAMPAIGN, BR_CAMP_END: @media_brief.BR_CAMP_END, BR_CAMP_START: @media_brief.BR_CAMP_START, BR_CLIENT_NUM: @media_brief.BR_CLIENT_NUM, BR_COST: @media_brief.BR_COST, BR_COST_AMT: @media_brief.BR_COST_AMT, BR_CPP: @media_brief.BR_CPP, BR_CPS: @media_brief.BR_CPS, BR_DESC: @media_brief.BR_DESC, BR_DUE_DATE: @media_brief.BR_DUE_DATE, BR_EDITED_BY: @media_brief.BR_EDITED_BY, BR_EDITED_WHEN: @media_brief.BR_EDITED_WHEN, BR_EXHIBITS: @media_brief.BR_EXHIBITS, BR_MEDIA_REC: @media_brief.BR_MEDIA_REC, BR_MEDIA_SCHED: @media_brief.BR_MEDIA_SCHED, BR_NAME: @media_brief.BR_NAME, BR_OBJECTIVE: @media_brief.BR_OBJECTIVE, BR_RATINGS: @media_brief.BR_RATINGS, BR_REP: @media_brief.BR_REP, BR_RF: @media_brief.BR_RF, BR_SPOTS: @media_brief.BR_SPOTS, BR_STATUS: @media_brief.BR_STATUS, BR_STATUS_NUM: @media_brief.BR_STATUS_NUM, BR_TARGET_AGE: @media_brief.BR_TARGET_AGE, BR_TARGET_GENDER: @media_brief.BR_TARGET_GENDER, BR_TARGET_LIFESTYLE: @media_brief.BR_TARGET_LIFESTYLE, BR_TARGET_OCCUPATION: @media_brief.BR_TARGET_OCCUPATION, primaryKey: @media_brief.primaryKey }
    assert_redirected_to media_brief_path(assigns(:media_brief))
  end

  test "should destroy media_brief" do
    assert_difference('MediaBrief.count', -1) do
      delete :destroy, id: @media_brief
    end

    assert_redirected_to media_briefs_path
  end
end

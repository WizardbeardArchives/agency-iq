require 'test_helper'

class MediaEstsControllerTest < ActionController::TestCase
  setup do
    @media_est = media_ests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_ests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_est" do
    assert_difference('MediaEst.count') do
      post :create, media_est: { ME_APPROVAL1: @media_est.ME_APPROVAL1, ME_APPROVAL2: @media_est.ME_APPROVAL2, ME_APPROVAL3: @media_est.ME_APPROVAL3, ME_APPROVED: @media_est.ME_APPROVED, ME_APPROVED_BY: @media_est.ME_APPROVED_BY, ME_APPROVED_DATE: @media_est.ME_APPROVED_DATE, ME_BRAND: @media_est.ME_BRAND, ME_BUYER: @media_est.ME_BUYER, ME_CAMPAIGN: @media_est.ME_CAMPAIGN, ME_CLIENT_NUM: @media_est.ME_CLIENT_NUM, ME_CLOSED: @media_est.ME_CLOSED, ME_COMM: @media_est.ME_COMM, ME_COST: @media_est.ME_COST, ME_DATE: @media_est.ME_DATE, ME_DESC: @media_est.ME_DESC, ME_DISCLAIMER: @media_est.ME_DISCLAIMER, ME_EDITED_BY: @media_est.ME_EDITED_BY, ME_EDITED_WHEN: @media_est.ME_EDITED_WHEN, ME_GROSS: @media_est.ME_GROSS, ME_INACTIVE: @media_est.ME_INACTIVE, ME_JOB_NUM: @media_est.ME_JOB_NUM, ME_LABEL1: @media_est.ME_LABEL1, ME_LABEL2: @media_est.ME_LABEL2, ME_LABEL3: @media_est.ME_LABEL3, ME_LABEL4: @media_est.ME_LABEL4, ME_LABEL5: @media_est.ME_LABEL5, ME_NUM: @media_est.ME_NUM, ME_SHOW_DESC: @media_est.ME_SHOW_DESC, ME_STATUS: @media_est.ME_STATUS, ME_TASK: @media_est.ME_TASK, ME_TYPE: @media_est.ME_TYPE, primaryKey: @media_est.primaryKey }
    end

    assert_redirected_to media_est_path(assigns(:media_est))
  end

  test "should show media_est" do
    get :show, id: @media_est
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_est
    assert_response :success
  end

  test "should update media_est" do
    patch :update, id: @media_est, media_est: { ME_APPROVAL1: @media_est.ME_APPROVAL1, ME_APPROVAL2: @media_est.ME_APPROVAL2, ME_APPROVAL3: @media_est.ME_APPROVAL3, ME_APPROVED: @media_est.ME_APPROVED, ME_APPROVED_BY: @media_est.ME_APPROVED_BY, ME_APPROVED_DATE: @media_est.ME_APPROVED_DATE, ME_BRAND: @media_est.ME_BRAND, ME_BUYER: @media_est.ME_BUYER, ME_CAMPAIGN: @media_est.ME_CAMPAIGN, ME_CLIENT_NUM: @media_est.ME_CLIENT_NUM, ME_CLOSED: @media_est.ME_CLOSED, ME_COMM: @media_est.ME_COMM, ME_COST: @media_est.ME_COST, ME_DATE: @media_est.ME_DATE, ME_DESC: @media_est.ME_DESC, ME_DISCLAIMER: @media_est.ME_DISCLAIMER, ME_EDITED_BY: @media_est.ME_EDITED_BY, ME_EDITED_WHEN: @media_est.ME_EDITED_WHEN, ME_GROSS: @media_est.ME_GROSS, ME_INACTIVE: @media_est.ME_INACTIVE, ME_JOB_NUM: @media_est.ME_JOB_NUM, ME_LABEL1: @media_est.ME_LABEL1, ME_LABEL2: @media_est.ME_LABEL2, ME_LABEL3: @media_est.ME_LABEL3, ME_LABEL4: @media_est.ME_LABEL4, ME_LABEL5: @media_est.ME_LABEL5, ME_NUM: @media_est.ME_NUM, ME_SHOW_DESC: @media_est.ME_SHOW_DESC, ME_STATUS: @media_est.ME_STATUS, ME_TASK: @media_est.ME_TASK, ME_TYPE: @media_est.ME_TYPE, primaryKey: @media_est.primaryKey }
    assert_redirected_to media_est_path(assigns(:media_est))
  end

  test "should destroy media_est" do
    assert_difference('MediaEst.count', -1) do
      delete :destroy, id: @media_est
    end

    assert_redirected_to media_ests_path
  end
end

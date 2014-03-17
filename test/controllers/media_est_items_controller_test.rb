require 'test_helper'

class MediaEstItemsControllerTest < ActionController::TestCase
  setup do
    @media_est_item = media_est_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_est_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_est_item" do
    assert_difference('MediaEstItem.count') do
      post :create, media_est_item: { MI_ADDED_BY: @media_est_item.MI_ADDED_BY, MI_ADDED_WHEN: @media_est_item.MI_ADDED_WHEN, MI_AD_NAME: @media_est_item.MI_AD_NAME, MI_AD_SIZE: @media_est_item.MI_AD_SIZE, MI_BILL_NET: @media_est_item.MI_BILL_NET, MI_CLOSE_DATE: @media_est_item.MI_CLOSE_DATE, MI_COMM: @media_est_item.MI_COMM, MI_COST: @media_est_item.MI_COST, MI_EDITED_BY: @media_est_item.MI_EDITED_BY, MI_EDITED_WHEN: @media_est_item.MI_EDITED_WHEN, MI_GROSS: @media_est_item.MI_GROSS, MI_ISSUE_DATE: @media_est_item.MI_ISSUE_DATE, MI_JOB_NUM: @media_est_item.MI_JOB_NUM, MI_MATERIALS_DUE: @media_est_item.MI_MATERIALS_DUE, MI_ME_NUM: @media_est_item.MI_ME_NUM, MI_NOTES: @media_est_item.MI_NOTES, MI_PERIOD: @media_est_item.MI_PERIOD, MI_PO_AMT: @media_est_item.MI_PO_AMT, MI_PO_DATE: @media_est_item.MI_PO_DATE, MI_PO_NUM: @media_est_item.MI_PO_NUM, MI_PUB: @media_est_item.MI_PUB, MI_RUN_DATE: @media_est_item.MI_RUN_DATE, MI_SHOW_NOTES: @media_est_item.MI_SHOW_NOTES, MI_STATUS: @media_est_item.MI_STATUS, MI_TASK: @media_est_item.MI_TASK, MI_VENDOR_NUM: @media_est_item.MI_VENDOR_NUM, primaryKey: @media_est_item.primaryKey }
    end

    assert_redirected_to media_est_item_path(assigns(:media_est_item))
  end

  test "should show media_est_item" do
    get :show, id: @media_est_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_est_item
    assert_response :success
  end

  test "should update media_est_item" do
    patch :update, id: @media_est_item, media_est_item: { MI_ADDED_BY: @media_est_item.MI_ADDED_BY, MI_ADDED_WHEN: @media_est_item.MI_ADDED_WHEN, MI_AD_NAME: @media_est_item.MI_AD_NAME, MI_AD_SIZE: @media_est_item.MI_AD_SIZE, MI_BILL_NET: @media_est_item.MI_BILL_NET, MI_CLOSE_DATE: @media_est_item.MI_CLOSE_DATE, MI_COMM: @media_est_item.MI_COMM, MI_COST: @media_est_item.MI_COST, MI_EDITED_BY: @media_est_item.MI_EDITED_BY, MI_EDITED_WHEN: @media_est_item.MI_EDITED_WHEN, MI_GROSS: @media_est_item.MI_GROSS, MI_ISSUE_DATE: @media_est_item.MI_ISSUE_DATE, MI_JOB_NUM: @media_est_item.MI_JOB_NUM, MI_MATERIALS_DUE: @media_est_item.MI_MATERIALS_DUE, MI_ME_NUM: @media_est_item.MI_ME_NUM, MI_NOTES: @media_est_item.MI_NOTES, MI_PERIOD: @media_est_item.MI_PERIOD, MI_PO_AMT: @media_est_item.MI_PO_AMT, MI_PO_DATE: @media_est_item.MI_PO_DATE, MI_PO_NUM: @media_est_item.MI_PO_NUM, MI_PUB: @media_est_item.MI_PUB, MI_RUN_DATE: @media_est_item.MI_RUN_DATE, MI_SHOW_NOTES: @media_est_item.MI_SHOW_NOTES, MI_STATUS: @media_est_item.MI_STATUS, MI_TASK: @media_est_item.MI_TASK, MI_VENDOR_NUM: @media_est_item.MI_VENDOR_NUM, primaryKey: @media_est_item.primaryKey }
    assert_redirected_to media_est_item_path(assigns(:media_est_item))
  end

  test "should destroy media_est_item" do
    assert_difference('MediaEstItem.count', -1) do
      delete :destroy, id: @media_est_item
    end

    assert_redirected_to media_est_items_path
  end
end

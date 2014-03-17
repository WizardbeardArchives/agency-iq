require 'test_helper'

class WorksheetsControllerTest < ActionController::TestCase
  setup do
    @worksheet = worksheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worksheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worksheet" do
    assert_difference('Worksheet.count') do
      post :create, worksheet: { EST_ADDED_BY: @worksheet.EST_ADDED_BY, EST_ADDED_WHEN: @worksheet.EST_ADDED_WHEN, EST_AMT1: @worksheet.EST_AMT1, EST_AMT2: @worksheet.EST_AMT2, EST_AMT3: @worksheet.EST_AMT3, EST_AMT4: @worksheet.EST_AMT4, EST_COLUMN: @worksheet.EST_COLUMN, EST_EDITED_BY: @worksheet.EST_EDITED_BY, EST_EDITED_WHEN: @worksheet.EST_EDITED_WHEN, EST_HRS1: @worksheet.EST_HRS1, EST_HRS2: @worksheet.EST_HRS2, EST_HRS3: @worksheet.EST_HRS3, EST_HRS4: @worksheet.EST_HRS4, EST_JOB_NUM: @worksheet.EST_JOB_NUM, EST_KEY: @worksheet.EST_KEY, EST_LINE1: @worksheet.EST_LINE1, EST_LINE2: @worksheet.EST_LINE2, EST_LINE3: @worksheet.EST_LINE3, EST_LINE4: @worksheet.EST_LINE4, EST_MARKUP: @worksheet.EST_MARKUP, EST_RATE1: @worksheet.EST_RATE1, EST_RATE2: @worksheet.EST_RATE2, EST_RATE3: @worksheet.EST_RATE3, EST_RATE4: @worksheet.EST_RATE4, EST_RESOURCE1: @worksheet.EST_RESOURCE1, EST_RESOURCE2: @worksheet.EST_RESOURCE2, EST_RESOURCE3: @worksheet.EST_RESOURCE3, EST_RESOURCE4: @worksheet.EST_RESOURCE4, EST_REV: @worksheet.EST_REV, EST_TASK: @worksheet.EST_TASK, primaryKey: @worksheet.primaryKey }
    end

    assert_redirected_to worksheet_path(assigns(:worksheet))
  end

  test "should show worksheet" do
    get :show, id: @worksheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worksheet
    assert_response :success
  end

  test "should update worksheet" do
    patch :update, id: @worksheet, worksheet: { EST_ADDED_BY: @worksheet.EST_ADDED_BY, EST_ADDED_WHEN: @worksheet.EST_ADDED_WHEN, EST_AMT1: @worksheet.EST_AMT1, EST_AMT2: @worksheet.EST_AMT2, EST_AMT3: @worksheet.EST_AMT3, EST_AMT4: @worksheet.EST_AMT4, EST_COLUMN: @worksheet.EST_COLUMN, EST_EDITED_BY: @worksheet.EST_EDITED_BY, EST_EDITED_WHEN: @worksheet.EST_EDITED_WHEN, EST_HRS1: @worksheet.EST_HRS1, EST_HRS2: @worksheet.EST_HRS2, EST_HRS3: @worksheet.EST_HRS3, EST_HRS4: @worksheet.EST_HRS4, EST_JOB_NUM: @worksheet.EST_JOB_NUM, EST_KEY: @worksheet.EST_KEY, EST_LINE1: @worksheet.EST_LINE1, EST_LINE2: @worksheet.EST_LINE2, EST_LINE3: @worksheet.EST_LINE3, EST_LINE4: @worksheet.EST_LINE4, EST_MARKUP: @worksheet.EST_MARKUP, EST_RATE1: @worksheet.EST_RATE1, EST_RATE2: @worksheet.EST_RATE2, EST_RATE3: @worksheet.EST_RATE3, EST_RATE4: @worksheet.EST_RATE4, EST_RESOURCE1: @worksheet.EST_RESOURCE1, EST_RESOURCE2: @worksheet.EST_RESOURCE2, EST_RESOURCE3: @worksheet.EST_RESOURCE3, EST_RESOURCE4: @worksheet.EST_RESOURCE4, EST_REV: @worksheet.EST_REV, EST_TASK: @worksheet.EST_TASK, primaryKey: @worksheet.primaryKey }
    assert_redirected_to worksheet_path(assigns(:worksheet))
  end

  test "should destroy worksheet" do
    assert_difference('Worksheet.count', -1) do
      delete :destroy, id: @worksheet
    end

    assert_redirected_to worksheets_path
  end
end

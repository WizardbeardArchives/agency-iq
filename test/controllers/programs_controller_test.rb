require 'test_helper'

class ProgramsControllerTest < ActionController::TestCase
  setup do
    @program = programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program" do
    assert_difference('Program.count') do
      post :create, program: { AD_BILL_NET: @program.AD_BILL_NET, AD_COMM: @program.AD_COMM, AD_EXTRA_AMT: @program.AD_EXTRA_AMT, AD_GROSS_AMT: @program.AD_GROSS_AMT, AD_ISSUE_DATE: @program.AD_ISSUE_DATE, AD_MAT_CLOSE: @program.AD_MAT_CLOSE, AD_NAME: @program.AD_NAME, AD_NET_AMT: @program.AD_NET_AMT, AD_NOTES: @program.AD_NOTES, AD_POSITION: @program.AD_POSITION, AD_RATE_BASIS: @program.AD_RATE_BASIS, AD_SPACE_CLOSE: @program.AD_SPACE_CLOSE, PGM_ADDED_BY: @program.PGM_ADDED_BY, PGM_ADDED_WHEN: @program.PGM_ADDED_WHEN, PGM_CLIENT_NUM: @program.PGM_CLIENT_NUM, PGM_CODE: @program.PGM_CODE, PGM_COST_EA: @program.PGM_COST_EA, PGM_EDITED_BY: @program.PGM_EDITED_BY, PGM_EDITED_WHEN: @program.PGM_EDITED_WHEN, PGM_GROUP: @program.PGM_GROUP, PGM_KEY: @program.PGM_KEY, PGM_NOTE: @program.PGM_NOTE, PGM_RATING_EA: @program.PGM_RATING_EA, PGM_TIME_PGM: @program.PGM_TIME_PGM, PGM_TYPE: @program.PGM_TYPE, primaryKey: @program.primaryKey }
    end

    assert_redirected_to program_path(assigns(:program))
  end

  test "should show program" do
    get :show, id: @program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program
    assert_response :success
  end

  test "should update program" do
    patch :update, id: @program, program: { AD_BILL_NET: @program.AD_BILL_NET, AD_COMM: @program.AD_COMM, AD_EXTRA_AMT: @program.AD_EXTRA_AMT, AD_GROSS_AMT: @program.AD_GROSS_AMT, AD_ISSUE_DATE: @program.AD_ISSUE_DATE, AD_MAT_CLOSE: @program.AD_MAT_CLOSE, AD_NAME: @program.AD_NAME, AD_NET_AMT: @program.AD_NET_AMT, AD_NOTES: @program.AD_NOTES, AD_POSITION: @program.AD_POSITION, AD_RATE_BASIS: @program.AD_RATE_BASIS, AD_SPACE_CLOSE: @program.AD_SPACE_CLOSE, PGM_ADDED_BY: @program.PGM_ADDED_BY, PGM_ADDED_WHEN: @program.PGM_ADDED_WHEN, PGM_CLIENT_NUM: @program.PGM_CLIENT_NUM, PGM_CODE: @program.PGM_CODE, PGM_COST_EA: @program.PGM_COST_EA, PGM_EDITED_BY: @program.PGM_EDITED_BY, PGM_EDITED_WHEN: @program.PGM_EDITED_WHEN, PGM_GROUP: @program.PGM_GROUP, PGM_KEY: @program.PGM_KEY, PGM_NOTE: @program.PGM_NOTE, PGM_RATING_EA: @program.PGM_RATING_EA, PGM_TIME_PGM: @program.PGM_TIME_PGM, PGM_TYPE: @program.PGM_TYPE, primaryKey: @program.primaryKey }
    assert_redirected_to program_path(assigns(:program))
  end

  test "should destroy program" do
    assert_difference('Program.count', -1) do
      delete :destroy, id: @program
    end

    assert_redirected_to programs_path
  end
end

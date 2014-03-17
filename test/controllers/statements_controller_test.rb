require 'test_helper'

class StatementsControllerTest < ActionController::TestCase
  setup do
    @statement = statements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statement" do
    assert_difference('Statement.count') do
      post :create, statement: { ST_AR_NUM: @statement.ST_AR_NUM, ST_CHARGE_AMT: @statement.ST_CHARGE_AMT, ST_CK_NUM: @statement.ST_CK_NUM, ST_CLIENT_NUM: @statement.ST_CLIENT_NUM, ST_DATE: @statement.ST_DATE, ST_DIVISION: @statement.ST_DIVISION, ST_JOB_NUM: @statement.ST_JOB_NUM, ST_PMT_AMT: @statement.ST_PMT_AMT, ST_PO_NUM: @statement.ST_PO_NUM, ST_TYPE: @statement.ST_TYPE, primaryKey: @statement.primaryKey }
    end

    assert_redirected_to statement_path(assigns(:statement))
  end

  test "should show statement" do
    get :show, id: @statement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statement
    assert_response :success
  end

  test "should update statement" do
    patch :update, id: @statement, statement: { ST_AR_NUM: @statement.ST_AR_NUM, ST_CHARGE_AMT: @statement.ST_CHARGE_AMT, ST_CK_NUM: @statement.ST_CK_NUM, ST_CLIENT_NUM: @statement.ST_CLIENT_NUM, ST_DATE: @statement.ST_DATE, ST_DIVISION: @statement.ST_DIVISION, ST_JOB_NUM: @statement.ST_JOB_NUM, ST_PMT_AMT: @statement.ST_PMT_AMT, ST_PO_NUM: @statement.ST_PO_NUM, ST_TYPE: @statement.ST_TYPE, primaryKey: @statement.primaryKey }
    assert_redirected_to statement_path(assigns(:statement))
  end

  test "should destroy statement" do
    assert_difference('Statement.count', -1) do
      delete :destroy, id: @statement
    end

    assert_redirected_to statements_path
  end
end

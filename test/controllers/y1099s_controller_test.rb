require 'test_helper'

class Y1099sControllerTest < ActionController::TestCase
  setup do
    @y1099 = y1099s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:y1099s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create y1099" do
    assert_difference('Y1099.count') do
      post :create, y1099: { Y_ADDRESS1: @y1099.Y_ADDRESS1, Y_ADDRESS2: @y1099.Y_ADDRESS2, Y_ADDRESS3: @y1099.Y_ADDRESS3, Y_AMT1: @y1099.Y_AMT1, Y_AMT2: @y1099.Y_AMT2, Y_AMT3: @y1099.Y_AMT3, Y_CITY_STATE1: @y1099.Y_CITY_STATE1, Y_CITY_STATE2: @y1099.Y_CITY_STATE2, Y_CITY_STATE3: @y1099.Y_CITY_STATE3, Y_DBA2: @y1099.Y_DBA2, Y_DBA: @y1099.Y_DBA, Y_NAME1: @y1099.Y_NAME1, Y_NAME2: @y1099.Y_NAME2, Y_NAME3: @y1099.Y_NAME3, Y_RENT2: @y1099.Y_RENT2, Y_RENT: @y1099.Y_RENT, Y_TAX1: @y1099.Y_TAX1, Y_TAX2: @y1099.Y_TAX2, Y_TAX3: @y1099.Y_TAX3, Y_ZIP1: @y1099.Y_ZIP1, Y_ZIP2: @y1099.Y_ZIP2, Y_ZIP3: @y1099.Y_ZIP3, primaryKey: @y1099.primaryKey }
    end

    assert_redirected_to y1099_path(assigns(:y1099))
  end

  test "should show y1099" do
    get :show, id: @y1099
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @y1099
    assert_response :success
  end

  test "should update y1099" do
    patch :update, id: @y1099, y1099: { Y_ADDRESS1: @y1099.Y_ADDRESS1, Y_ADDRESS2: @y1099.Y_ADDRESS2, Y_ADDRESS3: @y1099.Y_ADDRESS3, Y_AMT1: @y1099.Y_AMT1, Y_AMT2: @y1099.Y_AMT2, Y_AMT3: @y1099.Y_AMT3, Y_CITY_STATE1: @y1099.Y_CITY_STATE1, Y_CITY_STATE2: @y1099.Y_CITY_STATE2, Y_CITY_STATE3: @y1099.Y_CITY_STATE3, Y_DBA2: @y1099.Y_DBA2, Y_DBA: @y1099.Y_DBA, Y_NAME1: @y1099.Y_NAME1, Y_NAME2: @y1099.Y_NAME2, Y_NAME3: @y1099.Y_NAME3, Y_RENT2: @y1099.Y_RENT2, Y_RENT: @y1099.Y_RENT, Y_TAX1: @y1099.Y_TAX1, Y_TAX2: @y1099.Y_TAX2, Y_TAX3: @y1099.Y_TAX3, Y_ZIP1: @y1099.Y_ZIP1, Y_ZIP2: @y1099.Y_ZIP2, Y_ZIP3: @y1099.Y_ZIP3, primaryKey: @y1099.primaryKey }
    assert_redirected_to y1099_path(assigns(:y1099))
  end

  test "should destroy y1099" do
    assert_difference('Y1099.count', -1) do
      delete :destroy, id: @y1099
    end

    assert_redirected_to y1099s_path
  end
end

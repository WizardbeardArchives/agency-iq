require 'test_helper'

class PcsControllerTest < ActionController::TestCase
  setup do
    @pc = pcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pc" do
    assert_difference('Pc.count') do
      post :create, pc: { PC_ADDED_BY: @pc.PC_ADDED_BY, PC_ADDED_WHEN: @pc.PC_ADDED_WHEN, PC_AR_SHOW: @pc.PC_AR_SHOW, PC_BILL_ADDRESS1: @pc.PC_BILL_ADDRESS1, PC_BILL_ADDRESS2: @pc.PC_BILL_ADDRESS2, PC_BILL_ADDRESS3: @pc.PC_BILL_ADDRESS3, PC_BILL_ORG: @pc.PC_BILL_ORG, PC_BUS_UNIT: @pc.PC_BUS_UNIT, PC_CORP_ID: @pc.PC_CORP_ID, PC_DESC: @pc.PC_DESC, PC_EDITED_BY: @pc.PC_EDITED_BY, PC_EDITED_WHEN: @pc.PC_EDITED_WHEN, PC_NAME: @pc.PC_NAME, PC_NUM: @pc.PC_NUM, PC_OUTDATED: @pc.PC_OUTDATED, primaryKey: @pc.primaryKey }
    end

    assert_redirected_to pc_path(assigns(:pc))
  end

  test "should show pc" do
    get :show, id: @pc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pc
    assert_response :success
  end

  test "should update pc" do
    patch :update, id: @pc, pc: { PC_ADDED_BY: @pc.PC_ADDED_BY, PC_ADDED_WHEN: @pc.PC_ADDED_WHEN, PC_AR_SHOW: @pc.PC_AR_SHOW, PC_BILL_ADDRESS1: @pc.PC_BILL_ADDRESS1, PC_BILL_ADDRESS2: @pc.PC_BILL_ADDRESS2, PC_BILL_ADDRESS3: @pc.PC_BILL_ADDRESS3, PC_BILL_ORG: @pc.PC_BILL_ORG, PC_BUS_UNIT: @pc.PC_BUS_UNIT, PC_CORP_ID: @pc.PC_CORP_ID, PC_DESC: @pc.PC_DESC, PC_EDITED_BY: @pc.PC_EDITED_BY, PC_EDITED_WHEN: @pc.PC_EDITED_WHEN, PC_NAME: @pc.PC_NAME, PC_NUM: @pc.PC_NUM, PC_OUTDATED: @pc.PC_OUTDATED, primaryKey: @pc.primaryKey }
    assert_redirected_to pc_path(assigns(:pc))
  end

  test "should destroy pc" do
    assert_difference('Pc.count', -1) do
      delete :destroy, id: @pc
    end

    assert_redirected_to pcs_path
  end
end

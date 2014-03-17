require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { ADR_ADDED_BY: @address.ADR_ADDED_BY, ADR_ADDED_WHEN: @address.ADR_ADDED_WHEN, ADR_ADDRESS1: @address.ADR_ADDRESS1, ADR_ADDRESS2: @address.ADR_ADDRESS2, ADR_ADDRESS3: @address.ADR_ADDRESS3, ADR_ADDRESS4: @address.ADR_ADDRESS4, ADR_ADDRESS5: @address.ADR_ADDRESS5, ADR_ADDRESS6: @address.ADR_ADDRESS6, ADR_CLIENT_NUM: @address.ADR_CLIENT_NUM, ADR_EDITED_BY: @address.ADR_EDITED_BY, ADR_EDITED_WHEN: @address.ADR_EDITED_WHEN, ADR_KIND: @address.ADR_KIND, ADR_NAME: @address.ADR_NAME, ADR_ORG: @address.ADR_ORG, ADR_TAX_AREA: @address.ADR_TAX_AREA, ADR_TAX_GL1: @address.ADR_TAX_GL1, ADR_TAX_GL2: @address.ADR_TAX_GL2, ADR_TAX_RATE1: @address.ADR_TAX_RATE1, ADR_TAX_RATE2: @address.ADR_TAX_RATE2, primaryKey: @address.primaryKey }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    patch :update, id: @address, address: { ADR_ADDED_BY: @address.ADR_ADDED_BY, ADR_ADDED_WHEN: @address.ADR_ADDED_WHEN, ADR_ADDRESS1: @address.ADR_ADDRESS1, ADR_ADDRESS2: @address.ADR_ADDRESS2, ADR_ADDRESS3: @address.ADR_ADDRESS3, ADR_ADDRESS4: @address.ADR_ADDRESS4, ADR_ADDRESS5: @address.ADR_ADDRESS5, ADR_ADDRESS6: @address.ADR_ADDRESS6, ADR_CLIENT_NUM: @address.ADR_CLIENT_NUM, ADR_EDITED_BY: @address.ADR_EDITED_BY, ADR_EDITED_WHEN: @address.ADR_EDITED_WHEN, ADR_KIND: @address.ADR_KIND, ADR_NAME: @address.ADR_NAME, ADR_ORG: @address.ADR_ORG, ADR_TAX_AREA: @address.ADR_TAX_AREA, ADR_TAX_GL1: @address.ADR_TAX_GL1, ADR_TAX_GL2: @address.ADR_TAX_GL2, ADR_TAX_RATE1: @address.ADR_TAX_RATE1, ADR_TAX_RATE2: @address.ADR_TAX_RATE2, primaryKey: @address.primaryKey }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end

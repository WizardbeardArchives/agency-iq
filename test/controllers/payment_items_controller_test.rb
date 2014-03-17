require 'test_helper'

class PaymentItemsControllerTest < ActionController::TestCase
  setup do
    @payment_item = payment_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_item" do
    assert_difference('PaymentItem.count') do
      post :create, payment_item: { PX_ADDED_BY: @payment_item.PX_ADDED_BY, PX_ADDED_WHEN: @payment_item.PX_ADDED_WHEN, PX_AMT: @payment_item.PX_AMT, PX_AR_NUM: @payment_item.PX_AR_NUM, PX_CGL: @payment_item.PX_CGL, PX_CHECK_NUM: @payment_item.PX_CHECK_NUM, PX_CLIENT_NUM: @payment_item.PX_CLIENT_NUM, PX_DISC_AMT: @payment_item.PX_DISC_AMT, PX_DISC_GL: @payment_item.PX_DISC_GL, PX_EDITED_BY: @payment_item.PX_EDITED_BY, PX_EDITED_WHEN: @payment_item.PX_EDITED_WHEN, PX_PERIOD: @payment_item.PX_PERIOD, PX_POSTED: @payment_item.PX_POSTED, primaryKey: @payment_item.primaryKey }
    end

    assert_redirected_to payment_item_path(assigns(:payment_item))
  end

  test "should show payment_item" do
    get :show, id: @payment_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_item
    assert_response :success
  end

  test "should update payment_item" do
    patch :update, id: @payment_item, payment_item: { PX_ADDED_BY: @payment_item.PX_ADDED_BY, PX_ADDED_WHEN: @payment_item.PX_ADDED_WHEN, PX_AMT: @payment_item.PX_AMT, PX_AR_NUM: @payment_item.PX_AR_NUM, PX_CGL: @payment_item.PX_CGL, PX_CHECK_NUM: @payment_item.PX_CHECK_NUM, PX_CLIENT_NUM: @payment_item.PX_CLIENT_NUM, PX_DISC_AMT: @payment_item.PX_DISC_AMT, PX_DISC_GL: @payment_item.PX_DISC_GL, PX_EDITED_BY: @payment_item.PX_EDITED_BY, PX_EDITED_WHEN: @payment_item.PX_EDITED_WHEN, PX_PERIOD: @payment_item.PX_PERIOD, PX_POSTED: @payment_item.PX_POSTED, primaryKey: @payment_item.primaryKey }
    assert_redirected_to payment_item_path(assigns(:payment_item))
  end

  test "should destroy payment_item" do
    assert_difference('PaymentItem.count', -1) do
      delete :destroy, id: @payment_item
    end

    assert_redirected_to payment_items_path
  end
end

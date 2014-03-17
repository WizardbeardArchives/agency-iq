require 'test_helper'

class PaymentsControllerTest < ActionController::TestCase
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post :create, payment: { PAY_ADDED_BY: @payment.PAY_ADDED_BY, PAY_ADDED_WHEN: @payment.PAY_ADDED_WHEN, PAY_AMT: @payment.PAY_AMT, PAY_BANK: @payment.PAY_BANK, PAY_BANK_ID: @payment.PAY_BANK_ID, PAY_BATCH: @payment.PAY_BATCH, PAY_BOOLEAN: @payment.PAY_BOOLEAN, PAY_CHECK_DATE: @payment.PAY_CHECK_DATE, PAY_CHECK_NUM: @payment.PAY_CHECK_NUM, PAY_CLIENT_NUM: @payment.PAY_CLIENT_NUM, PAY_DATE: @payment.PAY_DATE, PAY_DESC: @payment.PAY_DESC, PAY_DGL: @payment.PAY_DGL, PAY_EDITED_BY: @payment.PAY_EDITED_BY, PAY_EDITED_WHEN: @payment.PAY_EDITED_WHEN, PAY_KIND: @payment.PAY_KIND, PAY_OK: @payment.PAY_OK, PAY_PERIOD: @payment.PAY_PERIOD, PAY_POSTED: @payment.PAY_POSTED, PAY_POSTED_BY: @payment.PAY_POSTED_BY, PAY_POSTED_WHEN: @payment.PAY_POSTED_WHEN, PAY_TYPE: @payment.PAY_TYPE, primaryKey: @payment.primaryKey }
    end

    assert_redirected_to payment_path(assigns(:payment))
  end

  test "should show payment" do
    get :show, id: @payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment
    assert_response :success
  end

  test "should update payment" do
    patch :update, id: @payment, payment: { PAY_ADDED_BY: @payment.PAY_ADDED_BY, PAY_ADDED_WHEN: @payment.PAY_ADDED_WHEN, PAY_AMT: @payment.PAY_AMT, PAY_BANK: @payment.PAY_BANK, PAY_BANK_ID: @payment.PAY_BANK_ID, PAY_BATCH: @payment.PAY_BATCH, PAY_BOOLEAN: @payment.PAY_BOOLEAN, PAY_CHECK_DATE: @payment.PAY_CHECK_DATE, PAY_CHECK_NUM: @payment.PAY_CHECK_NUM, PAY_CLIENT_NUM: @payment.PAY_CLIENT_NUM, PAY_DATE: @payment.PAY_DATE, PAY_DESC: @payment.PAY_DESC, PAY_DGL: @payment.PAY_DGL, PAY_EDITED_BY: @payment.PAY_EDITED_BY, PAY_EDITED_WHEN: @payment.PAY_EDITED_WHEN, PAY_KIND: @payment.PAY_KIND, PAY_OK: @payment.PAY_OK, PAY_PERIOD: @payment.PAY_PERIOD, PAY_POSTED: @payment.PAY_POSTED, PAY_POSTED_BY: @payment.PAY_POSTED_BY, PAY_POSTED_WHEN: @payment.PAY_POSTED_WHEN, PAY_TYPE: @payment.PAY_TYPE, primaryKey: @payment.primaryKey }
    assert_redirected_to payment_path(assigns(:payment))
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete :destroy, id: @payment
    end

    assert_redirected_to payments_path
  end
end

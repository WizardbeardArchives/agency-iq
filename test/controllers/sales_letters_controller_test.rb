require 'test_helper'

class SalesLettersControllerTest < ActionController::TestCase
  setup do
    @sales_letter = sales_letters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_letters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_letter" do
    assert_difference('SalesLetter.count') do
      post :create, sales_letter: { SLTR_ADDED_BY: @sales_letter.SLTR_ADDED_BY, SLTR_ADDED_WHEN: @sales_letter.SLTR_ADDED_WHEN, SLTR_AUTHOR: @sales_letter.SLTR_AUTHOR, SLTR_BODY: @sales_letter.SLTR_BODY, SLTR_CLIENT_NUM: @sales_letter.SLTR_CLIENT_NUM, SLTR_COUNT: @sales_letter.SLTR_COUNT, SLTR_DESC: @sales_letter.SLTR_DESC, SLTR_EDITED_BY: @sales_letter.SLTR_EDITED_BY, SLTR_EDITED_WHEN: @sales_letter.SLTR_EDITED_WHEN, SLTR_END: @sales_letter.SLTR_END, SLTR_ID: @sales_letter.SLTR_ID, SLTR_KIND: @sales_letter.SLTR_KIND, SLTR_LAST_USE: @sales_letter.SLTR_LAST_USE, SLTR_OK: @sales_letter.SLTR_OK, SLTR_OK_BY: @sales_letter.SLTR_OK_BY, SLTR_ONE_TIME: @sales_letter.SLTR_ONE_TIME, SLTR_PS: @sales_letter.SLTR_PS, SLTR_START: @sales_letter.SLTR_START, SLTR_SUBJECT: @sales_letter.SLTR_SUBJECT, primaryKey: @sales_letter.primaryKey }
    end

    assert_redirected_to sales_letter_path(assigns(:sales_letter))
  end

  test "should show sales_letter" do
    get :show, id: @sales_letter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_letter
    assert_response :success
  end

  test "should update sales_letter" do
    patch :update, id: @sales_letter, sales_letter: { SLTR_ADDED_BY: @sales_letter.SLTR_ADDED_BY, SLTR_ADDED_WHEN: @sales_letter.SLTR_ADDED_WHEN, SLTR_AUTHOR: @sales_letter.SLTR_AUTHOR, SLTR_BODY: @sales_letter.SLTR_BODY, SLTR_CLIENT_NUM: @sales_letter.SLTR_CLIENT_NUM, SLTR_COUNT: @sales_letter.SLTR_COUNT, SLTR_DESC: @sales_letter.SLTR_DESC, SLTR_EDITED_BY: @sales_letter.SLTR_EDITED_BY, SLTR_EDITED_WHEN: @sales_letter.SLTR_EDITED_WHEN, SLTR_END: @sales_letter.SLTR_END, SLTR_ID: @sales_letter.SLTR_ID, SLTR_KIND: @sales_letter.SLTR_KIND, SLTR_LAST_USE: @sales_letter.SLTR_LAST_USE, SLTR_OK: @sales_letter.SLTR_OK, SLTR_OK_BY: @sales_letter.SLTR_OK_BY, SLTR_ONE_TIME: @sales_letter.SLTR_ONE_TIME, SLTR_PS: @sales_letter.SLTR_PS, SLTR_START: @sales_letter.SLTR_START, SLTR_SUBJECT: @sales_letter.SLTR_SUBJECT, primaryKey: @sales_letter.primaryKey }
    assert_redirected_to sales_letter_path(assigns(:sales_letter))
  end

  test "should destroy sales_letter" do
    assert_difference('SalesLetter.count', -1) do
      delete :destroy, id: @sales_letter
    end

    assert_redirected_to sales_letters_path
  end
end

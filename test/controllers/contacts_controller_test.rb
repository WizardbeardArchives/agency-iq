require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { CON_ADDED_BY: @contact.CON_ADDED_BY, CON_ADDRESS1: @contact.CON_ADDRESS1, CON_ADDRESS2: @contact.CON_ADDRESS2, CON_ADDRESS3: @contact.CON_ADDRESS3, CON_ADDRESS4: @contact.CON_ADDRESS4, CON_ADDRESS5: @contact.CON_ADDRESS5, CON_ADDRESS6: @contact.CON_ADDRESS6, CON_APPROVE_JOBS: @contact.CON_APPROVE_JOBS, CON_C_NUM: @contact.CON_C_NUM, CON_DATE_ADDED: @contact.CON_DATE_ADDED, CON_DECISION_MAKER: @contact.CON_DECISION_MAKER, CON_EDITED_BY: @contact.CON_EDITED_BY, CON_EDITED_WHEN: @contact.CON_EDITED_WHEN, CON_EMAIL_HOME: @contact.CON_EMAIL_HOME, CON_EMAIL_WORK: @contact.CON_EMAIL_WORK, CON_FAX_HOME: @contact.CON_FAX_HOME, CON_FAX_WORK: @contact.CON_FAX_WORK, CON_FIRST_NAME: @contact.CON_FIRST_NAME, CON_FULL_NAME: @contact.CON_FULL_NAME, CON_KIND: @contact.CON_KIND, CON_LAST_BY: @contact.CON_LAST_BY, CON_LAST_CALL: @contact.CON_LAST_CALL, CON_LAST_NAME: @contact.CON_LAST_NAME, CON_MID_INITIAL: @contact.CON_MID_INITIAL, CON_NOTE: @contact.CON_NOTE, CON_ORG: @contact.CON_ORG, CON_PAGER: @contact.CON_PAGER, CON_PHONE_HOME: @contact.CON_PHONE_HOME, CON_PHONE_MOBILE: @contact.CON_PHONE_MOBILE, CON_PHONE_WORK: @contact.CON_PHONE_WORK, CON_SAL: @contact.CON_SAL, CON_SALES_EMAIL: @contact.CON_SALES_EMAIL, CON_TITLE: @contact.CON_TITLE, CON_V_NUM: @contact.CON_V_NUM, primaryKey: @contact.primaryKey }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact, contact: { CON_ADDED_BY: @contact.CON_ADDED_BY, CON_ADDRESS1: @contact.CON_ADDRESS1, CON_ADDRESS2: @contact.CON_ADDRESS2, CON_ADDRESS3: @contact.CON_ADDRESS3, CON_ADDRESS4: @contact.CON_ADDRESS4, CON_ADDRESS5: @contact.CON_ADDRESS5, CON_ADDRESS6: @contact.CON_ADDRESS6, CON_APPROVE_JOBS: @contact.CON_APPROVE_JOBS, CON_C_NUM: @contact.CON_C_NUM, CON_DATE_ADDED: @contact.CON_DATE_ADDED, CON_DECISION_MAKER: @contact.CON_DECISION_MAKER, CON_EDITED_BY: @contact.CON_EDITED_BY, CON_EDITED_WHEN: @contact.CON_EDITED_WHEN, CON_EMAIL_HOME: @contact.CON_EMAIL_HOME, CON_EMAIL_WORK: @contact.CON_EMAIL_WORK, CON_FAX_HOME: @contact.CON_FAX_HOME, CON_FAX_WORK: @contact.CON_FAX_WORK, CON_FIRST_NAME: @contact.CON_FIRST_NAME, CON_FULL_NAME: @contact.CON_FULL_NAME, CON_KIND: @contact.CON_KIND, CON_LAST_BY: @contact.CON_LAST_BY, CON_LAST_CALL: @contact.CON_LAST_CALL, CON_LAST_NAME: @contact.CON_LAST_NAME, CON_MID_INITIAL: @contact.CON_MID_INITIAL, CON_NOTE: @contact.CON_NOTE, CON_ORG: @contact.CON_ORG, CON_PAGER: @contact.CON_PAGER, CON_PHONE_HOME: @contact.CON_PHONE_HOME, CON_PHONE_MOBILE: @contact.CON_PHONE_MOBILE, CON_PHONE_WORK: @contact.CON_PHONE_WORK, CON_SAL: @contact.CON_SAL, CON_SALES_EMAIL: @contact.CON_SALES_EMAIL, CON_TITLE: @contact.CON_TITLE, CON_V_NUM: @contact.CON_V_NUM, primaryKey: @contact.primaryKey }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end

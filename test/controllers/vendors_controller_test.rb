require 'test_helper'

class VendorsControllerTest < ActionController::TestCase
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendor" do
    assert_difference('Vendor.count') do
      post :create, vendor: { V_1099: @vendor.V_1099, V_1099_RENT: @vendor.V_1099_RENT, V_10: @vendor.V_10, V_11: @vendor.V_11, V_12: @vendor.V_12, V_1: @vendor.V_1, V_2: @vendor.V_2, V_30DAY: @vendor.V_30DAY, V_3: @vendor.V_3, V_4: @vendor.V_4, V_5: @vendor.V_5, V_60DAY: @vendor.V_60DAY, V_6: @vendor.V_6, V_7: @vendor.V_7, V_8: @vendor.V_8, V_90DAY: @vendor.V_90DAY, V_9: @vendor.V_9, V_ACCT_NUM: @vendor.V_ACCT_NUM, V_ACTIVE: @vendor.V_ACTIVE, V_ADDED_BY: @vendor.V_ADDED_BY, V_ADDED_WHEN: @vendor.V_ADDED_WHEN, V_ADDRESS2_1: @vendor.V_ADDRESS2_1, V_ADDRESS2_2: @vendor.V_ADDRESS2_2, V_ADDRESS2_3: @vendor.V_ADDRESS2_3, V_ADDRESS2_4: @vendor.V_ADDRESS2_4, V_ADDRESS3_1: @vendor.V_ADDRESS3_1, V_ADDRESS3_2: @vendor.V_ADDRESS3_2, V_ADDRESS3_3: @vendor.V_ADDRESS3_3, V_ADDRESS3_4: @vendor.V_ADDRESS3_4, V_ALLOCATE: @vendor.V_ALLOCATE, V_BALN: @vendor.V_BALN, V_CAR_PHONE1: @vendor.V_CAR_PHONE1, V_CAR_PHONE2: @vendor.V_CAR_PHONE2, V_CAR_PHONE3: @vendor.V_CAR_PHONE3, V_CGL: @vendor.V_CGL, V_CHANGED_BY: @vendor.V_CHANGED_BY, V_CHANGED_WHEN: @vendor.V_CHANGED_WHEN, V_CITY: @vendor.V_CITY, V_CK_MEMO: @vendor.V_CK_MEMO, V_COMM: @vendor.V_COMM, V_CONTACT: @vendor.V_CONTACT, V_CORP_ID: @vendor.V_CORP_ID, V_CURRN: @vendor.V_CURRN, V_DBA: @vendor.V_DBA, V_DGL: @vendor.V_DGL, V_DISC_DGL: @vendor.V_DISC_DGL, V_EDITED_BY: @vendor.V_EDITED_BY, V_EDITED_WHEN: @vendor.V_EDITED_WHEN, V_EMAIL: @vendor.V_EMAIL, V_FAX1: @vendor.V_FAX1, V_FAX2: @vendor.V_FAX2, V_FAX3: @vendor.V_FAX3, V_FAX: @vendor.V_FAX, V_HOLD: @vendor.V_HOLD, V_HOLD_WHY: @vendor.V_HOLD_WHY, V_HOME_PHONE1: @vendor.V_HOME_PHONE1, V_HOME_PHONE2: @vendor.V_HOME_PHONE2, V_HOME_PHONE3: @vendor.V_HOME_PHONE3, V_L10: @vendor.V_L10, V_L11: @vendor.V_L11, V_L12: @vendor.V_L12, V_L1: @vendor.V_L1, V_L2: @vendor.V_L2, V_L3: @vendor.V_L3, V_L4: @vendor.V_L4, V_L5: @vendor.V_L5, V_L6: @vendor.V_L6, V_L7: @vendor.V_L7, V_L8: @vendor.V_L8, V_L9: @vendor.V_L9, V_LAST_AP: @vendor.V_LAST_AP, V_MARKET: @vendor.V_MARKET, V_MARKUP: @vendor.V_MARKUP, V_MEDIA_KIND: @vendor.V_MEDIA_KIND, V_MEDIA_VNUM: @vendor.V_MEDIA_VNUM, V_NAME1: @vendor.V_NAME1, V_NAME2: @vendor.V_NAME2, V_NAME3: @vendor.V_NAME3, V_NCF_PREFIX1: @vendor.V_NCF_PREFIX1, V_NOTE1: @vendor.V_NOTE1, V_NOTE2: @vendor.V_NOTE2, V_NOTE3: @vendor.V_NOTE3, V_NOTES: @vendor.V_NOTES, V_NO_RFQ: @vendor.V_NO_RFQ, V_NUM: @vendor.V_NUM, V_OPEN: @vendor.V_OPEN, V_ORG: @vendor.V_ORG, V_PAGER1: @vendor.V_PAGER1, V_PAGER2: @vendor.V_PAGER2, V_PAGER3: @vendor.V_PAGER3, V_PAID_ONLINE: @vendor.V_PAID_ONLINE, V_PHONE1: @vendor.V_PHONE1, V_PHONE2: @vendor.V_PHONE2, V_PHONE3: @vendor.V_PHONE3, V_PHONE: @vendor.V_PHONE, V_RFQ_TYPE: @vendor.V_RFQ_TYPE, V_STREET: @vendor.V_STREET, V_TASK: @vendor.V_TASK, V_TAX_ID: @vendor.V_TAX_ID, V_TERMS1: @vendor.V_TERMS1, V_TERMS2: @vendor.V_TERMS2, V_TERMS3: @vendor.V_TERMS3, V_TIME: @vendor.V_TIME, V_TYPE: @vendor.V_TYPE, V_WEB_URL: @vendor.V_WEB_URL, V_YTD: @vendor.V_YTD, V_ZIP: @vendor.V_ZIP, primaryKey: @vendor.primaryKey }
    end

    assert_redirected_to vendor_path(assigns(:vendor))
  end

  test "should show vendor" do
    get :show, id: @vendor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendor
    assert_response :success
  end

  test "should update vendor" do
    patch :update, id: @vendor, vendor: { V_1099: @vendor.V_1099, V_1099_RENT: @vendor.V_1099_RENT, V_10: @vendor.V_10, V_11: @vendor.V_11, V_12: @vendor.V_12, V_1: @vendor.V_1, V_2: @vendor.V_2, V_30DAY: @vendor.V_30DAY, V_3: @vendor.V_3, V_4: @vendor.V_4, V_5: @vendor.V_5, V_60DAY: @vendor.V_60DAY, V_6: @vendor.V_6, V_7: @vendor.V_7, V_8: @vendor.V_8, V_90DAY: @vendor.V_90DAY, V_9: @vendor.V_9, V_ACCT_NUM: @vendor.V_ACCT_NUM, V_ACTIVE: @vendor.V_ACTIVE, V_ADDED_BY: @vendor.V_ADDED_BY, V_ADDED_WHEN: @vendor.V_ADDED_WHEN, V_ADDRESS2_1: @vendor.V_ADDRESS2_1, V_ADDRESS2_2: @vendor.V_ADDRESS2_2, V_ADDRESS2_3: @vendor.V_ADDRESS2_3, V_ADDRESS2_4: @vendor.V_ADDRESS2_4, V_ADDRESS3_1: @vendor.V_ADDRESS3_1, V_ADDRESS3_2: @vendor.V_ADDRESS3_2, V_ADDRESS3_3: @vendor.V_ADDRESS3_3, V_ADDRESS3_4: @vendor.V_ADDRESS3_4, V_ALLOCATE: @vendor.V_ALLOCATE, V_BALN: @vendor.V_BALN, V_CAR_PHONE1: @vendor.V_CAR_PHONE1, V_CAR_PHONE2: @vendor.V_CAR_PHONE2, V_CAR_PHONE3: @vendor.V_CAR_PHONE3, V_CGL: @vendor.V_CGL, V_CHANGED_BY: @vendor.V_CHANGED_BY, V_CHANGED_WHEN: @vendor.V_CHANGED_WHEN, V_CITY: @vendor.V_CITY, V_CK_MEMO: @vendor.V_CK_MEMO, V_COMM: @vendor.V_COMM, V_CONTACT: @vendor.V_CONTACT, V_CORP_ID: @vendor.V_CORP_ID, V_CURRN: @vendor.V_CURRN, V_DBA: @vendor.V_DBA, V_DGL: @vendor.V_DGL, V_DISC_DGL: @vendor.V_DISC_DGL, V_EDITED_BY: @vendor.V_EDITED_BY, V_EDITED_WHEN: @vendor.V_EDITED_WHEN, V_EMAIL: @vendor.V_EMAIL, V_FAX1: @vendor.V_FAX1, V_FAX2: @vendor.V_FAX2, V_FAX3: @vendor.V_FAX3, V_FAX: @vendor.V_FAX, V_HOLD: @vendor.V_HOLD, V_HOLD_WHY: @vendor.V_HOLD_WHY, V_HOME_PHONE1: @vendor.V_HOME_PHONE1, V_HOME_PHONE2: @vendor.V_HOME_PHONE2, V_HOME_PHONE3: @vendor.V_HOME_PHONE3, V_L10: @vendor.V_L10, V_L11: @vendor.V_L11, V_L12: @vendor.V_L12, V_L1: @vendor.V_L1, V_L2: @vendor.V_L2, V_L3: @vendor.V_L3, V_L4: @vendor.V_L4, V_L5: @vendor.V_L5, V_L6: @vendor.V_L6, V_L7: @vendor.V_L7, V_L8: @vendor.V_L8, V_L9: @vendor.V_L9, V_LAST_AP: @vendor.V_LAST_AP, V_MARKET: @vendor.V_MARKET, V_MARKUP: @vendor.V_MARKUP, V_MEDIA_KIND: @vendor.V_MEDIA_KIND, V_MEDIA_VNUM: @vendor.V_MEDIA_VNUM, V_NAME1: @vendor.V_NAME1, V_NAME2: @vendor.V_NAME2, V_NAME3: @vendor.V_NAME3, V_NCF_PREFIX1: @vendor.V_NCF_PREFIX1, V_NOTE1: @vendor.V_NOTE1, V_NOTE2: @vendor.V_NOTE2, V_NOTE3: @vendor.V_NOTE3, V_NOTES: @vendor.V_NOTES, V_NO_RFQ: @vendor.V_NO_RFQ, V_NUM: @vendor.V_NUM, V_OPEN: @vendor.V_OPEN, V_ORG: @vendor.V_ORG, V_PAGER1: @vendor.V_PAGER1, V_PAGER2: @vendor.V_PAGER2, V_PAGER3: @vendor.V_PAGER3, V_PAID_ONLINE: @vendor.V_PAID_ONLINE, V_PHONE1: @vendor.V_PHONE1, V_PHONE2: @vendor.V_PHONE2, V_PHONE3: @vendor.V_PHONE3, V_PHONE: @vendor.V_PHONE, V_RFQ_TYPE: @vendor.V_RFQ_TYPE, V_STREET: @vendor.V_STREET, V_TASK: @vendor.V_TASK, V_TAX_ID: @vendor.V_TAX_ID, V_TERMS1: @vendor.V_TERMS1, V_TERMS2: @vendor.V_TERMS2, V_TERMS3: @vendor.V_TERMS3, V_TIME: @vendor.V_TIME, V_TYPE: @vendor.V_TYPE, V_WEB_URL: @vendor.V_WEB_URL, V_YTD: @vendor.V_YTD, V_ZIP: @vendor.V_ZIP, primaryKey: @vendor.primaryKey }
    assert_redirected_to vendor_path(assigns(:vendor))
  end

  test "should destroy vendor" do
    assert_difference('Vendor.count', -1) do
      delete :destroy, id: @vendor
    end

    assert_redirected_to vendors_path
  end
end

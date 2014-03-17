require 'test_helper'

class MediaPrefsControllerTest < ActionController::TestCase
  setup do
    @media_pref = media_prefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_prefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_pref" do
    assert_difference('MediaPref.count') do
      post :create, media_pref: { MPF_ADDRESS1: @media_pref.MPF_ADDRESS1, MPF_ADDRESS2: @media_pref.MPF_ADDRESS2, MPF_ADDRESS3: @media_pref.MPF_ADDRESS3, MPF_AUTO_NUM: @media_pref.MPF_AUTO_NUM, MPF_CABLE_1Q: @media_pref.MPF_CABLE_1Q, MPF_CABLE_2Q: @media_pref.MPF_CABLE_2Q, MPF_CABLE_3Q: @media_pref.MPF_CABLE_3Q, MPF_CABLE_4Q: @media_pref.MPF_CABLE_4Q, MPF_COMM: @media_pref.MPF_COMM, MPF_DISCLAIMER: @media_pref.MPF_DISCLAIMER, MPF_EDITED_BY: @media_pref.MPF_EDITED_BY, MPF_EDITED_WHEN: @media_pref.MPF_EDITED_WHEN, MPF_FIELD1: @media_pref.MPF_FIELD1, MPF_FIELD2: @media_pref.MPF_FIELD2, MPF_FIELD3: @media_pref.MPF_FIELD3, MPF_FIELD4: @media_pref.MPF_FIELD4, MPF_FIELD5: @media_pref.MPF_FIELD5, MPF_INT_1Q: @media_pref.MPF_INT_1Q, MPF_INT_2Q: @media_pref.MPF_INT_2Q, MPF_INT_3Q: @media_pref.MPF_INT_3Q, MPF_INT_4Q: @media_pref.MPF_INT_4Q, MPF_KIND: @media_pref.MPF_KIND, MPF_LOGO: @media_pref.MPF_LOGO, MPF_MAG_1Q: @media_pref.MPF_MAG_1Q, MPF_MAG_2Q: @media_pref.MPF_MAG_2Q, MPF_MAG_3Q: @media_pref.MPF_MAG_3Q, MPF_MAG_4Q: @media_pref.MPF_MAG_4Q, MPF_NEWS_1Q: @media_pref.MPF_NEWS_1Q, MPF_NEWS_2Q: @media_pref.MPF_NEWS_2Q, MPF_NEWS_3Q: @media_pref.MPF_NEWS_3Q, MPF_NEWS_4Q: @media_pref.MPF_NEWS_4Q, MPF_NUM: @media_pref.MPF_NUM, MPF_ORG: @media_pref.MPF_ORG, MPF_OTHER_1Q: @media_pref.MPF_OTHER_1Q, MPF_OTHER_2Q: @media_pref.MPF_OTHER_2Q, MPF_OTHER_3Q: @media_pref.MPF_OTHER_3Q, MPF_OTHER_4Q: @media_pref.MPF_OTHER_4Q, MPF_OUT_1Q: @media_pref.MPF_OUT_1Q, MPF_OUT_2Q: @media_pref.MPF_OUT_2Q, MPF_OUT_3Q: @media_pref.MPF_OUT_3Q, MPF_OUT_4Q: @media_pref.MPF_OUT_4Q, MPF_PHONE: @media_pref.MPF_PHONE, MPF_PREFIX: @media_pref.MPF_PREFIX, MPF_RADIO_1Q: @media_pref.MPF_RADIO_1Q, MPF_RADIO_2Q: @media_pref.MPF_RADIO_2Q, MPF_RADIO_3Q: @media_pref.MPF_RADIO_3Q, MPF_RADIO_4Q: @media_pref.MPF_RADIO_4Q, MPF_SHOW_CL: @media_pref.MPF_SHOW_CL, MPF_TO1: @media_pref.MPF_TO1, MPF_TO2: @media_pref.MPF_TO2, MPF_TO3: @media_pref.MPF_TO3, MPF_TO4: @media_pref.MPF_TO4, MPF_TO5: @media_pref.MPF_TO5, MPF_TO6: @media_pref.MPF_TO6, MPF_TV_1Q: @media_pref.MPF_TV_1Q, MPF_TV_2Q: @media_pref.MPF_TV_2Q, MPF_TV_3Q: @media_pref.MPF_TV_3Q, MPF_TV_4Q: @media_pref.MPF_TV_4Q, primaryKey: @media_pref.primaryKey }
    end

    assert_redirected_to media_pref_path(assigns(:media_pref))
  end

  test "should show media_pref" do
    get :show, id: @media_pref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_pref
    assert_response :success
  end

  test "should update media_pref" do
    patch :update, id: @media_pref, media_pref: { MPF_ADDRESS1: @media_pref.MPF_ADDRESS1, MPF_ADDRESS2: @media_pref.MPF_ADDRESS2, MPF_ADDRESS3: @media_pref.MPF_ADDRESS3, MPF_AUTO_NUM: @media_pref.MPF_AUTO_NUM, MPF_CABLE_1Q: @media_pref.MPF_CABLE_1Q, MPF_CABLE_2Q: @media_pref.MPF_CABLE_2Q, MPF_CABLE_3Q: @media_pref.MPF_CABLE_3Q, MPF_CABLE_4Q: @media_pref.MPF_CABLE_4Q, MPF_COMM: @media_pref.MPF_COMM, MPF_DISCLAIMER: @media_pref.MPF_DISCLAIMER, MPF_EDITED_BY: @media_pref.MPF_EDITED_BY, MPF_EDITED_WHEN: @media_pref.MPF_EDITED_WHEN, MPF_FIELD1: @media_pref.MPF_FIELD1, MPF_FIELD2: @media_pref.MPF_FIELD2, MPF_FIELD3: @media_pref.MPF_FIELD3, MPF_FIELD4: @media_pref.MPF_FIELD4, MPF_FIELD5: @media_pref.MPF_FIELD5, MPF_INT_1Q: @media_pref.MPF_INT_1Q, MPF_INT_2Q: @media_pref.MPF_INT_2Q, MPF_INT_3Q: @media_pref.MPF_INT_3Q, MPF_INT_4Q: @media_pref.MPF_INT_4Q, MPF_KIND: @media_pref.MPF_KIND, MPF_LOGO: @media_pref.MPF_LOGO, MPF_MAG_1Q: @media_pref.MPF_MAG_1Q, MPF_MAG_2Q: @media_pref.MPF_MAG_2Q, MPF_MAG_3Q: @media_pref.MPF_MAG_3Q, MPF_MAG_4Q: @media_pref.MPF_MAG_4Q, MPF_NEWS_1Q: @media_pref.MPF_NEWS_1Q, MPF_NEWS_2Q: @media_pref.MPF_NEWS_2Q, MPF_NEWS_3Q: @media_pref.MPF_NEWS_3Q, MPF_NEWS_4Q: @media_pref.MPF_NEWS_4Q, MPF_NUM: @media_pref.MPF_NUM, MPF_ORG: @media_pref.MPF_ORG, MPF_OTHER_1Q: @media_pref.MPF_OTHER_1Q, MPF_OTHER_2Q: @media_pref.MPF_OTHER_2Q, MPF_OTHER_3Q: @media_pref.MPF_OTHER_3Q, MPF_OTHER_4Q: @media_pref.MPF_OTHER_4Q, MPF_OUT_1Q: @media_pref.MPF_OUT_1Q, MPF_OUT_2Q: @media_pref.MPF_OUT_2Q, MPF_OUT_3Q: @media_pref.MPF_OUT_3Q, MPF_OUT_4Q: @media_pref.MPF_OUT_4Q, MPF_PHONE: @media_pref.MPF_PHONE, MPF_PREFIX: @media_pref.MPF_PREFIX, MPF_RADIO_1Q: @media_pref.MPF_RADIO_1Q, MPF_RADIO_2Q: @media_pref.MPF_RADIO_2Q, MPF_RADIO_3Q: @media_pref.MPF_RADIO_3Q, MPF_RADIO_4Q: @media_pref.MPF_RADIO_4Q, MPF_SHOW_CL: @media_pref.MPF_SHOW_CL, MPF_TO1: @media_pref.MPF_TO1, MPF_TO2: @media_pref.MPF_TO2, MPF_TO3: @media_pref.MPF_TO3, MPF_TO4: @media_pref.MPF_TO4, MPF_TO5: @media_pref.MPF_TO5, MPF_TO6: @media_pref.MPF_TO6, MPF_TV_1Q: @media_pref.MPF_TV_1Q, MPF_TV_2Q: @media_pref.MPF_TV_2Q, MPF_TV_3Q: @media_pref.MPF_TV_3Q, MPF_TV_4Q: @media_pref.MPF_TV_4Q, primaryKey: @media_pref.primaryKey }
    assert_redirected_to media_pref_path(assigns(:media_pref))
  end

  test "should destroy media_pref" do
    assert_difference('MediaPref.count', -1) do
      delete :destroy, id: @media_pref
    end

    assert_redirected_to media_prefs_path
  end
end

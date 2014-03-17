require 'test_helper'

class AssetsPrefsControllerTest < ActionController::TestCase
  setup do
    @assets_pref = assets_prefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assets_prefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assets_pref" do
    assert_difference('AssetsPref.count') do
      post :create, assets_pref: { ASP_ART_SERVER: @assets_pref.ASP_ART_SERVER, ASP_ART_SERVER_W: @assets_pref.ASP_ART_SERVER_W, ASP_AUTO_FOLDER: @assets_pref.ASP_AUTO_FOLDER, ASP_CODE: @assets_pref.ASP_CODE, ASP_EDITED_BY: @assets_pref.ASP_EDITED_BY, ASP_EDITED_WHEN: @assets_pref.ASP_EDITED_WHEN, ASP_FIELD1: @assets_pref.ASP_FIELD1, ASP_FIELD2: @assets_pref.ASP_FIELD2, ASP_FIELD3: @assets_pref.ASP_FIELD3, ASP_FIELD4: @assets_pref.ASP_FIELD4, ASP_FIELD5: @assets_pref.ASP_FIELD5, ASP_INCL_JNAME: @assets_pref.ASP_INCL_JNAME, ASP_IP: @assets_pref.ASP_IP, ASP_ORG_BY_CLIENT: @assets_pref.ASP_ORG_BY_CLIENT, ASP_TRACK_USAGE: @assets_pref.ASP_TRACK_USAGE, primaryKey: @assets_pref.primaryKey }
    end

    assert_redirected_to assets_pref_path(assigns(:assets_pref))
  end

  test "should show assets_pref" do
    get :show, id: @assets_pref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assets_pref
    assert_response :success
  end

  test "should update assets_pref" do
    patch :update, id: @assets_pref, assets_pref: { ASP_ART_SERVER: @assets_pref.ASP_ART_SERVER, ASP_ART_SERVER_W: @assets_pref.ASP_ART_SERVER_W, ASP_AUTO_FOLDER: @assets_pref.ASP_AUTO_FOLDER, ASP_CODE: @assets_pref.ASP_CODE, ASP_EDITED_BY: @assets_pref.ASP_EDITED_BY, ASP_EDITED_WHEN: @assets_pref.ASP_EDITED_WHEN, ASP_FIELD1: @assets_pref.ASP_FIELD1, ASP_FIELD2: @assets_pref.ASP_FIELD2, ASP_FIELD3: @assets_pref.ASP_FIELD3, ASP_FIELD4: @assets_pref.ASP_FIELD4, ASP_FIELD5: @assets_pref.ASP_FIELD5, ASP_INCL_JNAME: @assets_pref.ASP_INCL_JNAME, ASP_IP: @assets_pref.ASP_IP, ASP_ORG_BY_CLIENT: @assets_pref.ASP_ORG_BY_CLIENT, ASP_TRACK_USAGE: @assets_pref.ASP_TRACK_USAGE, primaryKey: @assets_pref.primaryKey }
    assert_redirected_to assets_pref_path(assigns(:assets_pref))
  end

  test "should destroy assets_pref" do
    assert_difference('AssetsPref.count', -1) do
      delete :destroy, id: @assets_pref
    end

    assert_redirected_to assets_prefs_path
  end
end

require 'test_helper'

class FPreferencesControllerTest < ActionController::TestCase
  setup do
    @f_preference = f_preferences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_preferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_preference" do
    assert_difference('FPreference.count') do
      post :create, f_preference: { prSQLConvFlag: @f_preference.prSQLConvFlag, primaryKey: @f_preference.primaryKey }
    end

    assert_redirected_to f_preference_path(assigns(:f_preference))
  end

  test "should show f_preference" do
    get :show, id: @f_preference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_preference
    assert_response :success
  end

  test "should update f_preference" do
    patch :update, id: @f_preference, f_preference: { prSQLConvFlag: @f_preference.prSQLConvFlag, primaryKey: @f_preference.primaryKey }
    assert_redirected_to f_preference_path(assigns(:f_preference))
  end

  test "should destroy f_preference" do
    assert_difference('FPreference.count', -1) do
      delete :destroy, id: @f_preference
    end

    assert_redirected_to f_preferences_path
  end
end

require 'test_helper'

class PicturesControllerTest < ActionController::TestCase
  setup do
    @picture = pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picture" do
    assert_difference('Picture.count') do
      post :create, picture: { PICTURE_ADDED_BY: @picture.PICTURE_ADDED_BY, PICTURE_ADDED_WHEN: @picture.PICTURE_ADDED_WHEN, PICTURE_EDITED_BY: @picture.PICTURE_EDITED_BY, PICTURE_EDITED_WHEN: @picture.PICTURE_EDITED_WHEN, PICTURE_NUM: @picture.PICTURE_NUM, PICTURE_PHOTO: @picture.PICTURE_PHOTO, PICTURE_TEXT: @picture.PICTURE_TEXT, primaryKey: @picture.primaryKey }
    end

    assert_redirected_to picture_path(assigns(:picture))
  end

  test "should show picture" do
    get :show, id: @picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @picture
    assert_response :success
  end

  test "should update picture" do
    patch :update, id: @picture, picture: { PICTURE_ADDED_BY: @picture.PICTURE_ADDED_BY, PICTURE_ADDED_WHEN: @picture.PICTURE_ADDED_WHEN, PICTURE_EDITED_BY: @picture.PICTURE_EDITED_BY, PICTURE_EDITED_WHEN: @picture.PICTURE_EDITED_WHEN, PICTURE_NUM: @picture.PICTURE_NUM, PICTURE_PHOTO: @picture.PICTURE_PHOTO, PICTURE_TEXT: @picture.PICTURE_TEXT, primaryKey: @picture.primaryKey }
    assert_redirected_to picture_path(assigns(:picture))
  end

  test "should destroy picture" do
    assert_difference('Picture.count', -1) do
      delete :destroy, id: @picture
    end

    assert_redirected_to pictures_path
  end
end

require 'test_helper'

class AssetsFilesControllerTest < ActionController::TestCase
  setup do
    @assets_file = assets_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assets_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assets_file" do
    assert_difference('AssetsFile.count') do
      post :create, assets_file: { ASF_ADDED_BY: @assets_file.ASF_ADDED_BY, ASF_AUTHOR_NAME: @assets_file.ASF_AUTHOR_NAME, ASF_AUTHOR_PHONE: @assets_file.ASF_AUTHOR_PHONE, ASF_COPYRIGHT: @assets_file.ASF_COPYRIGHT, ASF_DATE_ACQUIRED: @assets_file.ASF_DATE_ACQUIRED, ASF_DATE_ADDED: @assets_file.ASF_DATE_ADDED, ASF_DESC: @assets_file.ASF_DESC, ASF_EDITED_BY: @assets_file.ASF_EDITED_BY, ASF_EDITED_WHEN: @assets_file.ASF_EDITED_WHEN, ASF_FIELD1: @assets_file.ASF_FIELD1, ASF_FIELD1_LABEL: @assets_file.ASF_FIELD1_LABEL, ASF_FIELD2: @assets_file.ASF_FIELD2, ASF_FIELD2_LABEL: @assets_file.ASF_FIELD2_LABEL, ASF_FIELD3: @assets_file.ASF_FIELD3, ASF_FIELD3_LABEL: @assets_file.ASF_FIELD3_LABEL, ASF_FIELD4: @assets_file.ASF_FIELD4, ASF_FIELD4_LABEL: @assets_file.ASF_FIELD4_LABEL, ASF_FIELD5: @assets_file.ASF_FIELD5, ASF_FIELD5_LABEL: @assets_file.ASF_FIELD5_LABEL, ASF_FILE_KIND: @assets_file.ASF_FILE_KIND, ASF_FILE_NAME: @assets_file.ASF_FILE_NAME, ASF_JOB_NUM: @assets_file.ASF_JOB_NUM, ASF_KEYWORD1: @assets_file.ASF_KEYWORD1, ASF_KEYWORD2: @assets_file.ASF_KEYWORD2, ASF_KEYWORD3: @assets_file.ASF_KEYWORD3, ASF_LAST_MOD_BY: @assets_file.ASF_LAST_MOD_BY, ASF_LAST_MOD_DATE: @assets_file.ASF_LAST_MOD_DATE, ASF_LAST_MOD_DESC: @assets_file.ASF_LAST_MOD_DESC, ASF_OWNERSHIP: @assets_file.ASF_OWNERSHIP, ASF_PROTECTED: @assets_file.ASF_PROTECTED, ASF_SOURCE: @assets_file.ASF_SOURCE, ASF_USAGE_RESTRICTION: @assets_file.ASF_USAGE_RESTRICTION, primaryKey: @assets_file.primaryKey }
    end

    assert_redirected_to assets_file_path(assigns(:assets_file))
  end

  test "should show assets_file" do
    get :show, id: @assets_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assets_file
    assert_response :success
  end

  test "should update assets_file" do
    patch :update, id: @assets_file, assets_file: { ASF_ADDED_BY: @assets_file.ASF_ADDED_BY, ASF_AUTHOR_NAME: @assets_file.ASF_AUTHOR_NAME, ASF_AUTHOR_PHONE: @assets_file.ASF_AUTHOR_PHONE, ASF_COPYRIGHT: @assets_file.ASF_COPYRIGHT, ASF_DATE_ACQUIRED: @assets_file.ASF_DATE_ACQUIRED, ASF_DATE_ADDED: @assets_file.ASF_DATE_ADDED, ASF_DESC: @assets_file.ASF_DESC, ASF_EDITED_BY: @assets_file.ASF_EDITED_BY, ASF_EDITED_WHEN: @assets_file.ASF_EDITED_WHEN, ASF_FIELD1: @assets_file.ASF_FIELD1, ASF_FIELD1_LABEL: @assets_file.ASF_FIELD1_LABEL, ASF_FIELD2: @assets_file.ASF_FIELD2, ASF_FIELD2_LABEL: @assets_file.ASF_FIELD2_LABEL, ASF_FIELD3: @assets_file.ASF_FIELD3, ASF_FIELD3_LABEL: @assets_file.ASF_FIELD3_LABEL, ASF_FIELD4: @assets_file.ASF_FIELD4, ASF_FIELD4_LABEL: @assets_file.ASF_FIELD4_LABEL, ASF_FIELD5: @assets_file.ASF_FIELD5, ASF_FIELD5_LABEL: @assets_file.ASF_FIELD5_LABEL, ASF_FILE_KIND: @assets_file.ASF_FILE_KIND, ASF_FILE_NAME: @assets_file.ASF_FILE_NAME, ASF_JOB_NUM: @assets_file.ASF_JOB_NUM, ASF_KEYWORD1: @assets_file.ASF_KEYWORD1, ASF_KEYWORD2: @assets_file.ASF_KEYWORD2, ASF_KEYWORD3: @assets_file.ASF_KEYWORD3, ASF_LAST_MOD_BY: @assets_file.ASF_LAST_MOD_BY, ASF_LAST_MOD_DATE: @assets_file.ASF_LAST_MOD_DATE, ASF_LAST_MOD_DESC: @assets_file.ASF_LAST_MOD_DESC, ASF_OWNERSHIP: @assets_file.ASF_OWNERSHIP, ASF_PROTECTED: @assets_file.ASF_PROTECTED, ASF_SOURCE: @assets_file.ASF_SOURCE, ASF_USAGE_RESTRICTION: @assets_file.ASF_USAGE_RESTRICTION, primaryKey: @assets_file.primaryKey }
    assert_redirected_to assets_file_path(assigns(:assets_file))
  end

  test "should destroy assets_file" do
    assert_difference('AssetsFile.count', -1) do
      delete :destroy, id: @assets_file
    end

    assert_redirected_to assets_files_path
  end
end

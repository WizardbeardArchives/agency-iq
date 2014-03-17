require 'test_helper'

class JesControllerTest < ActionController::TestCase
  setup do
    @je = jes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create je" do
    assert_difference('Je.count') do
      post :create, je: { JE_AC_NUM: @je.JE_AC_NUM, JE_ADDED_BY: @je.JE_ADDED_BY, JE_ADDED_WHEN: @je.JE_ADDED_WHEN, JE_AUTO_ACC: @je.JE_AUTO_ACC, JE_AUTO_REV: @je.JE_AUTO_REV, JE_CLIENT_NUM: @je.JE_CLIENT_NUM, JE_CREDIT: @je.JE_CREDIT, JE_DATE: @je.JE_DATE, JE_DEBIT: @je.JE_DEBIT, JE_DESC: @je.JE_DESC, JE_EDITED_BY: @je.JE_EDITED_BY, JE_EDITED_WHEN: @je.JE_EDITED_WHEN, JE_EXPORTED: @je.JE_EXPORTED, JE_GL_REC: @je.JE_GL_REC, JE_JOB_NUM: @je.JE_JOB_NUM, JE_KIND: @je.JE_KIND, JE_PAY_BATCH: @je.JE_PAY_BATCH, JE_PERIOD: @je.JE_PERIOD, JE_POSTED: @je.JE_POSTED, JE_POSTED_BY: @je.JE_POSTED_BY, JE_POSTED_WHEN: @je.JE_POSTED_WHEN, JE_RECONCILE: @je.JE_RECONCILE, JE_REF: @je.JE_REF, JE_SOURCE: @je.JE_SOURCE, JE_TEMP_REC: @je.JE_TEMP_REC, JE_VENDOR_NUM: @je.JE_VENDOR_NUM, primaryKey: @je.primaryKey }
    end

    assert_redirected_to je_path(assigns(:je))
  end

  test "should show je" do
    get :show, id: @je
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @je
    assert_response :success
  end

  test "should update je" do
    patch :update, id: @je, je: { JE_AC_NUM: @je.JE_AC_NUM, JE_ADDED_BY: @je.JE_ADDED_BY, JE_ADDED_WHEN: @je.JE_ADDED_WHEN, JE_AUTO_ACC: @je.JE_AUTO_ACC, JE_AUTO_REV: @je.JE_AUTO_REV, JE_CLIENT_NUM: @je.JE_CLIENT_NUM, JE_CREDIT: @je.JE_CREDIT, JE_DATE: @je.JE_DATE, JE_DEBIT: @je.JE_DEBIT, JE_DESC: @je.JE_DESC, JE_EDITED_BY: @je.JE_EDITED_BY, JE_EDITED_WHEN: @je.JE_EDITED_WHEN, JE_EXPORTED: @je.JE_EXPORTED, JE_GL_REC: @je.JE_GL_REC, JE_JOB_NUM: @je.JE_JOB_NUM, JE_KIND: @je.JE_KIND, JE_PAY_BATCH: @je.JE_PAY_BATCH, JE_PERIOD: @je.JE_PERIOD, JE_POSTED: @je.JE_POSTED, JE_POSTED_BY: @je.JE_POSTED_BY, JE_POSTED_WHEN: @je.JE_POSTED_WHEN, JE_RECONCILE: @je.JE_RECONCILE, JE_REF: @je.JE_REF, JE_SOURCE: @je.JE_SOURCE, JE_TEMP_REC: @je.JE_TEMP_REC, JE_VENDOR_NUM: @je.JE_VENDOR_NUM, primaryKey: @je.primaryKey }
    assert_redirected_to je_path(assigns(:je))
  end

  test "should destroy je" do
    assert_difference('Je.count', -1) do
      delete :destroy, id: @je
    end

    assert_redirected_to jes_path
  end
end

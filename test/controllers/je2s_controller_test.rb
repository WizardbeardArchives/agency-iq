require 'test_helper'

class Je2sControllerTest < ActionController::TestCase
  setup do
    @je2 = je2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:je2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create je2" do
    assert_difference('Je2.count') do
      post :create, je2: { JE2_AC_NUM: @je2.JE2_AC_NUM, JE2_ADDED_BY: @je2.JE2_ADDED_BY, JE2_ADDED_WHEN: @je2.JE2_ADDED_WHEN, JE2_AUTO_ACC: @je2.JE2_AUTO_ACC, JE2_AUTO_REV: @je2.JE2_AUTO_REV, JE2_CLIENT_NUM: @je2.JE2_CLIENT_NUM, JE2_CREDIT: @je2.JE2_CREDIT, JE2_DATE: @je2.JE2_DATE, JE2_DEBIT: @je2.JE2_DEBIT, JE2_DESC: @je2.JE2_DESC, JE2_EDITED_BY: @je2.JE2_EDITED_BY, JE2_EDITED_WHEN: @je2.JE2_EDITED_WHEN, JE2_EXPORTED: @je2.JE2_EXPORTED, JE2_FISCAL_YEAR: @je2.JE2_FISCAL_YEAR, JE2_GL_REC: @je2.JE2_GL_REC, JE2_JOB_NUM: @je2.JE2_JOB_NUM, JE2_KIND: @je2.JE2_KIND, JE2_PAY_BATCH: @je2.JE2_PAY_BATCH, JE2_PERIOD: @je2.JE2_PERIOD, JE2_PERIOD_FIRST_DAY: @je2.JE2_PERIOD_FIRST_DAY, JE2_POSTED: @je2.JE2_POSTED, JE2_POSTED_BY: @je2.JE2_POSTED_BY, JE2_POSTED_WHEN: @je2.JE2_POSTED_WHEN, JE2_RECONCILE: @je2.JE2_RECONCILE, JE2_REF: @je2.JE2_REF, JE2_SOURCE: @je2.JE2_SOURCE, JE2_TEMP_REC: @je2.JE2_TEMP_REC, JE2_VENDOR_NUM: @je2.JE2_VENDOR_NUM, primaryKey: @je2.primaryKey }
    end

    assert_redirected_to je2_path(assigns(:je2))
  end

  test "should show je2" do
    get :show, id: @je2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @je2
    assert_response :success
  end

  test "should update je2" do
    patch :update, id: @je2, je2: { JE2_AC_NUM: @je2.JE2_AC_NUM, JE2_ADDED_BY: @je2.JE2_ADDED_BY, JE2_ADDED_WHEN: @je2.JE2_ADDED_WHEN, JE2_AUTO_ACC: @je2.JE2_AUTO_ACC, JE2_AUTO_REV: @je2.JE2_AUTO_REV, JE2_CLIENT_NUM: @je2.JE2_CLIENT_NUM, JE2_CREDIT: @je2.JE2_CREDIT, JE2_DATE: @je2.JE2_DATE, JE2_DEBIT: @je2.JE2_DEBIT, JE2_DESC: @je2.JE2_DESC, JE2_EDITED_BY: @je2.JE2_EDITED_BY, JE2_EDITED_WHEN: @je2.JE2_EDITED_WHEN, JE2_EXPORTED: @je2.JE2_EXPORTED, JE2_FISCAL_YEAR: @je2.JE2_FISCAL_YEAR, JE2_GL_REC: @je2.JE2_GL_REC, JE2_JOB_NUM: @je2.JE2_JOB_NUM, JE2_KIND: @je2.JE2_KIND, JE2_PAY_BATCH: @je2.JE2_PAY_BATCH, JE2_PERIOD: @je2.JE2_PERIOD, JE2_PERIOD_FIRST_DAY: @je2.JE2_PERIOD_FIRST_DAY, JE2_POSTED: @je2.JE2_POSTED, JE2_POSTED_BY: @je2.JE2_POSTED_BY, JE2_POSTED_WHEN: @je2.JE2_POSTED_WHEN, JE2_RECONCILE: @je2.JE2_RECONCILE, JE2_REF: @je2.JE2_REF, JE2_SOURCE: @je2.JE2_SOURCE, JE2_TEMP_REC: @je2.JE2_TEMP_REC, JE2_VENDOR_NUM: @je2.JE2_VENDOR_NUM, primaryKey: @je2.primaryKey }
    assert_redirected_to je2_path(assigns(:je2))
  end

  test "should destroy je2" do
    assert_difference('Je2.count', -1) do
      delete :destroy, id: @je2
    end

    assert_redirected_to je2s_path
  end
end

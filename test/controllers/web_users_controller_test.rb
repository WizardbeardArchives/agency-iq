require 'test_helper'

class WebUsersControllerTest < ActionController::TestCase
  setup do
    @web_user = web_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_user" do
    assert_difference('WebUser.count') do
      post :create, web_user: { WU_ACCESS_EXP: @web_user.WU_ACCESS_EXP, WU_ADDED_BY: @web_user.WU_ADDED_BY, WU_ADDED_WHEN: @web_user.WU_ADDED_WHEN, WU_ADMIN: @web_user.WU_ADMIN, WU_A_ADD_JOBS: @web_user.WU_A_ADD_JOBS, WU_A_AP: @web_user.WU_A_AP, WU_A_AR: @web_user.WU_A_AR, WU_A_BILLINGS: @web_user.WU_A_BILLINGS, WU_A_BILL_PRVW: @web_user.WU_A_BILL_PRVW, WU_A_CASH_FLASH: @web_user.WU_A_CASH_FLASH, WU_A_CHG_ORD: @web_user.WU_A_CHG_ORD, WU_A_CLIENTS: @web_user.WU_A_CLIENTS, WU_A_CLIENT_DIARY: @web_user.WU_A_CLIENT_DIARY, WU_A_CLIENT_STATUS: @web_user.WU_A_CLIENT_STATUS, WU_A_COSTS: @web_user.WU_A_COSTS, WU_A_C_NUM: @web_user.WU_A_C_NUM, WU_A_EST: @web_user.WU_A_EST, WU_A_EST_REVS: @web_user.WU_A_EST_REVS, WU_A_EXP: @web_user.WU_A_EXP, WU_A_INT_CHARGES: @web_user.WU_A_INT_CHARGES, WU_A_JOB_DIARY: @web_user.WU_A_JOB_DIARY, WU_A_JOB_PO: @web_user.WU_A_JOB_PO, WU_A_JOB_PROG: @web_user.WU_A_JOB_PROG, WU_A_JOB_SPECS: @web_user.WU_A_JOB_SPECS, WU_A_JOB_STATUS: @web_user.WU_A_JOB_STATUS, WU_A_JOB_TICKETS: @web_user.WU_A_JOB_TICKETS, WU_A_PO: @web_user.WU_A_PO, WU_A_PO_OK: @web_user.WU_A_PO_OK, WU_A_PREBILL: @web_user.WU_A_PREBILL, WU_A_PROPOSALS: @web_user.WU_A_PROPOSALS, WU_A_SCHED: @web_user.WU_A_SCHED, WU_A_SNAPSHOT: @web_user.WU_A_SNAPSHOT, WU_A_SNAPS_PROD: @web_user.WU_A_SNAPS_PROD, WU_A_SNAPS_WIP: @web_user.WU_A_SNAPS_WIP, WU_A_STMT: @web_user.WU_A_STMT, WU_A_TASK_PLAN: @web_user.WU_A_TASK_PLAN, WU_A_TIME: @web_user.WU_A_TIME, WU_A_TIME_SHEETS: @web_user.WU_A_TIME_SHEETS, WU_A_TRAFFIC: @web_user.WU_A_TRAFFIC, WU_A_UNBILLED: @web_user.WU_A_UNBILLED, WU_A_VENDORS: @web_user.WU_A_VENDORS, WU_A_V_NUM: @web_user.WU_A_V_NUM, WU_A_WEEKLY_TRAF: @web_user.WU_A_WEEKLY_TRAF, WU_A_WIP: @web_user.WU_A_WIP, WU_A_WORK_TO_DO: @web_user.WU_A_WORK_TO_DO, WU_BAD_LOGINS: @web_user.WU_BAD_LOGINS, WU_COOKIE: @web_user.WU_COOKIE, WU_DEPT: @web_user.WU_DEPT, WU_EDITED_BY: @web_user.WU_EDITED_BY, WU_EDITED_WHEN: @web_user.WU_EDITED_WHEN, WU_EMAIL: @web_user.WU_EMAIL, WU_EXPIRES: @web_user.WU_EXPIRES, WU_HOME_PAGE: @web_user.WU_HOME_PAGE, WU_ID: @web_user.WU_ID, WU_IP: @web_user.WU_IP, WU_KIND: @web_user.WU_KIND, WU_LAST_ACCESS: @web_user.WU_LAST_ACCESS, WU_LAST_DATE: @web_user.WU_LAST_DATE, WU_LAST_JOB: @web_user.WU_LAST_JOB, WU_LAST_PO: @web_user.WU_LAST_PO, WU_NAME: @web_user.WU_NAME, WU_ORG: @web_user.WU_ORG, WU_P: @web_user.WU_P, WU_PAGER: @web_user.WU_PAGER, WU_PHONE: @web_user.WU_PHONE, WU_PHONE_CELL: @web_user.WU_PHONE_CELL, WU_P_EXPIRES: @web_user.WU_P_EXPIRES, WU_STAFF: @web_user.WU_STAFF, WU_SUSPEND: @web_user.WU_SUSPEND, WU_WEB_ADMIN: @web_user.WU_WEB_ADMIN, WU_WELCOME_MSG: @web_user.WU_WELCOME_MSG, WU_WORK: @web_user.WU_WORK, primaryKey: @web_user.primaryKey }
    end

    assert_redirected_to web_user_path(assigns(:web_user))
  end

  test "should show web_user" do
    get :show, id: @web_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_user
    assert_response :success
  end

  test "should update web_user" do
    patch :update, id: @web_user, web_user: { WU_ACCESS_EXP: @web_user.WU_ACCESS_EXP, WU_ADDED_BY: @web_user.WU_ADDED_BY, WU_ADDED_WHEN: @web_user.WU_ADDED_WHEN, WU_ADMIN: @web_user.WU_ADMIN, WU_A_ADD_JOBS: @web_user.WU_A_ADD_JOBS, WU_A_AP: @web_user.WU_A_AP, WU_A_AR: @web_user.WU_A_AR, WU_A_BILLINGS: @web_user.WU_A_BILLINGS, WU_A_BILL_PRVW: @web_user.WU_A_BILL_PRVW, WU_A_CASH_FLASH: @web_user.WU_A_CASH_FLASH, WU_A_CHG_ORD: @web_user.WU_A_CHG_ORD, WU_A_CLIENTS: @web_user.WU_A_CLIENTS, WU_A_CLIENT_DIARY: @web_user.WU_A_CLIENT_DIARY, WU_A_CLIENT_STATUS: @web_user.WU_A_CLIENT_STATUS, WU_A_COSTS: @web_user.WU_A_COSTS, WU_A_C_NUM: @web_user.WU_A_C_NUM, WU_A_EST: @web_user.WU_A_EST, WU_A_EST_REVS: @web_user.WU_A_EST_REVS, WU_A_EXP: @web_user.WU_A_EXP, WU_A_INT_CHARGES: @web_user.WU_A_INT_CHARGES, WU_A_JOB_DIARY: @web_user.WU_A_JOB_DIARY, WU_A_JOB_PO: @web_user.WU_A_JOB_PO, WU_A_JOB_PROG: @web_user.WU_A_JOB_PROG, WU_A_JOB_SPECS: @web_user.WU_A_JOB_SPECS, WU_A_JOB_STATUS: @web_user.WU_A_JOB_STATUS, WU_A_JOB_TICKETS: @web_user.WU_A_JOB_TICKETS, WU_A_PO: @web_user.WU_A_PO, WU_A_PO_OK: @web_user.WU_A_PO_OK, WU_A_PREBILL: @web_user.WU_A_PREBILL, WU_A_PROPOSALS: @web_user.WU_A_PROPOSALS, WU_A_SCHED: @web_user.WU_A_SCHED, WU_A_SNAPSHOT: @web_user.WU_A_SNAPSHOT, WU_A_SNAPS_PROD: @web_user.WU_A_SNAPS_PROD, WU_A_SNAPS_WIP: @web_user.WU_A_SNAPS_WIP, WU_A_STMT: @web_user.WU_A_STMT, WU_A_TASK_PLAN: @web_user.WU_A_TASK_PLAN, WU_A_TIME: @web_user.WU_A_TIME, WU_A_TIME_SHEETS: @web_user.WU_A_TIME_SHEETS, WU_A_TRAFFIC: @web_user.WU_A_TRAFFIC, WU_A_UNBILLED: @web_user.WU_A_UNBILLED, WU_A_VENDORS: @web_user.WU_A_VENDORS, WU_A_V_NUM: @web_user.WU_A_V_NUM, WU_A_WEEKLY_TRAF: @web_user.WU_A_WEEKLY_TRAF, WU_A_WIP: @web_user.WU_A_WIP, WU_A_WORK_TO_DO: @web_user.WU_A_WORK_TO_DO, WU_BAD_LOGINS: @web_user.WU_BAD_LOGINS, WU_COOKIE: @web_user.WU_COOKIE, WU_DEPT: @web_user.WU_DEPT, WU_EDITED_BY: @web_user.WU_EDITED_BY, WU_EDITED_WHEN: @web_user.WU_EDITED_WHEN, WU_EMAIL: @web_user.WU_EMAIL, WU_EXPIRES: @web_user.WU_EXPIRES, WU_HOME_PAGE: @web_user.WU_HOME_PAGE, WU_ID: @web_user.WU_ID, WU_IP: @web_user.WU_IP, WU_KIND: @web_user.WU_KIND, WU_LAST_ACCESS: @web_user.WU_LAST_ACCESS, WU_LAST_DATE: @web_user.WU_LAST_DATE, WU_LAST_JOB: @web_user.WU_LAST_JOB, WU_LAST_PO: @web_user.WU_LAST_PO, WU_NAME: @web_user.WU_NAME, WU_ORG: @web_user.WU_ORG, WU_P: @web_user.WU_P, WU_PAGER: @web_user.WU_PAGER, WU_PHONE: @web_user.WU_PHONE, WU_PHONE_CELL: @web_user.WU_PHONE_CELL, WU_P_EXPIRES: @web_user.WU_P_EXPIRES, WU_STAFF: @web_user.WU_STAFF, WU_SUSPEND: @web_user.WU_SUSPEND, WU_WEB_ADMIN: @web_user.WU_WEB_ADMIN, WU_WELCOME_MSG: @web_user.WU_WELCOME_MSG, WU_WORK: @web_user.WU_WORK, primaryKey: @web_user.primaryKey }
    assert_redirected_to web_user_path(assigns(:web_user))
  end

  test "should destroy web_user" do
    assert_difference('WebUser.count', -1) do
      delete :destroy, id: @web_user
    end

    assert_redirected_to web_users_path
  end
end

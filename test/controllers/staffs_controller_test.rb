require 'test_helper'

class StaffsControllerTest < ActionController::TestCase
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post :create, staff: { S_10: @staff.S_10, S_11: @staff.S_11, S_12: @staff.S_12, S_1: @staff.S_1, S_2: @staff.S_2, S_3: @staff.S_3, S_4: @staff.S_4, S_5: @staff.S_5, S_6: @staff.S_6, S_7: @staff.S_7, S_8: @staff.S_8, S_9: @staff.S_9, S_ACTIVE: @staff.S_ACTIVE, S_ACT_FRIDAY: @staff.S_ACT_FRIDAY, S_ACT_MONDAY: @staff.S_ACT_MONDAY, S_ACT_SATURDAY: @staff.S_ACT_SATURDAY, S_ACT_SUNDAY: @staff.S_ACT_SUNDAY, S_ACT_THURSDAY: @staff.S_ACT_THURSDAY, S_ACT_TUESDAY: @staff.S_ACT_TUESDAY, S_ACT_WEDNESDAY: @staff.S_ACT_WEDNESDAY, S_ADDED_BY: @staff.S_ADDED_BY, S_ADDED_WHEN: @staff.S_ADDED_WHEN, S_ADDRESS1: @staff.S_ADDRESS1, S_ADDRESS2: @staff.S_ADDRESS2, S_ADDRESS3: @staff.S_ADDRESS3, S_APPR_EXEMPT: @staff.S_APPR_EXEMPT, S_APP_VERSION: @staff.S_APP_VERSION, S_B10: @staff.S_B10, S_B11: @staff.S_B11, S_B12: @staff.S_B12, S_B1: @staff.S_B1, S_B2: @staff.S_B2, S_B3: @staff.S_B3, S_B4: @staff.S_B4, S_B5: @staff.S_B5, S_B6: @staff.S_B6, S_B7: @staff.S_B7, S_B8: @staff.S_B8, S_B9: @staff.S_B9, S_BACKUP_PERSON: @staff.S_BACKUP_PERSON, S_BILL_RATE: @staff.S_BILL_RATE, S_CAL1_KEY: @staff.S_CAL1_KEY, S_CAL2_KEY: @staff.S_CAL2_KEY, S_CAL3_KEY: @staff.S_CAL3_KEY, S_CAL4_KEY: @staff.S_CAL4_KEY, S_CAL5_KEY: @staff.S_CAL5_KEY, S_CLIENT_NUM: @staff.S_CLIENT_NUM, S_COST_RATE: @staff.S_COST_RATE, S_CSIDE_APPR_ART: @staff.S_CSIDE_APPR_ART, S_CSIDE_APPR_CHANGES: @staff.S_CSIDE_APPR_CHANGES, S_CSIDE_APPR_CREBRIEF: @staff.S_CSIDE_APPR_CREBRIEF, S_CSIDE_APPR_ESTS: @staff.S_CSIDE_APPR_ESTS, S_CSIDE_APPR_SCHEDS: @staff.S_CSIDE_APPR_SCHEDS, S_CSIDE_CLIENTS: @staff.S_CSIDE_CLIENTS, S_CSIDE_JOBS: @staff.S_CSIDE_JOBS, S_CSIDE_JOB_REQUESTS: @staff.S_CSIDE_JOB_REQUESTS, S_CSIDE_PROPOSALS: @staff.S_CSIDE_PROPOSALS, S_CSIDE_RATE_JOBS: @staff.S_CSIDE_RATE_JOBS, S_CSIDE_STATUS_REPORT: @staff.S_CSIDE_STATUS_REPORT, S_CSIDE_TRAFFIC_REPORT: @staff.S_CSIDE_TRAFFIC_REPORT, S_CSIDE_TYPE_CAT: @staff.S_CSIDE_TYPE_CAT, S_DATE_HIRED: @staff.S_DATE_HIRED, S_DATE_TERM: @staff.S_DATE_TERM, S_DEPT: @staff.S_DEPT, S_EDITED_BY: @staff.S_EDITED_BY, S_EDITED_WHEN: @staff.S_EDITED_WHEN, S_EMAIL: @staff.S_EMAIL, S_EMAIL_OVERDUES: @staff.S_EMAIL_OVERDUES, S_EMAIL_SIG: @staff.S_EMAIL_SIG, S_FACE: @staff.S_FACE, S_FAX: @staff.S_FAX, S_FREELANCE: @staff.S_FREELANCE, S_GETS_HOMEBASE_EMAILS: @staff.S_GETS_HOMEBASE_EMAILS, S_HOMEBASE_EMAIL: @staff.S_HOMEBASE_EMAIL, S_HOME_PHONE: @staff.S_HOME_PHONE, S_HOURS: @staff.S_HOURS, S_HOURS_ACT: @staff.S_HOURS_ACT, S_HOURS_WEEK: @staff.S_HOURS_WEEK, S_INITIALS: @staff.S_INITIALS, S_JOBR: @staff.S_JOBR, S_LSTYR_10: @staff.S_LSTYR_10, S_LSTYR_11: @staff.S_LSTYR_11, S_LSTYR_12: @staff.S_LSTYR_12, S_LSTYR_1: @staff.S_LSTYR_1, S_LSTYR_2: @staff.S_LSTYR_2, S_LSTYR_3: @staff.S_LSTYR_3, S_LSTYR_4: @staff.S_LSTYR_4, S_LSTYR_5: @staff.S_LSTYR_5, S_LSTYR_6: @staff.S_LSTYR_6, S_LSTYR_7: @staff.S_LSTYR_7, S_LSTYR_8: @staff.S_LSTYR_8, S_LSTYR_9: @staff.S_LSTYR_9, S_MTD: @staff.S_MTD, S_NAME: @staff.S_NAME, S_NOTES: @staff.S_NOTES, S_OA: @staff.S_OA, S_OFFICE_PHONE: @staff.S_OFFICE_PHONE, S_OT_BILL_RATE: @staff.S_OT_BILL_RATE, S_OT_COST_RATE: @staff.S_OT_COST_RATE, S_PC_NUM: @staff.S_PC_NUM, S_PERIOD: @staff.S_PERIOD, S_PLAN_FRIDAY: @staff.S_PLAN_FRIDAY, S_PLAN_MONDAY: @staff.S_PLAN_MONDAY, S_PLAN_SATURDAY: @staff.S_PLAN_SATURDAY, S_PLAN_SUNDAY: @staff.S_PLAN_SUNDAY, S_PLAN_THURSDAY: @staff.S_PLAN_THURSDAY, S_PLAN_TUESDAY: @staff.S_PLAN_TUESDAY, S_PLAN_WEDNESDAY: @staff.S_PLAN_WEDNESDAY, S_PLAN_WEEK: @staff.S_PLAN_WEEK, S_REQ_PLAN: @staff.S_REQ_PLAN, S_REQ_TIME: @staff.S_REQ_TIME, S_SCHEDULABLE: @staff.S_SCHEDULABLE, S_SEND_CHIRPS: @staff.S_SEND_CHIRPS, S_SEND_CHIRPS_TO: @staff.S_SEND_CHIRPS_TO, S_SMTP_AUTH_ID: @staff.S_SMTP_AUTH_ID, S_SMTP_AUTH_PW: @staff.S_SMTP_AUTH_PW, S_SSN: @staff.S_SSN, S_SUPERVISOR: @staff.S_SUPERVISOR, S_SW_UPDATE_NOW: @staff.S_SW_UPDATE_NOW, S_TASK: @staff.S_TASK, S_TEAM: @staff.S_TEAM, S_TIME_COP: @staff.S_TIME_COP, S_TIME_POINT_OPT_IN: @staff.S_TIME_POINT_OPT_IN, S_TITLE: @staff.S_TITLE, S_TYPE: @staff.S_TYPE, S_VENDOR: @staff.S_VENDOR, S_WEB_ACCESS10: @staff.S_WEB_ACCESS10, S_WEB_ACCESS11: @staff.S_WEB_ACCESS11, S_WEB_ACCESS12: @staff.S_WEB_ACCESS12, S_WEB_ACCESS1: @staff.S_WEB_ACCESS1, S_WEB_ACCESS2: @staff.S_WEB_ACCESS2, S_WEB_ACCESS3: @staff.S_WEB_ACCESS3, S_WEB_ACCESS4: @staff.S_WEB_ACCESS4, S_WEB_ACCESS5: @staff.S_WEB_ACCESS5, S_WEB_ACCESS6: @staff.S_WEB_ACCESS6, S_WEB_ACCESS7: @staff.S_WEB_ACCESS7, S_WEB_ACCESS8: @staff.S_WEB_ACCESS8, S_WEB_ACCESS9: @staff.S_WEB_ACCESS9, S_WEB_ACCESS: @staff.S_WEB_ACCESS, S_WEB_ACCESS_EXPIRES: @staff.S_WEB_ACCESS_EXPIRES, S_WEB_ACCESS_SUSPENDED: @staff.S_WEB_ACCESS_SUSPENDED, S_WINNERS_OPT_IN: @staff.S_WINNERS_OPT_IN, S_YTD: @staff.S_YTD, primaryKey: @staff.primaryKey }
    end

    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should show staff" do
    get :show, id: @staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff
    assert_response :success
  end

  test "should update staff" do
    patch :update, id: @staff, staff: { S_10: @staff.S_10, S_11: @staff.S_11, S_12: @staff.S_12, S_1: @staff.S_1, S_2: @staff.S_2, S_3: @staff.S_3, S_4: @staff.S_4, S_5: @staff.S_5, S_6: @staff.S_6, S_7: @staff.S_7, S_8: @staff.S_8, S_9: @staff.S_9, S_ACTIVE: @staff.S_ACTIVE, S_ACT_FRIDAY: @staff.S_ACT_FRIDAY, S_ACT_MONDAY: @staff.S_ACT_MONDAY, S_ACT_SATURDAY: @staff.S_ACT_SATURDAY, S_ACT_SUNDAY: @staff.S_ACT_SUNDAY, S_ACT_THURSDAY: @staff.S_ACT_THURSDAY, S_ACT_TUESDAY: @staff.S_ACT_TUESDAY, S_ACT_WEDNESDAY: @staff.S_ACT_WEDNESDAY, S_ADDED_BY: @staff.S_ADDED_BY, S_ADDED_WHEN: @staff.S_ADDED_WHEN, S_ADDRESS1: @staff.S_ADDRESS1, S_ADDRESS2: @staff.S_ADDRESS2, S_ADDRESS3: @staff.S_ADDRESS3, S_APPR_EXEMPT: @staff.S_APPR_EXEMPT, S_APP_VERSION: @staff.S_APP_VERSION, S_B10: @staff.S_B10, S_B11: @staff.S_B11, S_B12: @staff.S_B12, S_B1: @staff.S_B1, S_B2: @staff.S_B2, S_B3: @staff.S_B3, S_B4: @staff.S_B4, S_B5: @staff.S_B5, S_B6: @staff.S_B6, S_B7: @staff.S_B7, S_B8: @staff.S_B8, S_B9: @staff.S_B9, S_BACKUP_PERSON: @staff.S_BACKUP_PERSON, S_BILL_RATE: @staff.S_BILL_RATE, S_CAL1_KEY: @staff.S_CAL1_KEY, S_CAL2_KEY: @staff.S_CAL2_KEY, S_CAL3_KEY: @staff.S_CAL3_KEY, S_CAL4_KEY: @staff.S_CAL4_KEY, S_CAL5_KEY: @staff.S_CAL5_KEY, S_CLIENT_NUM: @staff.S_CLIENT_NUM, S_COST_RATE: @staff.S_COST_RATE, S_CSIDE_APPR_ART: @staff.S_CSIDE_APPR_ART, S_CSIDE_APPR_CHANGES: @staff.S_CSIDE_APPR_CHANGES, S_CSIDE_APPR_CREBRIEF: @staff.S_CSIDE_APPR_CREBRIEF, S_CSIDE_APPR_ESTS: @staff.S_CSIDE_APPR_ESTS, S_CSIDE_APPR_SCHEDS: @staff.S_CSIDE_APPR_SCHEDS, S_CSIDE_CLIENTS: @staff.S_CSIDE_CLIENTS, S_CSIDE_JOBS: @staff.S_CSIDE_JOBS, S_CSIDE_JOB_REQUESTS: @staff.S_CSIDE_JOB_REQUESTS, S_CSIDE_PROPOSALS: @staff.S_CSIDE_PROPOSALS, S_CSIDE_RATE_JOBS: @staff.S_CSIDE_RATE_JOBS, S_CSIDE_STATUS_REPORT: @staff.S_CSIDE_STATUS_REPORT, S_CSIDE_TRAFFIC_REPORT: @staff.S_CSIDE_TRAFFIC_REPORT, S_CSIDE_TYPE_CAT: @staff.S_CSIDE_TYPE_CAT, S_DATE_HIRED: @staff.S_DATE_HIRED, S_DATE_TERM: @staff.S_DATE_TERM, S_DEPT: @staff.S_DEPT, S_EDITED_BY: @staff.S_EDITED_BY, S_EDITED_WHEN: @staff.S_EDITED_WHEN, S_EMAIL: @staff.S_EMAIL, S_EMAIL_OVERDUES: @staff.S_EMAIL_OVERDUES, S_EMAIL_SIG: @staff.S_EMAIL_SIG, S_FACE: @staff.S_FACE, S_FAX: @staff.S_FAX, S_FREELANCE: @staff.S_FREELANCE, S_GETS_HOMEBASE_EMAILS: @staff.S_GETS_HOMEBASE_EMAILS, S_HOMEBASE_EMAIL: @staff.S_HOMEBASE_EMAIL, S_HOME_PHONE: @staff.S_HOME_PHONE, S_HOURS: @staff.S_HOURS, S_HOURS_ACT: @staff.S_HOURS_ACT, S_HOURS_WEEK: @staff.S_HOURS_WEEK, S_INITIALS: @staff.S_INITIALS, S_JOBR: @staff.S_JOBR, S_LSTYR_10: @staff.S_LSTYR_10, S_LSTYR_11: @staff.S_LSTYR_11, S_LSTYR_12: @staff.S_LSTYR_12, S_LSTYR_1: @staff.S_LSTYR_1, S_LSTYR_2: @staff.S_LSTYR_2, S_LSTYR_3: @staff.S_LSTYR_3, S_LSTYR_4: @staff.S_LSTYR_4, S_LSTYR_5: @staff.S_LSTYR_5, S_LSTYR_6: @staff.S_LSTYR_6, S_LSTYR_7: @staff.S_LSTYR_7, S_LSTYR_8: @staff.S_LSTYR_8, S_LSTYR_9: @staff.S_LSTYR_9, S_MTD: @staff.S_MTD, S_NAME: @staff.S_NAME, S_NOTES: @staff.S_NOTES, S_OA: @staff.S_OA, S_OFFICE_PHONE: @staff.S_OFFICE_PHONE, S_OT_BILL_RATE: @staff.S_OT_BILL_RATE, S_OT_COST_RATE: @staff.S_OT_COST_RATE, S_PC_NUM: @staff.S_PC_NUM, S_PERIOD: @staff.S_PERIOD, S_PLAN_FRIDAY: @staff.S_PLAN_FRIDAY, S_PLAN_MONDAY: @staff.S_PLAN_MONDAY, S_PLAN_SATURDAY: @staff.S_PLAN_SATURDAY, S_PLAN_SUNDAY: @staff.S_PLAN_SUNDAY, S_PLAN_THURSDAY: @staff.S_PLAN_THURSDAY, S_PLAN_TUESDAY: @staff.S_PLAN_TUESDAY, S_PLAN_WEDNESDAY: @staff.S_PLAN_WEDNESDAY, S_PLAN_WEEK: @staff.S_PLAN_WEEK, S_REQ_PLAN: @staff.S_REQ_PLAN, S_REQ_TIME: @staff.S_REQ_TIME, S_SCHEDULABLE: @staff.S_SCHEDULABLE, S_SEND_CHIRPS: @staff.S_SEND_CHIRPS, S_SEND_CHIRPS_TO: @staff.S_SEND_CHIRPS_TO, S_SMTP_AUTH_ID: @staff.S_SMTP_AUTH_ID, S_SMTP_AUTH_PW: @staff.S_SMTP_AUTH_PW, S_SSN: @staff.S_SSN, S_SUPERVISOR: @staff.S_SUPERVISOR, S_SW_UPDATE_NOW: @staff.S_SW_UPDATE_NOW, S_TASK: @staff.S_TASK, S_TEAM: @staff.S_TEAM, S_TIME_COP: @staff.S_TIME_COP, S_TIME_POINT_OPT_IN: @staff.S_TIME_POINT_OPT_IN, S_TITLE: @staff.S_TITLE, S_TYPE: @staff.S_TYPE, S_VENDOR: @staff.S_VENDOR, S_WEB_ACCESS10: @staff.S_WEB_ACCESS10, S_WEB_ACCESS11: @staff.S_WEB_ACCESS11, S_WEB_ACCESS12: @staff.S_WEB_ACCESS12, S_WEB_ACCESS1: @staff.S_WEB_ACCESS1, S_WEB_ACCESS2: @staff.S_WEB_ACCESS2, S_WEB_ACCESS3: @staff.S_WEB_ACCESS3, S_WEB_ACCESS4: @staff.S_WEB_ACCESS4, S_WEB_ACCESS5: @staff.S_WEB_ACCESS5, S_WEB_ACCESS6: @staff.S_WEB_ACCESS6, S_WEB_ACCESS7: @staff.S_WEB_ACCESS7, S_WEB_ACCESS8: @staff.S_WEB_ACCESS8, S_WEB_ACCESS9: @staff.S_WEB_ACCESS9, S_WEB_ACCESS: @staff.S_WEB_ACCESS, S_WEB_ACCESS_EXPIRES: @staff.S_WEB_ACCESS_EXPIRES, S_WEB_ACCESS_SUSPENDED: @staff.S_WEB_ACCESS_SUSPENDED, S_WINNERS_OPT_IN: @staff.S_WINNERS_OPT_IN, S_YTD: @staff.S_YTD, primaryKey: @staff.primaryKey }
    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete :destroy, id: @staff
    end

    assert_redirected_to staffs_path
  end
end
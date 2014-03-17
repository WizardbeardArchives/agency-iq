require 'test_helper'

class UserWindowsControllerTest < ActionController::TestCase
  setup do
    @user_window = user_windows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_windows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_window" do
    assert_difference('UserWindow.count') do
      post :create, user_window: { UW_WORK: @user_window.UW_WORK, UW_shortcut10: @user_window.UW_shortcut10, UW_shortcut11: @user_window.UW_shortcut11, UW_shortcut12: @user_window.UW_shortcut12, UW_shortcut1: @user_window.UW_shortcut1, UW_shortcut2: @user_window.UW_shortcut2, UW_shortcut3: @user_window.UW_shortcut3, UW_shortcut4: @user_window.UW_shortcut4, UW_shortcut5: @user_window.UW_shortcut5, UW_shortcut6: @user_window.UW_shortcut6, UW_shortcut7: @user_window.UW_shortcut7, UW_shortcut8: @user_window.UW_shortcut8, UW_shortcut9: @user_window.UW_shortcut9, UW_wAEDashboard: @user_window.UW_wAEDashboard, UW_wAR: @user_window.UW_wAR, UW_wAcctDashboard: @user_window.UW_wAcctDashboard, UW_wBillingHotSheet: @user_window.UW_wBillingHotSheet, UW_wCalendar: @user_window.UW_wCalendar, UW_wCheckbook: @user_window.UW_wCheckbook, UW_wClientTrafficController: @user_window.UW_wClientTrafficController, UW_wCollectionMgr: @user_window.UW_wCollectionMgr, UW_wCreativeDashboard: @user_window.UW_wCreativeDashboard, UW_wDailyJobStatus: @user_window.UW_wDailyJobStatus, UW_wExecDashboard: @user_window.UW_wExecDashboard, UW_wExpenseReport: @user_window.UW_wExpenseReport, UW_wGL: @user_window.UW_wGL, UW_wInOutBoard: @user_window.UW_wInOutBoard, UW_wJobCreativeBrief: @user_window.UW_wJobCreativeBrief, UW_wJobDiary: @user_window.UW_wJobDiary, UW_wJobEstimate: @user_window.UW_wJobEstimate, UW_wJobSchedule: @user_window.UW_wJobSchedule, UW_wJobs: @user_window.UW_wJobs, UW_wMO: @user_window.UW_wMO, UW_wMediaCalendar: @user_window.UW_wMediaCalendar, UW_wPO: @user_window.UW_wPO, UW_wPayments: @user_window.UW_wPayments, UW_wPopAR: @user_window.UW_wPopAR, UW_wPopCOA: @user_window.UW_wPopCOA, UW_wPopCalendar: @user_window.UW_wPopCalendar, UW_wPopCampaigns: @user_window.UW_wPopCampaigns, UW_wPopChargeItems: @user_window.UW_wPopChargeItems, UW_wPopClients: @user_window.UW_wPopClients, UW_wPopContacts: @user_window.UW_wPopContacts, UW_wPopDept: @user_window.UW_wPopDept, UW_wPopGroups: @user_window.UW_wPopGroups, UW_wPopJobTasks: @user_window.UW_wPopJobTasks, UW_wPopJobs: @user_window.UW_wPopJobs, UW_wPopPC: @user_window.UW_wPopPC, UW_wPopPOs: @user_window.UW_wPopPOs, UW_wPopProjects: @user_window.UW_wPopProjects, UW_wPopSpecSheets: @user_window.UW_wPopSpecSheets, UW_wPopStaff: @user_window.UW_wPopStaff, UW_wPopStatus: @user_window.UW_wPopStatus, UW_wPopTaskTable: @user_window.UW_wPopTaskTable, UW_wPopTraffic: @user_window.UW_wPopTraffic, UW_wPopVendors: @user_window.UW_wPopVendors, UW_wProdCalendar: @user_window.UW_wProdCalendar, UW_wProdPlanner: @user_window.UW_wProdPlanner, UW_wProductionCalendar: @user_window.UW_wProductionCalendar, UW_wProjectManager: @user_window.UW_wProjectManager, UW_wSmartTimer: @user_window.UW_wSmartTimer, UW_wTaskMaster: @user_window.UW_wTaskMaster, UW_wTimeCard: @user_window.UW_wTimeCard, UW_wTimeCardClick: @user_window.UW_wTimeCardClick, UW_wTimeCardGlance: @user_window.UW_wTimeCardGlance, UW_wTimeCardHourly: @user_window.UW_wTimeCardHourly, UW_wTimeCardWeek: @user_window.UW_wTimeCardWeek, UW_wTimeSheets: @user_window.UW_wTimeSheets, UW_wUpdateTraffic: @user_window.UW_wUpdateTraffic, UW_wWeeklyTraffic: @user_window.UW_wWeeklyTraffic, UW_wWorkToDo: @user_window.UW_wWorkToDo, primaryKey: @user_window.primaryKey }
    end

    assert_redirected_to user_window_path(assigns(:user_window))
  end

  test "should show user_window" do
    get :show, id: @user_window
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_window
    assert_response :success
  end

  test "should update user_window" do
    patch :update, id: @user_window, user_window: { UW_WORK: @user_window.UW_WORK, UW_shortcut10: @user_window.UW_shortcut10, UW_shortcut11: @user_window.UW_shortcut11, UW_shortcut12: @user_window.UW_shortcut12, UW_shortcut1: @user_window.UW_shortcut1, UW_shortcut2: @user_window.UW_shortcut2, UW_shortcut3: @user_window.UW_shortcut3, UW_shortcut4: @user_window.UW_shortcut4, UW_shortcut5: @user_window.UW_shortcut5, UW_shortcut6: @user_window.UW_shortcut6, UW_shortcut7: @user_window.UW_shortcut7, UW_shortcut8: @user_window.UW_shortcut8, UW_shortcut9: @user_window.UW_shortcut9, UW_wAEDashboard: @user_window.UW_wAEDashboard, UW_wAR: @user_window.UW_wAR, UW_wAcctDashboard: @user_window.UW_wAcctDashboard, UW_wBillingHotSheet: @user_window.UW_wBillingHotSheet, UW_wCalendar: @user_window.UW_wCalendar, UW_wCheckbook: @user_window.UW_wCheckbook, UW_wClientTrafficController: @user_window.UW_wClientTrafficController, UW_wCollectionMgr: @user_window.UW_wCollectionMgr, UW_wCreativeDashboard: @user_window.UW_wCreativeDashboard, UW_wDailyJobStatus: @user_window.UW_wDailyJobStatus, UW_wExecDashboard: @user_window.UW_wExecDashboard, UW_wExpenseReport: @user_window.UW_wExpenseReport, UW_wGL: @user_window.UW_wGL, UW_wInOutBoard: @user_window.UW_wInOutBoard, UW_wJobCreativeBrief: @user_window.UW_wJobCreativeBrief, UW_wJobDiary: @user_window.UW_wJobDiary, UW_wJobEstimate: @user_window.UW_wJobEstimate, UW_wJobSchedule: @user_window.UW_wJobSchedule, UW_wJobs: @user_window.UW_wJobs, UW_wMO: @user_window.UW_wMO, UW_wMediaCalendar: @user_window.UW_wMediaCalendar, UW_wPO: @user_window.UW_wPO, UW_wPayments: @user_window.UW_wPayments, UW_wPopAR: @user_window.UW_wPopAR, UW_wPopCOA: @user_window.UW_wPopCOA, UW_wPopCalendar: @user_window.UW_wPopCalendar, UW_wPopCampaigns: @user_window.UW_wPopCampaigns, UW_wPopChargeItems: @user_window.UW_wPopChargeItems, UW_wPopClients: @user_window.UW_wPopClients, UW_wPopContacts: @user_window.UW_wPopContacts, UW_wPopDept: @user_window.UW_wPopDept, UW_wPopGroups: @user_window.UW_wPopGroups, UW_wPopJobTasks: @user_window.UW_wPopJobTasks, UW_wPopJobs: @user_window.UW_wPopJobs, UW_wPopPC: @user_window.UW_wPopPC, UW_wPopPOs: @user_window.UW_wPopPOs, UW_wPopProjects: @user_window.UW_wPopProjects, UW_wPopSpecSheets: @user_window.UW_wPopSpecSheets, UW_wPopStaff: @user_window.UW_wPopStaff, UW_wPopStatus: @user_window.UW_wPopStatus, UW_wPopTaskTable: @user_window.UW_wPopTaskTable, UW_wPopTraffic: @user_window.UW_wPopTraffic, UW_wPopVendors: @user_window.UW_wPopVendors, UW_wProdCalendar: @user_window.UW_wProdCalendar, UW_wProdPlanner: @user_window.UW_wProdPlanner, UW_wProductionCalendar: @user_window.UW_wProductionCalendar, UW_wProjectManager: @user_window.UW_wProjectManager, UW_wSmartTimer: @user_window.UW_wSmartTimer, UW_wTaskMaster: @user_window.UW_wTaskMaster, UW_wTimeCard: @user_window.UW_wTimeCard, UW_wTimeCardClick: @user_window.UW_wTimeCardClick, UW_wTimeCardGlance: @user_window.UW_wTimeCardGlance, UW_wTimeCardHourly: @user_window.UW_wTimeCardHourly, UW_wTimeCardWeek: @user_window.UW_wTimeCardWeek, UW_wTimeSheets: @user_window.UW_wTimeSheets, UW_wUpdateTraffic: @user_window.UW_wUpdateTraffic, UW_wWeeklyTraffic: @user_window.UW_wWeeklyTraffic, UW_wWorkToDo: @user_window.UW_wWorkToDo, primaryKey: @user_window.primaryKey }
    assert_redirected_to user_window_path(assigns(:user_window))
  end

  test "should destroy user_window" do
    assert_difference('UserWindow.count', -1) do
      delete :destroy, id: @user_window
    end

    assert_redirected_to user_windows_path
  end
end

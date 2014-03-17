class UserWindowsController < ApplicationController
  before_action :set_user_window, only: [:show, :edit, :update, :destroy]

  # GET /user_windows
  # GET /user_windows.json
  def index
    @user_windows = UserWindow.all
  end

  # GET /user_windows/1
  # GET /user_windows/1.json
  def show
  end

  # GET /user_windows/new
  def new
    @user_window = UserWindow.new
  end

  # GET /user_windows/1/edit
  def edit
  end

  # POST /user_windows
  # POST /user_windows.json
  def create
    @user_window = UserWindow.new(user_window_params)

    respond_to do |format|
      if @user_window.save
        format.html { redirect_to @user_window, notice: 'User window was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_window }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_window.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_windows/1
  # PATCH/PUT /user_windows/1.json
  def update
    respond_to do |format|
      if @user_window.update(user_window_params)
        format.html { redirect_to @user_window, notice: 'User window was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_window.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_windows/1
  # DELETE /user_windows/1.json
  def destroy
    @user_window.destroy
    respond_to do |format|
      format.html { redirect_to user_windows_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_window
      @user_window = UserWindow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_window_params
      params.require(:user_window).permit(:primaryKey, :UW_WORK, :UW_wPopAR, :UW_wPopCalendar, :UW_wPopCampaigns, :UW_wPopChargeItems, :UW_wPopClients, :UW_wPopCOA, :UW_wPopContacts, :UW_wPopDept, :UW_wPopGroups, :UW_wPopJobs, :UW_wPopJobTasks, :UW_wPopPC, :UW_wPopPOs, :UW_wPopProjects, :UW_wPopStaff, :UW_wPopStatus, :UW_wPopTaskTable, :UW_wPopTraffic, :UW_wPopVendors, :UW_wPopSpecSheets, :UW_wInOutBoard, :UW_wSmartTimer, :UW_wTimeCard, :UW_wTimeCardWeek, :UW_wUpdateTraffic, :UW_wWorkToDo, :UW_wDailyJobStatus, :UW_wProdPlanner, :UW_wWeeklyTraffic, :UW_wTaskMaster, :UW_wJobs, :UW_wJobSchedule, :UW_shortcut1, :UW_shortcut2, :UW_shortcut3, :UW_shortcut4, :UW_shortcut5, :UW_shortcut6, :UW_shortcut7, :UW_shortcut8, :UW_shortcut9, :UW_shortcut10, :UW_shortcut11, :UW_shortcut12, :UW_wClientTrafficController, :UW_wJobDiary, :UW_wAR, :UW_wCheckbook, :UW_wGL, :UW_wPO, :UW_wMO, :UW_wTimeSheets, :UW_wPayments, :UW_wCalendar, :UW_wCollectionMgr, :UW_wProjectManager, :UW_wTimeCardClick, :UW_wCreativeDashboard, :UW_wAEDashboard, :UW_wAcctDashboard, :UW_wExecDashboard, :UW_wBillingHotSheet, :UW_wTimeCardGlance, :UW_wProductionCalendar, :UW_wProdCalendar, :UW_wMediaCalendar, :UW_wExpenseReport, :UW_wJobEstimate, :UW_wTimeCardHourly, :UW_wJobCreativeBrief)
    end
end

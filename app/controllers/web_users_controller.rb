class WebUsersController < ApplicationController
  before_action :set_web_user, only: [:show, :edit, :update, :destroy]

  # GET /web_users
  # GET /web_users.json
  def index
    @web_users = WebUser.all
  end

  # GET /web_users/1
  # GET /web_users/1.json
  def show
  end

  # GET /web_users/new
  def new
    @web_user = WebUser.new
  end

  # GET /web_users/1/edit
  def edit
  end

  # POST /web_users
  # POST /web_users.json
  def create
    @web_user = WebUser.new(web_user_params)

    respond_to do |format|
      if @web_user.save
        format.html { redirect_to @web_user, notice: 'Web user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @web_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @web_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_users/1
  # PATCH/PUT /web_users/1.json
  def update
    respond_to do |format|
      if @web_user.update(web_user_params)
        format.html { redirect_to @web_user, notice: 'Web user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @web_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_users/1
  # DELETE /web_users/1.json
  def destroy
    @web_user.destroy
    respond_to do |format|
      format.html { redirect_to web_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_user
      @web_user = WebUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_user_params
      params.require(:web_user).permit(:primaryKey, :WU_WORK, :WU_NAME, :WU_ORG, :WU_EXPIRES, :WU_PHONE, :WU_EMAIL, :WU_PHONE_CELL, :WU_PAGER, :WU_STAFF, :WU_P, :WU_P_EXPIRES, :WU_DEPT, :WU_WEB_ADMIN, :WU_LAST_ACCESS, :WU_KIND, :WU_A_TIME, :WU_ACCESS_EXP, :WU_ADMIN, :WU_A_JOB_TICKETS, :WU_A_EST, :WU_A_SCHED, :WU_A_TRAFFIC, :WU_A_JOB_STATUS, :WU_A_PO, :WU_A_PO_OK, :WU_A_TASK_PLAN, :WU_A_CHG_ORD, :WU_A_CLIENT_DIARY, :WU_A_EST_REVS, :WU_A_COSTS, :WU_A_CLIENT_STATUS, :WU_A_UNBILLED, :WU_A_BILL_PRVW, :WU_A_WIP, :WU_A_BILLINGS, :WU_A_SNAPSHOT, :WU_A_CASH_FLASH, :WU_A_STMT, :WU_A_AP, :WU_A_V_NUM, :WU_A_C_NUM, :WU_A_WORK_TO_DO, :WU_A_JOB_DIARY, :WU_A_AR, :WU_IP, :WU_SUSPEND, :WU_LAST_JOB, :WU_LAST_DATE, :WU_A_WEEKLY_TRAF, :WU_A_JOB_PO, :WU_A_JOB_PROG, :WU_WELCOME_MSG, :WU_LAST_PO, :WU_A_CLIENTS, :WU_A_VENDORS, :WU_A_EXP, :WU_A_ADD_JOBS, :WU_A_JOB_SPECS, :WU_ADDED_BY, :WU_ADDED_WHEN, :WU_HOME_PAGE, :WU_BAD_LOGINS, :WU_COOKIE, :WU_A_PROPOSALS, :WU_A_INT_CHARGES, :WU_A_TIME_SHEETS, :WU_A_PREBILL, :WU_A_SNAPS_PROD, :WU_A_SNAPS_WIP, :WU_ID, :WU_EDITED_BY, :WU_EDITED_WHEN)
    end
end

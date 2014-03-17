class StaffsController < ApplicationController
  before_action :set_staff, only: [:show, :edit, :update, :destroy]

  # GET /staffs
  # GET /staffs.json
  def index
    @staffs = Staff.all
  end

  # GET /staffs/1
  # GET /staffs/1.json
  def show
  end

  # GET /staffs/new
  def new
    @staff = Staff.new
  end

  # GET /staffs/1/edit
  def edit
  end

  # POST /staffs
  # POST /staffs.json
  def create
    @staff = Staff.new(staff_params)

    respond_to do |format|
      if @staff.save
        format.html { redirect_to @staff, notice: 'Staff was successfully created.' }
        format.json { render action: 'show', status: :created, location: @staff }
      else
        format.html { render action: 'new' }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staffs/1
  # PATCH/PUT /staffs/1.json
  def update
    respond_to do |format|
      if @staff.update(staff_params)
        format.html { redirect_to @staff, notice: 'Staff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffs/1
  # DELETE /staffs/1.json
  def destroy
    @staff.destroy
    respond_to do |format|
      format.html { redirect_to staffs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_params
      params.require(:staff).permit(:primaryKey, :S_INITIALS, :S_NAME, :S_ADDRESS1, :S_ADDRESS2, :S_ADDRESS3, :S_TASK, :S_BILL_RATE, :S_COST_RATE, :S_SSN, :S_PC_NUM, :S_MTD, :S_YTD, :S_HOURS, :S_1, :S_2, :S_3, :S_4, :S_5, :S_6, :S_7, :S_8, :S_9, :S_10, :S_11, :S_12, :S_B1, :S_B2, :S_B3, :S_B4, :S_B5, :S_B6, :S_B7, :S_B8, :S_B9, :S_B10, :S_B11, :S_B12, :S_LSTYR_1, :S_LSTYR_2, :S_LSTYR_3, :S_LSTYR_4, :S_LSTYR_5, :S_LSTYR_6, :S_LSTYR_7, :S_LSTYR_8, :S_LSTYR_9, :S_LSTYR_10, :S_LSTYR_11, :S_LSTYR_12, :S_OFFICE_PHONE, :S_HOURS_WEEK, :S_FACE, :S_TYPE, :S_NOTES, :S_DEPT, :S_HOURS_ACT, :S_TEAM, :S_PLAN_WEEK, :S_PLAN_MONDAY, :S_PLAN_TUESDAY, :S_PLAN_WEDNESDAY, :S_PLAN_THURSDAY, :S_PLAN_FRIDAY, :S_REQ_TIME, :S_ACT_MONDAY, :S_ACT_TUESDAY, :S_ACT_WEDNESDAY, :S_ACT_THURSDAY, :S_ACT_FRIDAY, :S_ACT_SATURDAY, :S_ACT_SUNDAY, :S_PLAN_SATURDAY, :S_PLAN_SUNDAY, :S_REQ_PLAN, :S_HOME_PHONE, :S_OT_COST_RATE, :S_OT_BILL_RATE, :S_TITLE, :S_ACTIVE, :S_EMAIL, :S_BACKUP_PERSON, :S_FREELANCE, :S_PERIOD, :S_TIME_COP, :S_EMAIL_SIG, :S_SUPERVISOR, :S_FAX, :S_WEB_ACCESS, :S_SMTP_AUTH_ID, :S_SMTP_AUTH_PW, :S_VENDOR, :S_ADDED_BY, :S_ADDED_WHEN, :S_EDITED_BY, :S_EDITED_WHEN, :S_DATE_HIRED, :S_DATE_TERM, :S_OA, :S_APP_VERSION, :S_APPR_EXEMPT, :S_SW_UPDATE_NOW, :S_HOMEBASE_EMAIL, :S_JOBR, :S_WEB_ACCESS1, :S_WEB_ACCESS2, :S_WEB_ACCESS3, :S_WEB_ACCESS4, :S_WEB_ACCESS5, :S_WEB_ACCESS6, :S_WEB_ACCESS7, :S_WEB_ACCESS8, :S_WEB_ACCESS9, :S_WEB_ACCESS10, :S_WEB_ACCESS11, :S_WEB_ACCESS12, :S_SCHEDULABLE, :S_WINNERS_OPT_IN, :S_TIME_POINT_OPT_IN, :S_SEND_CHIRPS, :S_SEND_CHIRPS_TO, :S_CSIDE_STATUS_REPORT, :S_CSIDE_TRAFFIC_REPORT, :S_CSIDE_JOBS, :S_CSIDE_JOB_REQUESTS, :S_CSIDE_APPR_ESTS, :S_CSIDE_APPR_SCHEDS, :S_CSIDE_APPR_CHANGES, :S_CSIDE_APPR_ART, :S_CSIDE_PROPOSALS, :S_GETS_HOMEBASE_EMAILS, :S_CSIDE_RATE_JOBS, :S_CLIENT_NUM, :S_CSIDE_APPR_CREBRIEF, :S_WEB_ACCESS_SUSPENDED, :S_CSIDE_CLIENTS, :S_WEB_ACCESS_EXPIRES, :S_EMAIL_OVERDUES, :S_CAL1_KEY, :S_CAL2_KEY, :S_CAL3_KEY, :S_CAL4_KEY, :S_CAL5_KEY, :S_CSIDE_TYPE_CAT)
    end
end

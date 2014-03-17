class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job }
      else
        format.html { render action: 'new' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:primaryKey, :J_NUM, :J_START_DATE, :J_NAME, :J_CLIENT_NUM, :J_CLOSED, :J_DUE_DATE, :J_USER_FIELD2, :J_CONT_AMT, :J_REVISION, :J_USER_FIELD1, :J_PROD_STATUS, :J_DESC, :J_WHO, :J_CLIENT_CONTACT, :J_AGENCY_CONTACT, :J_AE_TEAM, :J_TYPE, :J_AMT1, :J_AMT2, :J_AMT3, :J_AMT4, :J_AMT5, :J_AMT6, :J_NEXT_STEPS, :J_DATE_ADDED, :J_PC, :J_CONT_NOTE, :J_BILL_STATUS, :J_MILE1, :J_MILE2, :J_MILE3, :J_MILE4, :J_MILE5, :J_MILE6, :J_MILE7, :J_MILE8, :J_MILE9, :J_MILE10, :J_MILE11, :J_MILE12, :J_HISTORY_COUNT, :J_CONTINGENCY, :J_CONT_PC, :J_EST_FORM, :J_APPROVAL1, :J_APPROVAL2, :J_APPROVAL3, :J_SHOW_ZERO_AS, :J_HEADING, :J_SHOW_HOURS, :J_SHOW_DATES, :J_SHOW_TOTALS, :J_DISCLAIMER, :J_EST_CUSTOM, :J_EST_COLUMN1, :J_EST_COLUMN2, :J_EST_COLUMN3, :J_FINAL_EST, :J_TO1, :J_TO2, :J_TO3, :J_TO4, :J_TO5, :J_AE_TITLE, :J_ADV_BILLED, :J_EST_TO_GO, :J_HOURS_TO_GO, :J_SNAP_UPDATED, :J_COSTS_TO_GO, :J_NEXT_BILL_AMT, :J_NEXT_BILL_DATE, :J_HIDE_EST_TASKS, :J_CLIENT_BILLED, :J_CLIENT_PAID, :J_UNBILLABLE, :J_CLIENT_PHONE, :J_CLIENT_TITLE, :J_AE_PHONE, :J_FIELD1_LABEL, :J_FIELD2_LABEL, :J_FIELD3_LABEL, :J_USER_FIELD3, :J_CHARGE_NUM, :J_FIELD4_LABEL, :J_FIELD5_LABEL, :J_FIELD6_LABEL, :J_USER_FIELD4, :J_USER_FIELD5, :J_USER_FIELD6, :J_LAST_BILLED, :J_DATE_CLOSED, :J_DATE3, :J_STATUS_NOTE, :J_RATE_KIND, :J_WORK_ORDER, :J_TRAF1, :J_TRAF2, :J_TRAF3, :J_TRAF4, :J_TRAF5, :J_TRAF6, :J_ADDRESS1, :J_ADDRESS2, :J_ADDRESS3, :J_ADDRESS4, :J_ADDRESS5, :J_ADDRESS6, :J_BUDGET, :J_SHIP_TO1, :J_SHIP_TO2, :J_SHIP_TO3, :J_SHIP_TO4, :J_ARCHIVED_ON, :J_BILL_TO, :J_EST_OK, :J_EST_OK_BY, :J_EST_OK_WHEN, :J_EXPORTED, :J_CLOSED_BY, :J_PRIORITY, :J_ALL_REVS, :J_SCHED_REVS, :J_ALL_SCH_REVS, :J_COMMISSIONABLE, :J_BIZDEV_AE, :J_SCHED_OK, :J_SCHED_OK_BY, :J_SCHED_OK_WHEN, :J_EDITED_BY, :J_EDITED_WHEN, :J_ADR_NAME, :J_PROJECT, :J_TAGS, :J_DISCUSSION_MEMBERS, :J_CHECKLIST1, :J_CHECKLIST2, :J_CHECKLIST3, :J_CHECKLIST4, :J_CHECKLIST5, :J_CHECKLIST6, :J_CHECKLIST7, :J_CHECKLIST8, :J_USER_DATE1, :J_USER_DATE2, :J_HILITE, :J_PO, :J_FINISHED, :J_FINISHED_DATE, :J_FAST_SCORE_F, :J_FAST_SCORE_A, :J_FAST_SCORE_S, :J_FAST_SCORE_T, :J_FORECAST_JAN, :J_FORECAST_FEB, :J_FORECAST_MAR, :J_FORECAST_APR, :J_FORECAST_MAY, :J_FORECAST_JUN, :J_FORECAST_JUL, :J_FORECAST_AUG, :J_FORECAST_SEP, :J_FORECAST_OCT, :J_FORECAST_NOV, :J_FORECAST_DEC, :J_ADDED_HOW, :J_OPTION1, :J_OPTION2, :J_OPTION3, :J_OPTION4, :J_OPTION5, :J_OPTION6, :J_OPTION7, :J_OPTION8, :J_BILLING_STEP1, :J_BILLING_STEP2, :J_BILLING_STEP3, :J_BILLING_STEP4, :J_BILLING_STEP5, :J_BILLING_STEP6, :J_BILLING_STEP7, :J_BILLING_STEP8, :J_CLIENT_RATING, :J_EST_OK_CLIENT, :J_EST_OK_CLIENT_BY, :J_EST_OK_CLIENT_WHEN, :J_SCHED_OK_CLIENT, :J_SCHED_OK_CLIENT_BY, :J_SCHED_OK_CLIENT_WHEN, :J_AD_ID)
    end
end

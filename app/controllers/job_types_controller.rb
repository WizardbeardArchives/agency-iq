class JobTypesController < ApplicationController
  before_action :set_job_type, only: [:show, :edit, :update, :destroy]

  # GET /job_types
  # GET /job_types.json
  def index
    @job_types = JobType.all
  end

  # GET /job_types/1
  # GET /job_types/1.json
  def show
  end

  # GET /job_types/new
  def new
    @job_type = JobType.new
  end

  # GET /job_types/1/edit
  def edit
  end

  # POST /job_types
  # POST /job_types.json
  def create
    @job_type = JobType.new(job_type_params)

    respond_to do |format|
      if @job_type.save
        format.html { redirect_to @job_type, notice: 'Job type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @job_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_types/1
  # PATCH/PUT /job_types/1.json
  def update
    respond_to do |format|
      if @job_type.update(job_type_params)
        format.html { redirect_to @job_type, notice: 'Job type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_types/1
  # DELETE /job_types/1.json
  def destroy
    @job_type.destroy
    respond_to do |format|
      format.html { redirect_to job_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_type
      @job_type = JobType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_type_params
      params.require(:job_type).permit(:primaryKey, :TYPE_CODE, :TYPE_NAME, :TYPE_DISCLAIMER, :TYPE_TRAFFIC1, :TYPE_TRAFFIC2, :TYPE_TRAFFIC3, :TYPE_TRAFFIC4, :TYPE_TRAFFIC5, :TYPE_TRAFFIC6, :TYPE_TRAFFIC7, :TYPE_TRAFFIC8, :TYPE_TRAFFIC9, :TYPE_TRAFFIC10, :TYPE_MARKUP, :TYPE_RATE, :TYPE_TASK_LIST, :TYPE_HEADING, :TYPE_EST_COL1, :TYPE_EST_COL2, :TYPE_EST_COL3, :TYPE_TRAFFIC11, :TYPE_TRAFFIC12, :TYPE_FIELD1, :TYPE_FIELD2, :TYPE_FIELD3, :TYPE_FIELD4, :TYPE_FIELD5, :TYPE_FIELD6, :TYPE_CONTING, :TYPE_CON_PC, :TYPE_CON_AMT, :TYPE_CON_NOTE, :TYPE_SHOW_HRS, :TYPE_AE_TITLE, :TYPE_JOB_SPECS, :TYPE_RATE_KIND, :TYPE_TAX, :TYPE_CB_1_LABEL, :TYPE_CB_2_LABEL, :TYPE_CB_3_LABEL, :TYPE_CB_4_LABEL, :TYPE_CB_5_LABEL, :TYPE_CB_6_LABEL, :TYPE_CB_7_LABEL, :TYPE_CB_8_LABEL, :TYPE_CB_9_LABEL, :TYPE_CB_10_LABEL, :TYPE_CB_11_LABEL, :TYPE_CB_12_LABEL, :TYPE_CB_13_LABEL, :TYPE_CB_14_LABEL, :TYPE_CB_15_LABEL, :TYPE_COMMISSIONABLE, :TYPE_COMM_RATE, :TYPE_COMM_SPIFF, :TYPE_COMM_TYPE_AE, :TYPE_COMM_RATE_BIZ, :TYPE_ACTIVE, :TYPE_ADDED_BY, :TYPE_ADDED_WHEN, :TYPE_EDITED_BY, :TYPE_EDITED_WHEN, :TYPE_WO_1_LABEL, :TYPE_WO_2_LABEL, :TYPE_WO_3_LABEL, :TYPE_WO_4_LABEL, :TYPE_WO_5_LABEL, :TYPE_WO_6_LABEL, :TYPE_WO_7_LABEL, :TYPE_WO_8_LABEL, :TYPE_WO_9_LABEL, :TYPE_WO_10_LABEL, :TYPE_WO_11_LABEL, :TYPE_WO_12_LABEL, :TYPE_WO_13_LABEL, :TYPE_WO_14_LABEL, :TYPE_WO_15_LABEL, :TYPE_PC, :TYPE_CHECKLIST1, :TYPE_CHECKLIST2, :TYPE_CHECKLIST3, :TYPE_CHECKLIST4, :TYPE_CHECKLIST5, :TYPE_CHECKLIST6, :TYPE_CHECKLIST7, :TYPE_CHECKLIST8, :TYPE_CHECK1_NAME, :TYPE_CHECK2_NAME, :TYPE_CHECK3_NAME, :TYPE_CHECK4_NAME, :TYPE_CHECK5_NAME, :TYPE_CHECK6_NAME, :TYPE_CHECK7_NAME, :TYPE_CHECK8_NAME, :TYPE_FORECAST_COSTS, :TYPE_FORECAST_LABOR, :TYPE_USER_DATE1, :TYPE_USER_DATE2, :TYPE_REVIEWER, :TYPE_REQUESTABLE, :TYPE_J_FIELD1_LABEL, :TYPE_J_FIELD2_LABEL, :TYPE_J_FIELD3_LABEL, :TYPE_J_FIELD4_LABEL, :TYPE_J_FIELD5_LABEL, :TYPE_J_FIELD6_LABEL, :TYPE_REQ_J_FIELD1, :TYPE_REQ_J_FIELD2, :TYPE_REQ_J_FIELD3, :TYPE_REQ_J_FIELD4, :TYPE_REQ_J_FIELD5, :TYPE_REQ_J_FIELD6, :TYPE_CATEGORY, :TYPE_JOB_OPTION1, :TYPE_JOB_OPTION2, :TYPE_JOB_OPTION3, :TYPE_JOB_OPTION4, :TYPE_JOB_OPTION5, :TYPE_JOB_OPTION6, :TYPE_JOB_OPTION7, :TYPE_JOB_OPTION8, :TYPE_HOME_CB1, :TYPE_HOME_CB2, :TYPE_HOME_CB3, :TYPE_HOME_CB4, :TYPE_HOME_CB5, :TYPE_HOME_CB6, :TYPE_HOME_CB7, :TYPE_HOME_CB8, :TYPE_HOME_CB9, :TYPE_HOME_CB10, :TYPE_HOME_CB11, :TYPE_HOME_CB12, :TYPE_HOME_CB13, :TYPE_HOME_CB14, :TYPE_HOME_CB15, :TYPE_HOME_WO1, :TYPE_HOME_WO2, :TYPE_HOME_WO3, :TYPE_HOME_WO4, :TYPE_HOME_WO5, :TYPE_HOME_WO6, :TYPE_HOME_WO7, :TYPE_HOME_WO8, :TYPE_HOME_WO9, :TYPE_HOME_WO10, :TYPE_HOME_WO11, :TYPE_HOME_WO12, :TYPE_HOME_WO13, :TYPE_HOME_WO14, :TYPE_HOME_WO15, :TYPE_CHECK_RULE1, :TYPE_CHECK_RULE2, :TYPE_CHECK_RULE3, :TYPE_CHECK_RULE4, :TYPE_JOB_REQUESTS, :TYPE_REVIEWER2, :TYPE_REVIEWER3)
    end
end

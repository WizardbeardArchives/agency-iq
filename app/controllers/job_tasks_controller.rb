class JobTasksController < ApplicationController
  before_action :set_job_task, only: [:show, :edit, :update, :destroy]

  # GET /job_tasks
  # GET /job_tasks.json
  def index
    @job_tasks = JobTask.all
  end

  # GET /job_tasks/1
  # GET /job_tasks/1.json
  def show
  end

  # GET /job_tasks/new
  def new
    @job_task = JobTask.new
  end

  # GET /job_tasks/1/edit
  def edit
  end

  # POST /job_tasks
  # POST /job_tasks.json
  def create
    @job_task = JobTask.new(job_task_params)

    respond_to do |format|
      if @job_task.save
        format.html { redirect_to @job_task, notice: 'Job task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job_task }
      else
        format.html { render action: 'new' }
        format.json { render json: @job_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_tasks/1
  # PATCH/PUT /job_tasks/1.json
  def update
    respond_to do |format|
      if @job_task.update(job_task_params)
        format.html { redirect_to @job_task, notice: 'Job task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_tasks/1
  # DELETE /job_tasks/1.json
  def destroy
    @job_task.destroy
    respond_to do |format|
      format.html { redirect_to job_tasks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_task
      @job_task = JobTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_task_params
      params.require(:job_task).permit(:primaryKey, :X_JOB_NUM, :X_TASK, :X_DESC, :X_ESTIMATE, :X_BUDGET, :X_HOURS_EST, :X_HOURS_ACT, :X_LABOR, :X_COST, :X_EXPENSES, :X_PO_NET, :X_PO_GROSS, :X_UNBILLED, :X_BILL_RATE, :X_MARKUP, :X_STATUS, :X_NOTE, :X_TAXABLE1, :X_TAXABLE2, :X_FINISHED, :X_DUE_DATE, :X_START_DATE, :X_KIND, :X_RESOURCE, :X_LEAD_TIME, :X_KEY, :X_SORT, :X_GROUP, :X_CGL, :X_DGL, :X_LAST_WORK, :X_SHOW_DESC, :X_PC, :X_NAME, :X_TAX1_RATE, :X_TAX2_RATE, :X_EST1, :X_EST2, :X_EST3, :X_BILLED, :X_ROLL_UP, :X_CHANGE_AMT, :X_CHAR30, :X_CHAR20, :X_MEDIA_COMM, :X_CHANGE_HRS, :X_CHANGE_BUDGET, :X_AMT4, :X_KEY_RESOURCE, :X_GROUP_PROD, :X_CHAR10_2, :X_CHAR10_3, :X_SORT_PROD, :X_RATE_KIND, :X_SUB_EST_HRS, :X_SUB_ACT_HRS, :X_NUM2D_5, :X_NUM2D_6, :X_NUM2D_7, :X_HRS_UNBILLED, :X_UNBILLABLE, :X_GROSS_COSTS, :X_GROSS_LABOR, :X_GROSS_EXP, :X_MU_AMT, :X_SPECS, :X_DATE_FINISHED, :X_DUE_WHEN, :X_HOURS_BILLED, :X_EST_HRS1, :X_EST_HRS2, :X_EST_HRS3, :X_COMMISSIONABLE, :X_ADDED_BY, :X_ADDED_WHEN, :X_EDITED_BY, :X_EDITED_WHEN, :X_TAGS, :X_COMPLETED, :X_RELATION, :X_RELATION_TYPE, :X_COLOR, :X_CLIENT_SCHED, :X_PHASE, :X_HOURS_WK1_1, :X_HOURS_WK1_2, :X_HOURS_WK1_3, :X_HOURS_WK1_4, :X_HOURS_WK1_5, :X_HOURS_WK2_1, :X_HOURS_WK2_2, :X_HOURS_WK2_3, :X_HOURS_WK2_4, :X_HOURS_WK2_5, :X_TAXABLE3, :X_TAX3_RATE, :X_NEXT_BILL_AMT, :X_NEXT_BILL_HRS, :X_NEXT_BILL_DATE, :X_NO_TIME, :X_MILESTONE, :X_REQ_APPROVAL, :X_REQ_APPROVED_DATE, :X_PRIORITY)
    end
end

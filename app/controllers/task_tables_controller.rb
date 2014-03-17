class TaskTablesController < ApplicationController
  before_action :set_task_table, only: [:show, :edit, :update, :destroy]

  # GET /task_tables
  # GET /task_tables.json
  def index
    @task_tables = TaskTable.all
  end

  # GET /task_tables/1
  # GET /task_tables/1.json
  def show
  end

  # GET /task_tables/new
  def new
    @task_table = TaskTable.new
  end

  # GET /task_tables/1/edit
  def edit
  end

  # POST /task_tables
  # POST /task_tables.json
  def create
    @task_table = TaskTable.new(task_table_params)

    respond_to do |format|
      if @task_table.save
        format.html { redirect_to @task_table, notice: 'Task table was successfully created.' }
        format.json { render action: 'show', status: :created, location: @task_table }
      else
        format.html { render action: 'new' }
        format.json { render json: @task_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_tables/1
  # PATCH/PUT /task_tables/1.json
  def update
    respond_to do |format|
      if @task_table.update(task_table_params)
        format.html { redirect_to @task_table, notice: 'Task table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @task_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_tables/1
  # DELETE /task_tables/1.json
  def destroy
    @task_table.destroy
    respond_to do |format|
      format.html { redirect_to task_tables_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_table
      @task_table = TaskTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_table_params
      params.require(:task_table).permit(:primaryKey, :T_TASK, :T_NAME, :T_TAX1, :T_TAX2, :T_MARKUP, :T_BILL_RATE, :T_DGL, :T_CGL, :T_GROUP, :T_SORT, :T_LEAD_TIME, :T_KIND, :T_HOURS, :T_COST, :T_PC, :T_DESC, :T_CHAR2, :T_CHAR3, :T_CHAR4, :T_CHAR5, :T_CHAR6, :T_CHAR7, :T_UNBILLABLE, :T_SORT_PROD, :T_PREF3, :T_PREF4, :T_AMT1, :T_AMT2, :T_ICON, :T_ROLL_UP, :T_ACTIVE, :T_COMMISSIONABLE, :T_COMM_RATE_AE, :T_COMM_RATE_BIZ, :T_REQ_APPROVAL, :T_REQ_APPROVAL_BY, :T_ADDED_BY, :T_ADDED_WHEN, :T_EDITED_BY, :T_EDITED_WHEN, :T_PAYROLL, :T_UTIL_CAT, :T_TAGS, :T_CLIENT_SCHED, :T_MILESTONE, :T_TAX3, :T_SMALL_ICON, :T_ALWAYS_DISCUSS, :T_NO_TIME, :T_STATUS_FINISHED)
    end
end

class TempTasksController < ApplicationController
  before_action :set_temp_task, only: [:show, :edit, :update, :destroy]

  # GET /temp_tasks
  # GET /temp_tasks.json
  def index
    @temp_tasks = TempTask.all
  end

  # GET /temp_tasks/1
  # GET /temp_tasks/1.json
  def show
  end

  # GET /temp_tasks/new
  def new
    @temp_task = TempTask.new
  end

  # GET /temp_tasks/1/edit
  def edit
  end

  # POST /temp_tasks
  # POST /temp_tasks.json
  def create
    @temp_task = TempTask.new(temp_task_params)

    respond_to do |format|
      if @temp_task.save
        format.html { redirect_to @temp_task, notice: 'Temp task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @temp_task }
      else
        format.html { render action: 'new' }
        format.json { render json: @temp_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp_tasks/1
  # PATCH/PUT /temp_tasks/1.json
  def update
    respond_to do |format|
      if @temp_task.update(temp_task_params)
        format.html { redirect_to @temp_task, notice: 'Temp task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @temp_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp_tasks/1
  # DELETE /temp_tasks/1.json
  def destroy
    @temp_task.destroy
    respond_to do |format|
      format.html { redirect_to temp_tasks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp_task
      @temp_task = TempTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temp_task_params
      params.require(:temp_task).permit(:primaryKey, :TT_TYPE, :TT_TASK, :TT_EST1, :TT_LEAD1, :TT_NAME, :TT_EST2, :TT_LEAD2, :TT_EST3, :TT_LEAD3, :TT_EST_HOURS, :TT_TASK_DESC, :TT_ADDED_BY, :TT_ADDED_WHEN, :TT_EDITED_BY, :TT_EDITED_WHEN)
    end
end

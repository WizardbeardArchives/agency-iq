class PalmTasksController < ApplicationController
  before_action :set_palm_task, only: [:show, :edit, :update, :destroy]

  # GET /palm_tasks
  # GET /palm_tasks.json
  def index
    @palm_tasks = PalmTask.all
  end

  # GET /palm_tasks/1
  # GET /palm_tasks/1.json
  def show
  end

  # GET /palm_tasks/new
  def new
    @palm_task = PalmTask.new
  end

  # GET /palm_tasks/1/edit
  def edit
  end

  # POST /palm_tasks
  # POST /palm_tasks.json
  def create
    @palm_task = PalmTask.new(palm_task_params)

    respond_to do |format|
      if @palm_task.save
        format.html { redirect_to @palm_task, notice: 'Palm task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @palm_task }
      else
        format.html { render action: 'new' }
        format.json { render json: @palm_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palm_tasks/1
  # PATCH/PUT /palm_tasks/1.json
  def update
    respond_to do |format|
      if @palm_task.update(palm_task_params)
        format.html { redirect_to @palm_task, notice: 'Palm task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @palm_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palm_tasks/1
  # DELETE /palm_tasks/1.json
  def destroy
    @palm_task.destroy
    respond_to do |format|
      format.html { redirect_to palm_tasks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palm_task
      @palm_task = PalmTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palm_task_params
      params.require(:palm_task).permit(:primaryKey, :PALM_TASK_CODE, :PALM_TASK_NAME, :PALM_TASK_USER, :PALM_TASK_ID, :PALM_TASK_CAT, :PALM_TASK_ATTRIBS)
    end
end

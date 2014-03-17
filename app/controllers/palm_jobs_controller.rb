class PalmJobsController < ApplicationController
  before_action :set_palm_job, only: [:show, :edit, :update, :destroy]

  # GET /palm_jobs
  # GET /palm_jobs.json
  def index
    @palm_jobs = PalmJob.all
  end

  # GET /palm_jobs/1
  # GET /palm_jobs/1.json
  def show
  end

  # GET /palm_jobs/new
  def new
    @palm_job = PalmJob.new
  end

  # GET /palm_jobs/1/edit
  def edit
  end

  # POST /palm_jobs
  # POST /palm_jobs.json
  def create
    @palm_job = PalmJob.new(palm_job_params)

    respond_to do |format|
      if @palm_job.save
        format.html { redirect_to @palm_job, notice: 'Palm job was successfully created.' }
        format.json { render action: 'show', status: :created, location: @palm_job }
      else
        format.html { render action: 'new' }
        format.json { render json: @palm_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palm_jobs/1
  # PATCH/PUT /palm_jobs/1.json
  def update
    respond_to do |format|
      if @palm_job.update(palm_job_params)
        format.html { redirect_to @palm_job, notice: 'Palm job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @palm_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palm_jobs/1
  # DELETE /palm_jobs/1.json
  def destroy
    @palm_job.destroy
    respond_to do |format|
      format.html { redirect_to palm_jobs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palm_job
      @palm_job = PalmJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palm_job_params
      params.require(:palm_job).permit(:primaryKey, :PALM_JOB_ID, :PALM_JOB_ATTRIBS, :PALM_JOB_CATEGORY, :PALM_JOB_NUM, :PALM_JOB_NAME, :PALM_JOB_USER, :PALM_JOB_PLUS)
    end
end

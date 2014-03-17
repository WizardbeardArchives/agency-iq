class ArchivedJobsController < ApplicationController
  before_action :set_archived_job, only: [:show, :edit, :update, :destroy]

  # GET /archived_jobs
  # GET /archived_jobs.json
  def index
    @archived_jobs = ArchivedJob.all
  end

  # GET /archived_jobs/1
  # GET /archived_jobs/1.json
  def show
  end

  # GET /archived_jobs/new
  def new
    @archived_job = ArchivedJob.new
  end

  # GET /archived_jobs/1/edit
  def edit
  end

  # POST /archived_jobs
  # POST /archived_jobs.json
  def create
    @archived_job = ArchivedJob.new(archived_job_params)

    respond_to do |format|
      if @archived_job.save
        format.html { redirect_to @archived_job, notice: 'Archived job was successfully created.' }
        format.json { render action: 'show', status: :created, location: @archived_job }
      else
        format.html { render action: 'new' }
        format.json { render json: @archived_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archived_jobs/1
  # PATCH/PUT /archived_jobs/1.json
  def update
    respond_to do |format|
      if @archived_job.update(archived_job_params)
        format.html { redirect_to @archived_job, notice: 'Archived job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @archived_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archived_jobs/1
  # DELETE /archived_jobs/1.json
  def destroy
    @archived_job.destroy
    respond_to do |format|
      format.html { redirect_to archived_jobs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archived_job
      @archived_job = ArchivedJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archived_job_params
      params.require(:archived_job).permit(:primaryKey, :AJ_JOB_NUM, :AJ_NAME, :AJ_FORM, :AJ_PRINTER, :AJ_ARTIST, :AJ_LOCATION, :AJ_REF)
    end
end

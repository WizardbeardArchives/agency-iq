class JobUserFieldsController < ApplicationController
  before_action :set_job_user_field, only: [:show, :edit, :update, :destroy]

  # GET /job_user_fields
  # GET /job_user_fields.json
  def index
    @job_user_fields = JobUserField.all
  end

  # GET /job_user_fields/1
  # GET /job_user_fields/1.json
  def show
  end

  # GET /job_user_fields/new
  def new
    @job_user_field = JobUserField.new
  end

  # GET /job_user_fields/1/edit
  def edit
  end

  # POST /job_user_fields
  # POST /job_user_fields.json
  def create
    @job_user_field = JobUserField.new(job_user_field_params)

    respond_to do |format|
      if @job_user_field.save
        format.html { redirect_to @job_user_field, notice: 'Job user field was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job_user_field }
      else
        format.html { render action: 'new' }
        format.json { render json: @job_user_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_user_fields/1
  # PATCH/PUT /job_user_fields/1.json
  def update
    respond_to do |format|
      if @job_user_field.update(job_user_field_params)
        format.html { redirect_to @job_user_field, notice: 'Job user field was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job_user_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_user_fields/1
  # DELETE /job_user_fields/1.json
  def destroy
    @job_user_field.destroy
    respond_to do |format|
      format.html { redirect_to job_user_fields_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_user_field
      @job_user_field = JobUserField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_user_field_params
      params.require(:job_user_field).permit(:primaryKey, :JU_FIELD, :JU_VALUE)
    end
end

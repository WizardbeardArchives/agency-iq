class MediaEstsController < ApplicationController
  before_action :set_media_est, only: [:show, :edit, :update, :destroy]

  # GET /media_ests
  # GET /media_ests.json
  def index
    @media_ests = MediaEst.all
  end

  # GET /media_ests/1
  # GET /media_ests/1.json
  def show
  end

  # GET /media_ests/new
  def new
    @media_est = MediaEst.new
  end

  # GET /media_ests/1/edit
  def edit
  end

  # POST /media_ests
  # POST /media_ests.json
  def create
    @media_est = MediaEst.new(media_est_params)

    respond_to do |format|
      if @media_est.save
        format.html { redirect_to @media_est, notice: 'Media est was successfully created.' }
        format.json { render action: 'show', status: :created, location: @media_est }
      else
        format.html { render action: 'new' }
        format.json { render json: @media_est.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_ests/1
  # PATCH/PUT /media_ests/1.json
  def update
    respond_to do |format|
      if @media_est.update(media_est_params)
        format.html { redirect_to @media_est, notice: 'Media est was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @media_est.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_ests/1
  # DELETE /media_ests/1.json
  def destroy
    @media_est.destroy
    respond_to do |format|
      format.html { redirect_to media_ests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_est
      @media_est = MediaEst.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_est_params
      params.require(:media_est).permit(:primaryKey, :ME_NUM, :ME_CLIENT_NUM, :ME_CAMPAIGN, :ME_DATE, :ME_DESC, :ME_BUYER, :ME_GROSS, :ME_LABEL1, :ME_LABEL2, :ME_LABEL3, :ME_LABEL4, :ME_LABEL5, :ME_STATUS, :ME_COST, :ME_CLOSED, :ME_SHOW_DESC, :ME_DISCLAIMER, :ME_APPROVAL1, :ME_APPROVAL2, :ME_APPROVAL3, :ME_COMM, :ME_JOB_NUM, :ME_TASK, :ME_BRAND, :ME_INACTIVE, :ME_TYPE, :ME_APPROVED, :ME_APPROVED_BY, :ME_APPROVED_DATE, :ME_EDITED_BY, :ME_EDITED_WHEN)
    end
end

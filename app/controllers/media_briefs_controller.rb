class MediaBriefsController < ApplicationController
  before_action :set_media_brief, only: [:show, :edit, :update, :destroy]

  # GET /media_briefs
  # GET /media_briefs.json
  def index
    @media_briefs = MediaBrief.all
  end

  # GET /media_briefs/1
  # GET /media_briefs/1.json
  def show
  end

  # GET /media_briefs/new
  def new
    @media_brief = MediaBrief.new
  end

  # GET /media_briefs/1/edit
  def edit
  end

  # POST /media_briefs
  # POST /media_briefs.json
  def create
    @media_brief = MediaBrief.new(media_brief_params)

    respond_to do |format|
      if @media_brief.save
        format.html { redirect_to @media_brief, notice: 'Media brief was successfully created.' }
        format.json { render action: 'show', status: :created, location: @media_brief }
      else
        format.html { render action: 'new' }
        format.json { render json: @media_brief.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_briefs/1
  # PATCH/PUT /media_briefs/1.json
  def update
    respond_to do |format|
      if @media_brief.update(media_brief_params)
        format.html { redirect_to @media_brief, notice: 'Media brief was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @media_brief.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_briefs/1
  # DELETE /media_briefs/1.json
  def destroy
    @media_brief.destroy
    respond_to do |format|
      format.html { redirect_to media_briefs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_brief
      @media_brief = MediaBrief.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_brief_params
      params.require(:media_brief).permit(:primaryKey, :BR_CAMPAIGN, :BR_NAME, :BR_DESC, :BR_BUDGET_AMT, :BR_COST_AMT, :BR_CAMP_START, :BR_CAMP_END, :BR_SPOTS, :BR_RATINGS, :BR_COST, :BR_CPP, :BR_CPS, :BR_RF, :BR_CLIENT_NUM, :BR_DUE_DATE, :BR_OBJECTIVE, :BR_TARGET_AGE, :BR_TARGET_GENDER, :BR_TARGET_OCCUPATION, :BR_TARGET_LIFESTYLE, :BR_MEDIA_REC, :BR_MEDIA_SCHED, :BR_EXHIBITS, :BR_BUD_BCAST, :BR_BUD_CABLE, :BR_BUD_RADIO, :BR_BUD_NEWS, :BR_BUD_MAG, :BR_BUD_OUT, :BR_BUD_INTER, :BR_BUD_OTHER, :BR_ADDED_BY, :BR_AE, :BR_REP, :BR_STATUS, :BR_STATUS_NUM, :BR_EDITED_BY, :BR_EDITED_WHEN, :BR_APPROVED, :BR_APPROVED_BY, :BR_APPROVED_DATE)
    end
end

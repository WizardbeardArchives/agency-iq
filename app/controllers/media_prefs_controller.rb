class MediaPrefsController < ApplicationController
  before_action :set_media_pref, only: [:show, :edit, :update, :destroy]

  # GET /media_prefs
  # GET /media_prefs.json
  def index
    @media_prefs = MediaPref.all
  end

  # GET /media_prefs/1
  # GET /media_prefs/1.json
  def show
  end

  # GET /media_prefs/new
  def new
    @media_pref = MediaPref.new
  end

  # GET /media_prefs/1/edit
  def edit
  end

  # POST /media_prefs
  # POST /media_prefs.json
  def create
    @media_pref = MediaPref.new(media_pref_params)

    respond_to do |format|
      if @media_pref.save
        format.html { redirect_to @media_pref, notice: 'Media pref was successfully created.' }
        format.json { render action: 'show', status: :created, location: @media_pref }
      else
        format.html { render action: 'new' }
        format.json { render json: @media_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_prefs/1
  # PATCH/PUT /media_prefs/1.json
  def update
    respond_to do |format|
      if @media_pref.update(media_pref_params)
        format.html { redirect_to @media_pref, notice: 'Media pref was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @media_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_prefs/1
  # DELETE /media_prefs/1.json
  def destroy
    @media_pref.destroy
    respond_to do |format|
      format.html { redirect_to media_prefs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_pref
      @media_pref = MediaPref.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_pref_params
      params.require(:media_pref).permit(:primaryKey, :MPF_NUM, :MPF_PREFIX, :MPF_DISCLAIMER, :MPF_ORG, :MPF_ADDRESS1, :MPF_ADDRESS2, :MPF_ADDRESS3, :MPF_PHONE, :MPF_COMM, :MPF_TO1, :MPF_TO2, :MPF_TO3, :MPF_TO4, :MPF_TO5, :MPF_TO6, :MPF_FIELD1, :MPF_FIELD2, :MPF_FIELD3, :MPF_FIELD4, :MPF_FIELD5, :MPF_AUTO_NUM, :MPF_LOGO, :MPF_SHOW_CL, :MPF_RADIO_1Q, :MPF_RADIO_2Q, :MPF_RADIO_3Q, :MPF_RADIO_4Q, :MPF_TV_1Q, :MPF_TV_2Q, :MPF_TV_3Q, :MPF_TV_4Q, :MPF_CABLE_1Q, :MPF_CABLE_2Q, :MPF_CABLE_3Q, :MPF_CABLE_4Q, :MPF_NEWS_1Q, :MPF_NEWS_2Q, :MPF_NEWS_3Q, :MPF_NEWS_4Q, :MPF_MAG_1Q, :MPF_MAG_2Q, :MPF_MAG_3Q, :MPF_MAG_4Q, :MPF_OUT_1Q, :MPF_OUT_2Q, :MPF_OUT_3Q, :MPF_OUT_4Q, :MPF_INT_1Q, :MPF_INT_2Q, :MPF_INT_3Q, :MPF_INT_4Q, :MPF_OTHER_1Q, :MPF_OTHER_2Q, :MPF_OTHER_3Q, :MPF_OTHER_4Q, :MPF_KIND, :MPF_EDITED_BY, :MPF_EDITED_WHEN)
    end
end

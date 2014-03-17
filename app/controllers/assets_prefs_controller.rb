class AssetsPrefsController < ApplicationController
  before_action :set_assets_pref, only: [:show, :edit, :update, :destroy]

  # GET /assets_prefs
  # GET /assets_prefs.json
  def index
    @assets_prefs = AssetsPref.all
  end

  # GET /assets_prefs/1
  # GET /assets_prefs/1.json
  def show
  end

  # GET /assets_prefs/new
  def new
    @assets_pref = AssetsPref.new
  end

  # GET /assets_prefs/1/edit
  def edit
  end

  # POST /assets_prefs
  # POST /assets_prefs.json
  def create
    @assets_pref = AssetsPref.new(assets_pref_params)

    respond_to do |format|
      if @assets_pref.save
        format.html { redirect_to @assets_pref, notice: 'Assets pref was successfully created.' }
        format.json { render action: 'show', status: :created, location: @assets_pref }
      else
        format.html { render action: 'new' }
        format.json { render json: @assets_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assets_prefs/1
  # PATCH/PUT /assets_prefs/1.json
  def update
    respond_to do |format|
      if @assets_pref.update(assets_pref_params)
        format.html { redirect_to @assets_pref, notice: 'Assets pref was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @assets_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assets_prefs/1
  # DELETE /assets_prefs/1.json
  def destroy
    @assets_pref.destroy
    respond_to do |format|
      format.html { redirect_to assets_prefs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assets_pref
      @assets_pref = AssetsPref.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assets_pref_params
      params.require(:assets_pref).permit(:primaryKey, :ASP_CODE, :ASP_AUTO_FOLDER, :ASP_ART_SERVER, :ASP_IP, :ASP_FIELD1, :ASP_FIELD2, :ASP_FIELD3, :ASP_FIELD4, :ASP_FIELD5, :ASP_TRACK_USAGE, :ASP_ART_SERVER_W, :ASP_EDITED_BY, :ASP_EDITED_WHEN, :ASP_INCL_JNAME, :ASP_ORG_BY_CLIENT)
    end
end

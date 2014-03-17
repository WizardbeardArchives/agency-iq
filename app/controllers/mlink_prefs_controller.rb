class MlinkPrefsController < ApplicationController
  before_action :set_mlink_pref, only: [:show, :edit, :update, :destroy]

  # GET /mlink_prefs
  # GET /mlink_prefs.json
  def index
    @mlink_prefs = MlinkPref.all
  end

  # GET /mlink_prefs/1
  # GET /mlink_prefs/1.json
  def show
  end

  # GET /mlink_prefs/new
  def new
    @mlink_pref = MlinkPref.new
  end

  # GET /mlink_prefs/1/edit
  def edit
  end

  # POST /mlink_prefs
  # POST /mlink_prefs.json
  def create
    @mlink_pref = MlinkPref.new(mlink_pref_params)

    respond_to do |format|
      if @mlink_pref.save
        format.html { redirect_to @mlink_pref, notice: 'Mlink pref was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mlink_pref }
      else
        format.html { render action: 'new' }
        format.json { render json: @mlink_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mlink_prefs/1
  # PATCH/PUT /mlink_prefs/1.json
  def update
    respond_to do |format|
      if @mlink_pref.update(mlink_pref_params)
        format.html { redirect_to @mlink_pref, notice: 'Mlink pref was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mlink_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mlink_prefs/1
  # DELETE /mlink_prefs/1.json
  def destroy
    @mlink_pref.destroy
    respond_to do |format|
      format.html { redirect_to mlink_prefs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mlink_pref
      @mlink_pref = MlinkPref.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mlink_pref_params
      params.require(:mlink_pref).permit(:primaryKey, :MLINK_ENABLE_LOG, :MLINK_PATH, :MLINK_AUTO_IMPORT, :MLINK_IMPORT_EVERY, :MLINK_IMPORT_TIME, :MLINK_IMPORT_MINUTES, :MLINK_CLIENTS_PREF, :MLINK_AFTER_PREF, :MLINK_MOVE_PATH, :MLINK_SYSTEM, :MLINK_STATUS, :MLINK_LAST_IMPORT, :MLINK_COUNT_TODAY, :MLINK_COUNT_TOTAL, :MLINK_AMT, :MLINK_IMPORT_INTERVAL, :MLINK_DATE, :MLINK_VENDORS_PREF, :MLINK_BELL, :MLINK_NOTIFY, :MLINK_EMAIL_NAME, :MLINK_EMAIL_ADDRESS, :MLINK_TV_BILL_NET, :MLINK_PRINT_BILL_NET, :MLINK_BROAD_COMM, :MLINK_PRINT_COMM, :MLINK_EDITED_BY, :MLINK_EDITED_WHEN)
    end
end

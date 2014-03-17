class WebPrefsController < ApplicationController
  before_action :set_web_pref, only: [:show, :edit, :update, :destroy]

  # GET /web_prefs
  # GET /web_prefs.json
  def index
    @web_prefs = WebPref.all
  end

  # GET /web_prefs/1
  # GET /web_prefs/1.json
  def show
  end

  # GET /web_prefs/new
  def new
    @web_pref = WebPref.new
  end

  # GET /web_prefs/1/edit
  def edit
  end

  # POST /web_prefs
  # POST /web_prefs.json
  def create
    @web_pref = WebPref.new(web_pref_params)

    respond_to do |format|
      if @web_pref.save
        format.html { redirect_to @web_pref, notice: 'Web pref was successfully created.' }
        format.json { render action: 'show', status: :created, location: @web_pref }
      else
        format.html { render action: 'new' }
        format.json { render json: @web_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_prefs/1
  # PATCH/PUT /web_prefs/1.json
  def update
    respond_to do |format|
      if @web_pref.update(web_pref_params)
        format.html { redirect_to @web_pref, notice: 'Web pref was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @web_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_prefs/1
  # DELETE /web_prefs/1.json
  def destroy
    @web_pref.destroy
    respond_to do |format|
      format.html { redirect_to web_prefs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_pref
      @web_pref = WebPref.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_pref_params
      params.require(:web_pref).permit(:primaryKey, :WP_BELL_ON_HITS, :WP_CURRENT_EVENT, :WP_DISABLE_LOG, :WP_ALERT_PW, :WP_WEBMASTER, :WP_WEBMSTR_EMAIL, :WP_ALERT_LOGON, :WP_SMTP_SERVER, :WP_AUTO_START, :WP_ALERT_ID, :WP_DATE, :WP_USER, :GREETING, :DGL_NAME, :CGL_NAME, :KIND, :TASK_KIND, :TYPE, :JOB_NAME, :TASK_NAME, :WP_ALERT_ERROR, :EST_REVISION, :FINAL_ESTIMATE, :STATUS_DESC1, :STATUS_DESC2, :WP_REMOTE_ADMIN, :WP_REMOTE_ADMIN_IP, :LOOKUP6, :LOOKUP5, :LOOKUP4, :LOOKUP3, :LOOKUP2, :LOOKUP_JOBS, :WP_DATETIME, :HIT_DURATION, :QUERY_DURATION, :TRANSACTION_TYPE, :BYTES_RECEIVED, :BYTES_SENT, :HEADER_LIST, :WP_DISCONNECT, :WP_SHOW_DATE, :VER, :ALT_SOCKET, :MESSAGE_DATA, :POSTED, :WP_PORT_NUMBER, :WP_BACKUP, :WP_CLOSE_TIME, :WP_OPEN_TIME, :WP_FONT_OPEN, :WP_FONT_CLOSE, :WP_AUTO_ARCHIVE_LOG, :WP_LOG_IP_ERRORS, :WP_LAST_ARCHIVE, :WP_DISABLE_BAD_LOGIN, :WP_JS_SERVER, :CAL_DAY, :CAL_MONTH, :CAL_YEAR, :CAL_MODE, :WP_LOGO_URL, :WP_LOGO_LINK, :WP_AUTO_START_MY, :WP_EDITED_BY, :WP_EDITED_WHEN, :WP_BOXR_EMAIL, :WP_BOXR_USERNAME, :WP_BOXR_PW, :WP_BOXR_SERVER, :WP_SSL, :WP_SMTP_AUTH_ID, :WP_SMTP_AUTH_PW, :WP_SMTP_PORT, :WP_SMTP_SSL_TYPE)
    end
end

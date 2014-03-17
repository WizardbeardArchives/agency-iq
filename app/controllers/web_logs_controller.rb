class WebLogsController < ApplicationController
  before_action :set_web_log, only: [:show, :edit, :update, :destroy]

  # GET /web_logs
  # GET /web_logs.json
  def index
    @web_logs = WebLog.all
  end

  # GET /web_logs/1
  # GET /web_logs/1.json
  def show
  end

  # GET /web_logs/new
  def new
    @web_log = WebLog.new
  end

  # GET /web_logs/1/edit
  def edit
  end

  # POST /web_logs
  # POST /web_logs.json
  def create
    @web_log = WebLog.new(web_log_params)

    respond_to do |format|
      if @web_log.save
        format.html { redirect_to @web_log, notice: 'Web log was successfully created.' }
        format.json { render action: 'show', status: :created, location: @web_log }
      else
        format.html { render action: 'new' }
        format.json { render json: @web_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_logs/1
  # PATCH/PUT /web_logs/1.json
  def update
    respond_to do |format|
      if @web_log.update(web_log_params)
        format.html { redirect_to @web_log, notice: 'Web log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @web_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_logs/1
  # DELETE /web_logs/1.json
  def destroy
    @web_log.destroy
    respond_to do |format|
      format.html { redirect_to web_logs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_log
      @web_log = WebLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_log_params
      params.require(:web_log).permit(:primaryKey, :WLOG_DATETIME, :WLOG_USER, :WLOG_STATUS, :WLOG_EVENT, :WLOG_PAGE, :WLOG_IP, :WLOG_DATE, :WLOG_TIME, :WLOG_DAY, :WLOG_HOUR)
    end
end

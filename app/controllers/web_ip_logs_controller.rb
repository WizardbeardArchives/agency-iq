class WebIpLogsController < ApplicationController
  before_action :set_web_ip_log, only: [:show, :edit, :update, :destroy]

  # GET /web_ip_logs
  # GET /web_ip_logs.json
  def index
    @web_ip_logs = WebIpLog.all
  end

  # GET /web_ip_logs/1
  # GET /web_ip_logs/1.json
  def show
  end

  # GET /web_ip_logs/new
  def new
    @web_ip_log = WebIpLog.new
  end

  # GET /web_ip_logs/1/edit
  def edit
  end

  # POST /web_ip_logs
  # POST /web_ip_logs.json
  def create
    @web_ip_log = WebIpLog.new(web_ip_log_params)

    respond_to do |format|
      if @web_ip_log.save
        format.html { redirect_to @web_ip_log, notice: 'Web ip log was successfully created.' }
        format.json { render action: 'show', status: :created, location: @web_ip_log }
      else
        format.html { render action: 'new' }
        format.json { render json: @web_ip_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_ip_logs/1
  # PATCH/PUT /web_ip_logs/1.json
  def update
    respond_to do |format|
      if @web_ip_log.update(web_ip_log_params)
        format.html { redirect_to @web_ip_log, notice: 'Web ip log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @web_ip_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_ip_logs/1
  # DELETE /web_ip_logs/1.json
  def destroy
    @web_ip_log.destroy
    respond_to do |format|
      format.html { redirect_to web_ip_logs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_ip_log
      @web_ip_log = WebIpLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_ip_log_params
      params.require(:web_ip_log).permit(:primaryKey, :WIP_IP, :WIP_NAME, :WIP_DATE, :WIP_DATETIME)
    end
end

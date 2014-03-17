class MlinkLogsController < ApplicationController
  before_action :set_mlink_log, only: [:show, :edit, :update, :destroy]

  # GET /mlink_logs
  # GET /mlink_logs.json
  def index
    @mlink_logs = MlinkLog.all
  end

  # GET /mlink_logs/1
  # GET /mlink_logs/1.json
  def show
  end

  # GET /mlink_logs/new
  def new
    @mlink_log = MlinkLog.new
  end

  # GET /mlink_logs/1/edit
  def edit
  end

  # POST /mlink_logs
  # POST /mlink_logs.json
  def create
    @mlink_log = MlinkLog.new(mlink_log_params)

    respond_to do |format|
      if @mlink_log.save
        format.html { redirect_to @mlink_log, notice: 'Mlink log was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mlink_log }
      else
        format.html { render action: 'new' }
        format.json { render json: @mlink_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mlink_logs/1
  # PATCH/PUT /mlink_logs/1.json
  def update
    respond_to do |format|
      if @mlink_log.update(mlink_log_params)
        format.html { redirect_to @mlink_log, notice: 'Mlink log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mlink_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mlink_logs/1
  # DELETE /mlink_logs/1.json
  def destroy
    @mlink_log.destroy
    respond_to do |format|
      format.html { redirect_to mlink_logs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mlink_log
      @mlink_log = MlinkLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mlink_log_params
      params.require(:mlink_log).permit(:primaryKey, :MLOG_DATE, :MLOG_BUYID, :MLOG_STATUS, :MLOG_ADDED_BY)
    end
end

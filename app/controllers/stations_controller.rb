class StationsController < ApplicationController
  before_action :set_station, only: [:show, :edit, :update, :destroy]

  # GET /stations
  # GET /stations.json
  def index
    @stations = Station.all
  end

  # GET /stations/1
  # GET /stations/1.json
  def show
  end

  # GET /stations/new
  def new
    @station = Station.new
  end

  # GET /stations/1/edit
  def edit
  end

  # POST /stations
  # POST /stations.json
  def create
    @station = Station.new(station_params)

    respond_to do |format|
      if @station.save
        format.html { redirect_to @station, notice: 'Station was successfully created.' }
        format.json { render action: 'show', status: :created, location: @station }
      else
        format.html { render action: 'new' }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stations/1
  # PATCH/PUT /stations/1.json
  def update
    respond_to do |format|
      if @station.update(station_params)
        format.html { redirect_to @station, notice: 'Station was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stations/1
  # DELETE /stations/1.json
  def destroy
    @station.destroy
    respond_to do |format|
      format.html { redirect_to stations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station
      @station = Station.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def station_params
      params.require(:station).permit(:primaryKey, :PUB_CODE, :PUB_NAME, :PUB_REP, :PUB_PHONE, :PUB_ADDRESS1, :PUB_ADDRESS2, :PUB_ADDRESS3, :PUB_ADDRESS4, :PUB_NOTE, :PUB_FAX, :PUB_VENDOR_NUM, :PUB_COMM_PC, :PUB_TYPE, :PUB_REP_ADDRESS1, :PUB_REP_ADDRESS2, :PUB_REP_ADDRESS3, :PUB_REP_ADDRESS4, :PUB_REP_ADDRESS5, :PUB_ISSUE_DATE, :PUB_CLOSE_DATE, :PUB_CIRC, :PUB_MARKET, :PUB_ADDED_BY, :PUB_ADDED_WHEN, :PUB_EDITED_BY, :PUB_EDITED_WHEN)
    end
end

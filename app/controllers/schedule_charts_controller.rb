class ScheduleChartsController < ApplicationController
  before_action :set_schedule_chart, only: [:show, :edit, :update, :destroy]

  # GET /schedule_charts
  # GET /schedule_charts.json
  def index
    @schedule_charts = ScheduleChart.all
  end

  # GET /schedule_charts/1
  # GET /schedule_charts/1.json
  def show
  end

  # GET /schedule_charts/new
  def new
    @schedule_chart = ScheduleChart.new
  end

  # GET /schedule_charts/1/edit
  def edit
  end

  # POST /schedule_charts
  # POST /schedule_charts.json
  def create
    @schedule_chart = ScheduleChart.new(schedule_chart_params)

    respond_to do |format|
      if @schedule_chart.save
        format.html { redirect_to @schedule_chart, notice: 'Schedule chart was successfully created.' }
        format.json { render action: 'show', status: :created, location: @schedule_chart }
      else
        format.html { render action: 'new' }
        format.json { render json: @schedule_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_charts/1
  # PATCH/PUT /schedule_charts/1.json
  def update
    respond_to do |format|
      if @schedule_chart.update(schedule_chart_params)
        format.html { redirect_to @schedule_chart, notice: 'Schedule chart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @schedule_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_charts/1
  # DELETE /schedule_charts/1.json
  def destroy
    @schedule_chart.destroy
    respond_to do |format|
      format.html { redirect_to schedule_charts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_chart
      @schedule_chart = ScheduleChart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_chart_params
      params.require(:schedule_chart).permit(:primaryKey, :SC_J_NUM, :SC_1, :SC_2, :SC_3, :SC_4, :SC_5, :SC_6, :SC_7, :SC_8, :SC_9, :SC_10, :SC_11, :SC_12, :SC_CLIENT_NUM)
    end
end

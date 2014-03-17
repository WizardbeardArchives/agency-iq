class DataCountsController < ApplicationController
  before_action :set_data_count, only: [:show, :edit, :update, :destroy]

  # GET /data_counts
  # GET /data_counts.json
  def index
    @data_counts = DataCount.all
  end

  # GET /data_counts/1
  # GET /data_counts/1.json
  def show
  end

  # GET /data_counts/new
  def new
    @data_count = DataCount.new
  end

  # GET /data_counts/1/edit
  def edit
  end

  # POST /data_counts
  # POST /data_counts.json
  def create
    @data_count = DataCount.new(data_count_params)

    respond_to do |format|
      if @data_count.save
        format.html { redirect_to @data_count, notice: 'Data count was successfully created.' }
        format.json { render action: 'show', status: :created, location: @data_count }
      else
        format.html { render action: 'new' }
        format.json { render json: @data_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_counts/1
  # PATCH/PUT /data_counts/1.json
  def update
    respond_to do |format|
      if @data_count.update(data_count_params)
        format.html { redirect_to @data_count, notice: 'Data count was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @data_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_counts/1
  # DELETE /data_counts/1.json
  def destroy
    @data_count.destroy
    respond_to do |format|
      format.html { redirect_to data_counts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_count
      @data_count = DataCount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_count_params
      params.require(:data_count).permit(:primaryKey, :DATA_DATE, :DATA_AP, :DATA_AR, :DATA_JOBS, :DATA_CHECKS, :DATA_CLIENTS, :DATA_GL, :DATA_PAYMENTS, :DATA_PO, :DATA_VENDORS, :DATA_TOTAL)
    end
end

class CalsController < ApplicationController
  before_action :set_cal, only: [:show, :edit, :update, :destroy]

  # GET /cals
  # GET /cals.json
  def index
    @cals = Cal.all
  end

  # GET /cals/1
  # GET /cals/1.json
  def show
  end

  # GET /cals/new
  def new
    @cal = Cal.new
  end

  # GET /cals/1/edit
  def edit
  end

  # POST /cals
  # POST /cals.json
  def create
    @cal = Cal.new(cal_params)

    respond_to do |format|
      if @cal.save
        format.html { redirect_to @cal, notice: 'Cal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cal }
      else
        format.html { render action: 'new' }
        format.json { render json: @cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cals/1
  # PATCH/PUT /cals/1.json
  def update
    respond_to do |format|
      if @cal.update(cal_params)
        format.html { redirect_to @cal, notice: 'Cal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cals/1
  # DELETE /cals/1.json
  def destroy
    @cal.destroy
    respond_to do |format|
      format.html { redirect_to cals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cal
      @cal = Cal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cal_params
      params.require(:cal).permit(:primaryKey, :CL_MONTH, :CL_YEAR, :CL_DAY01, :CL_DAY02, :CL_DAY03, :CL_DAY04, :CL_DAY05, :CL_DAY06, :CL_DAY07, :CL_DAY08, :CL_DAY09, :CL_DAY10, :CL_DAY11, :CL_DAY12, :CL_DAY13, :CL_DAY14, :CL_DAY15, :CL_DAY16, :CL_DAY17, :CL_DAY18, :CL_DAY19, :CL_DAY20, :CL_DAY21, :CL_DAY22, :CL_DAY23, :CL_DAY24, :CL_DAY25, :CL_DAY26, :CL_DAY27, :CL_DAY28, :CL_DAY29, :CL_DAY30, :CL_DAY31, :CL_DAY32, :CL_DAY33, :CL_DAY34, :CL_DAY35, :CL_DAY36, :CL_DAY37, :CL_DAY38, :CL_DAY39, :CL_DAY40, :CL_DAY41, :CL_DAY42, :CL_CAL01, :CL_CAL02, :CL_CAL03, :CL_CAL04, :CL_CAL05, :CL_CAL06, :CL_CAL07, :CL_CAL08, :CL_CAL09, :CL_CAL10, :CL_CAL11, :CL_CAL12, :CL_CAL13, :CL_CAL14, :CL_CAL15, :CL_CAL16, :CL_CAL17, :CL_CAL18, :CL_CAL19, :CL_CAL20, :CL_CAL21, :CL_CAL22, :CL_CAL23, :CL_CAL24, :CL_CAL25, :CL_CAL26, :CL_CAL27, :CL_CAL28, :CL_CAL29, :CL_CAL30, :CL_CAL31, :CL_CAL32, :CL_CAL33, :CL_CAL34, :CL_CAL35, :CL_CAL36, :CL_CAL37, :CL_CAL38, :CL_CAL39, :CL_CAL40, :CL_CAL41, :CL_CAL42)
    end
end

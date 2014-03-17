class TimeImportsController < ApplicationController
  before_action :set_time_import, only: [:show, :edit, :update, :destroy]

  # GET /time_imports
  # GET /time_imports.json
  def index
    @time_imports = TimeImport.all
  end

  # GET /time_imports/1
  # GET /time_imports/1.json
  def show
  end

  # GET /time_imports/new
  def new
    @time_import = TimeImport.new
  end

  # GET /time_imports/1/edit
  def edit
  end

  # POST /time_imports
  # POST /time_imports.json
  def create
    @time_import = TimeImport.new(time_import_params)

    respond_to do |format|
      if @time_import.save
        format.html { redirect_to @time_import, notice: 'Time import was successfully created.' }
        format.json { render action: 'show', status: :created, location: @time_import }
      else
        format.html { render action: 'new' }
        format.json { render json: @time_import.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_imports/1
  # PATCH/PUT /time_imports/1.json
  def update
    respond_to do |format|
      if @time_import.update(time_import_params)
        format.html { redirect_to @time_import, notice: 'Time import was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @time_import.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_imports/1
  # DELETE /time_imports/1.json
  def destroy
    @time_import.destroy
    respond_to do |format|
      format.html { redirect_to time_imports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_import
      @time_import = TimeImport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_import_params
      params.require(:time_import).permit(:primaryKey, :TM_DATE, :TM_JOB_NUM, :TM_TASK, :TM_HOURS, :TM_STAFF, :TM_DESC, :TM_BAD, :TM_COST_RATE, :TM_BILL_RATE, :TM_CLIENT_NUM, :TM_BILLABLE, :TM_PERIOD, :TM_PALM_ID, :TM_PALM_CATEGORY, :TM_PALM_ATTRIBS, :TM_OT)
    end
end

class WorksheetsController < ApplicationController
  before_action :set_worksheet, only: [:show, :edit, :update, :destroy]

  # GET /worksheets
  # GET /worksheets.json
  def index
    @worksheets = Worksheet.all
  end

  # GET /worksheets/1
  # GET /worksheets/1.json
  def show
  end

  # GET /worksheets/new
  def new
    @worksheet = Worksheet.new
  end

  # GET /worksheets/1/edit
  def edit
  end

  # POST /worksheets
  # POST /worksheets.json
  def create
    @worksheet = Worksheet.new(worksheet_params)

    respond_to do |format|
      if @worksheet.save
        format.html { redirect_to @worksheet, notice: 'Worksheet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @worksheet }
      else
        format.html { render action: 'new' }
        format.json { render json: @worksheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worksheets/1
  # PATCH/PUT /worksheets/1.json
  def update
    respond_to do |format|
      if @worksheet.update(worksheet_params)
        format.html { redirect_to @worksheet, notice: 'Worksheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @worksheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worksheets/1
  # DELETE /worksheets/1.json
  def destroy
    @worksheet.destroy
    respond_to do |format|
      format.html { redirect_to worksheets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worksheet
      @worksheet = Worksheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worksheet_params
      params.require(:worksheet).permit(:primaryKey, :EST_KEY, :EST_LINE1, :EST_LINE2, :EST_LINE3, :EST_LINE4, :EST_AMT1, :EST_AMT2, :EST_AMT3, :EST_AMT4, :EST_RESOURCE1, :EST_RESOURCE2, :EST_RESOURCE3, :EST_RESOURCE4, :EST_RATE1, :EST_RATE2, :EST_RATE3, :EST_RATE4, :EST_HRS1, :EST_HRS2, :EST_HRS3, :EST_HRS4, :EST_JOB_NUM, :EST_COLUMN, :EST_TASK, :EST_MARKUP, :EST_REV, :EST_ADDED_BY, :EST_ADDED_WHEN, :EST_EDITED_BY, :EST_EDITED_WHEN)
    end
end

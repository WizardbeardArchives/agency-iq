class RecurArsController < ApplicationController
  before_action :set_recur_ar, only: [:show, :edit, :update, :destroy]

  # GET /recur_ars
  # GET /recur_ars.json
  def index
    @recur_ars = RecurAr.all
  end

  # GET /recur_ars/1
  # GET /recur_ars/1.json
  def show
  end

  # GET /recur_ars/new
  def new
    @recur_ar = RecurAr.new
  end

  # GET /recur_ars/1/edit
  def edit
  end

  # POST /recur_ars
  # POST /recur_ars.json
  def create
    @recur_ar = RecurAr.new(recur_ar_params)

    respond_to do |format|
      if @recur_ar.save
        format.html { redirect_to @recur_ar, notice: 'Recur ar was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recur_ar }
      else
        format.html { render action: 'new' }
        format.json { render json: @recur_ar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recur_ars/1
  # PATCH/PUT /recur_ars/1.json
  def update
    respond_to do |format|
      if @recur_ar.update(recur_ar_params)
        format.html { redirect_to @recur_ar, notice: 'Recur ar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recur_ar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recur_ars/1
  # DELETE /recur_ars/1.json
  def destroy
    @recur_ar.destroy
    respond_to do |format|
      format.html { redirect_to recur_ars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recur_ar
      @recur_ar = RecurAr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recur_ar_params
      params.require(:recur_ar).permit(:primaryKey, :RAR_CLIENT_NUM, :RAR_DATE, :RAR_AMT1, :RAR_DESC, :RAR_DGL, :RAR_ADDED_BY, :RAR_INV_NUM, :RAR_PERIOD, :RAR_JOB_NUM, :RAR_INV_DATE, :RAR_AX_TASK1, :RAR_AX_NAME1, :RAR_AX_HOURS1, :RAR_AX_AMT1, :RAR_AX_TASK2, :RAR_AX_NAME2, :RAR_AX_HOURS2, :RAR_AX_AMT2, :RAR_AX_TASK3, :RAR_AX_NAME3, :RAR_AX_HOURS3, :RAR_AX_AMT3, :RAR_AX_TASK4, :RAR_AX_NAME4, :RAR_AX_HOURS4, :RAR_AX_AMT4, :RAR_AX_TASK5, :RAR_AX_NAME5, :RAR_AX_HOURS5, :RAR_AX_AMT5, :RAR_AX_TASK6, :RAR_AX_NAME6, :RAR_AX_HOURS6, :RAR_AX_AMT6, :RAR_AX_CGL1, :RAR_AX_CGL2, :RAR_AX_CGL3, :RAR_AX_CGL4, :RAR_AX_CGL5, :RAR_AX_CGL6, :RAR_OPTION1, :RAR_OPTION2, :RAR_OPTION3, :RAR_ADDED_WHEN, :RAR_EDITED_BY, :RAR_EDITED_WHEN)
    end
end

class CostsController < ApplicationController
  before_action :set_cost, only: [:show, :edit, :update, :destroy]

  # GET /costs
  # GET /costs.json
  def index
    @costs = Cost.all
  end

  # GET /costs/1
  # GET /costs/1.json
  def show
  end

  # GET /costs/new
  def new
    @cost = Cost.new
  end

  # GET /costs/1/edit
  def edit
  end

  # POST /costs
  # POST /costs.json
  def create
    @cost = Cost.new(cost_params)

    respond_to do |format|
      if @cost.save
        format.html { redirect_to @cost, notice: 'Cost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cost }
      else
        format.html { render action: 'new' }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costs/1
  # PATCH/PUT /costs/1.json
  def update
    respond_to do |format|
      if @cost.update(cost_params)
        format.html { redirect_to @cost, notice: 'Cost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costs/1
  # DELETE /costs/1.json
  def destroy
    @cost.destroy
    respond_to do |format|
      format.html { redirect_to costs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost
      @cost = Cost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cost_params
      params.require(:cost).permit(:primaryKey, :COST_NUM, :COST_JOB_NUM, :COST_TASK, :COST_NOTE, :COST_NET_AMT, :COST_GROSS_AMT, :COST_HOURS, :COST_KIND, :COST_DATE, :COST_BILL_RATE, :COST_COST_RATE, :COST_PO_NUM, :COST_BILLABLE, :COST_VENDOR, :COST_PERIOD, :COST_CLIENT_NUM, :COST_DGL, :COST_POSTED, :COST_KEY, :COST_FINISHED, :COST_MARKUP, :COST_BILL_AMT, :COST_AR_DATE, :COST_AR_NUM, :COST_BILLED_AMT, :COST_STATUS, :COST_AR_PAID, :COST_CK_NUM, :COST_REF, :COST_HOURS_BILLED, :COST_OT, :COST_POX_LINE, :COST_GL, :COST_J_PROD_STATUS, :COST_J_BILL_STATUS, :COST_PC, :COST_QTY, :COST_DAYS, :COST_COST_EA, :COST_SIZE, :COST_ADDED_BY, :COST_GROSS_EA, :COST_ADV_CK, :COST_EXPORTED, :COST_WIP_EXPORTED, :COST_WIP_REV_EXPORTED, :COST_SALES_TAX, :COST_APPROVED_BY, :COST_APPROVED_DATE, :COST_REIMBURSE_AP_NUM, :COST_EXP_ADDED_BY, :COST_EDITED_BY, :COST_EDITED_WHEN, :COST_POSTED_BY, :COST_POSTED_WHEN)
    end
end

class ArsController < ApplicationController
  before_action :set_ar, only: [:show, :edit, :update, :destroy]

  # GET /ars
  # GET /ars.json
  def index
    @ars = Ar.all
  end

  # GET /ars/1
  # GET /ars/1.json
  def show
  end

  # GET /ars/new
  def new
    @ar = Ar.new
  end

  # GET /ars/1/edit
  def edit
  end

  # POST /ars
  # POST /ars.json
  def create
    @ar = Ar.new(ar_params)

    respond_to do |format|
      if @ar.save
        format.html { redirect_to @ar, notice: 'Ar was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ar }
      else
        format.html { render action: 'new' }
        format.json { render json: @ar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ars/1
  # PATCH/PUT /ars/1.json
  def update
    respond_to do |format|
      if @ar.update(ar_params)
        format.html { redirect_to @ar, notice: 'Ar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ars/1
  # DELETE /ars/1.json
  def destroy
    @ar.destroy
    respond_to do |format|
      format.html { redirect_to ars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar
      @ar = Ar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_params
      params.require(:ar).permit(:primaryKey, :AR_NUM, :AR_JOB_NUM, :AR_CLIENT_NUM, :AR_DATE, :AR_POSTED, :AR_AE, :AR_TERMS, :AR_PERIOD, :AR_PO, :AR_DESC, :AR_DUE_DATE, :AR_COUNT, :AR_DISC_DUE, :AR_DISC_AMT, :AR_AMT_PAID, :AR_TOTAL, :AR_DAYS, :AR_TAX_AMT1, :AR_TAX_AMT2, :AR_TAXABLE1, :AR_TAXABLE2, :AR_TAX_RATE1, :AR_TAX_RATE2, :AR_TAX_CGL1, :AR_TAX_CGL2, :AR_STATUS, :AR_OPEN, :AR_JUMP, :AR_DGL, :AR_CURR, :AR_30, :AR_60, :AR_90, :AR_120, :AR_ADDED_BY, :AR_ADDED_WHEN, :AR_CLIENT_CONTACT, :AR_AGENCY_CONTACT, :AR_SHOW_SPECS, :AR_RETAINR_NOTE, :AR_RETAINER_AMT, :AR_RETAINER_GL, :AR_BILLING_TYPE, :AR_COMM_AMT, :AR_COMM_GL, :AR_COMM_DESC, :AR_MISC_AMT1, :AR_MISC_GL1, :AR_MISC_DESC1, :AR_MISC_AMT2, :AR_MISC_GL2, :AR_MISC_DESC2, :AR_ADDRESS1, :AR_ADDRESS2, :AR_ADDRESS3, :AR_ADDRESS4, :AR_ADDRESS5, :AR_TO1, :AR_TO2, :AR_TO3, :AR_TO4, :AR_TO5, :AR_ADDRESS6, :AR_ZERO_AS, :AR_FINANCE_CHG, :AR_FINANCE_AMT, :AR_FINANCE_CGL, :AR_ROLL_UP, :AR_SHOW_TOTALS, :AR_ADV_PMT, :AR_ADV_PMT_GL, :AR_CHARGE_NUM, :AR_PRINT_EST, :AR_SHOW_HOURS, :AR_UNPAID, :AR_KIND, :AR_KEY, :AR_SHIP_ADDRESS1, :AR_SHIP_ADDRESS2, :AR_SHIP_ADDRESS3, :AR_SHIP_ADDRESS4, :AR_SHIP_ADDRESS5, :AR_SHIP_ADDRESS6, :AR_PC, :AR_APPROVED, :AR_APPROVED_BY, :AR_APPROVED_DATE, :AR_APPROVAL1, :AR_APPROVAL2, :AR_APPROVAL3, :AR_RETURN_DATE, :AR_BILL_INSTRUCTIONS, :AR_EXPORTED, :AR_PMT_STATUS, :AR_PMT_STATUS_NOTE, :AR_PMT_NEXT_DATE, :AR_PMT_NEXT_ACTION, :AR_PMT_NEXT_WHO, :AR_PMT_NEXT_NOTE, :AR_PMT_NEXT_NUM, :AR_BIZDEV_AE, :AR_COMMISSIONABLE_AMT, :AR_COMM_RATE_AE, :AR_COMM_RATE_BIZ, :AR_DATE_PAID, :AR_EDITED_BY, :AR_EDITED_WHEN, :AR_POSTED_BY, :AR_POSTED_WHEN, :AR_TERMS1, :AR_TERMS2, :AR_TERMS3, :AR_TAX_AREA, :AR_SHIP_ORG)
    end
end

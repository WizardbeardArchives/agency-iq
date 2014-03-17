class ApsController < ApplicationController
  before_action :set_ap, only: [:show, :edit, :update, :destroy]

  # GET /aps
  # GET /aps.json
  def index
    @aps = Ap.all
  end

  # GET /aps/1
  # GET /aps/1.json
  def show
  end

  # GET /aps/new
  def new
    @ap = Ap.new
  end

  # GET /aps/1/edit
  def edit
  end

  # POST /aps
  # POST /aps.json
  def create
    @ap = Ap.new(ap_params)

    respond_to do |format|
      if @ap.save
        format.html { redirect_to @ap, notice: 'Ap was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ap }
      else
        format.html { render action: 'new' }
        format.json { render json: @ap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aps/1
  # PATCH/PUT /aps/1.json
  def update
    respond_to do |format|
      if @ap.update(ap_params)
        format.html { redirect_to @ap, notice: 'Ap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aps/1
  # DELETE /aps/1.json
  def destroy
    @ap.destroy
    respond_to do |format|
      format.html { redirect_to aps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ap
      @ap = Ap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ap_params
      params.require(:ap).permit(:primaryKey, :AP_NUM, :AP_VENDOR_NUM, :AP_DATE, :AP_KEY, :AP_DESC, :AP_CGL, :AP_NET_AMT, :AP_COMM_NET, :AP_MARKUP_PC, :AP_TAX_AMT, :AP_GROSS_AMT, :AP_POSTED, :AP_TOTAL_AMT, :AP_DISC_DATE, :AP_JUMPSTART, :AP_ADDED_BY, :AP_ADDED_WHEN, :AP_VOUCHER, :AP_TERMS1, :AP_TERMS2, :AP_TERMS3, :AP_PAY_DATE, :AP_PERIOD, :AP_CURRENT, :AP_30, :AP_60, :AP_90, :AP_AUTO_PAY, :AP_GST_GL, :AP_GST1, :AP_GST2, :AP_AMT_PAID, :AP_CLIENT_PAID, :AP_CLOSE_PO, :AP_UNPAID, :AP_KIND, :AP_DISC_TAKEN, :AP_EXPORTED, :AP_APPROVED, :AP_APPROVED_BY, :AP_APPROVED_DATE, :AP_EDITED_BY, :AP_EDITED_WHEN, :AP_POSTED_BY, :AP_POSTED_WHEN, :AP_PAID_CC, :AP_DATE_PAID, :AP_PAID_CC_INV_NUM, :AP_PAID_ONLINE)
    end
end

class RfqsController < ApplicationController
  before_action :set_rfq, only: [:show, :edit, :update, :destroy]

  # GET /rfqs
  # GET /rfqs.json
  def index
    @rfqs = Rfq.all
  end

  # GET /rfqs/1
  # GET /rfqs/1.json
  def show
  end

  # GET /rfqs/new
  def new
    @rfq = Rfq.new
  end

  # GET /rfqs/1/edit
  def edit
  end

  # POST /rfqs
  # POST /rfqs.json
  def create
    @rfq = Rfq.new(rfq_params)

    respond_to do |format|
      if @rfq.save
        format.html { redirect_to @rfq, notice: 'Rfq was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rfq }
      else
        format.html { render action: 'new' }
        format.json { render json: @rfq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfqs/1
  # PATCH/PUT /rfqs/1.json
  def update
    respond_to do |format|
      if @rfq.update(rfq_params)
        format.html { redirect_to @rfq, notice: 'Rfq was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rfq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfqs/1
  # DELETE /rfqs/1.json
  def destroy
    @rfq.destroy
    respond_to do |format|
      format.html { redirect_to rfqs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfq
      @rfq = Rfq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rfq_params
      params.require(:rfq).permit(:primaryKey, :RFQ_NUM, :RFQ_JOB_NUM, :RFQ_TASK, :RFQ_VENDOR_NUM, :RFQ_DATE, :RFQ_PROD_CONTACT, :RFQ_NAME, :RFQ_DESC, :RFQ_QTY, :RFQ_CLIENT_NUM, :RFQ_CLIENT_CONTACT, :RFQ_CLIENT_ADDR1, :RFQ_CLIENT_ADDR2, :RFQ_CLIENT_ADDR3, :RFQ_CLIENT_ADDR4, :RFQ_CLIENT_ADDR5, :RFQ_CLIENT_ADDR6, :RFQ_PREP, :RFQ_KITTING, :RFQ_SHIPPING, :RFQ_CLIENT_NOTES, :RFQ_TERMS, :RFQ_APPROVED, :RFQ_CLIENT_OK, :RFQ_CLIENT_OK_DATE, :RFQ_CLIENT_OK_BY, :RFQ_TOTAL_COST, :RFQ_TOTAL_GROSS, :RFQ_SPECIAL_INSTR, :RFQ_DEL_INSTR, :RFQ_AUTH, :RFQ_STATUS, :RFQ_ADDED_BY, :RFQ_QUOTE_NEEDED, :RFQ_DEL_DATE, :RFQ_PROD_CONTACT_EMAIL, :RFQ_TAXABLE1, :RFQ_TAXABLE2, :RFQ_PROD_CONTACT_PH)
    end
end

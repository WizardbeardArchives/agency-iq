class ClavenSalesController < ApplicationController
  before_action :set_claven_sale, only: [:show, :edit, :update, :destroy]

  # GET /claven_sales
  # GET /claven_sales.json
  def index
    @claven_sales = ClavenSale.all
  end

  # GET /claven_sales/1
  # GET /claven_sales/1.json
  def show
  end

  # GET /claven_sales/new
  def new
    @claven_sale = ClavenSale.new
  end

  # GET /claven_sales/1/edit
  def edit
  end

  # POST /claven_sales
  # POST /claven_sales.json
  def create
    @claven_sale = ClavenSale.new(claven_sale_params)

    respond_to do |format|
      if @claven_sale.save
        format.html { redirect_to @claven_sale, notice: 'Claven sale was successfully created.' }
        format.json { render action: 'show', status: :created, location: @claven_sale }
      else
        format.html { render action: 'new' }
        format.json { render json: @claven_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /claven_sales/1
  # PATCH/PUT /claven_sales/1.json
  def update
    respond_to do |format|
      if @claven_sale.update(claven_sale_params)
        format.html { redirect_to @claven_sale, notice: 'Claven sale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @claven_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /claven_sales/1
  # DELETE /claven_sales/1.json
  def destroy
    @claven_sale.destroy
    respond_to do |format|
      format.html { redirect_to claven_sales_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_claven_sale
      @claven_sale = ClavenSale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def claven_sale_params
      params.require(:claven_sale).permit(:S_NUM, :S_PR_JOB_NUM, :S_PR_TASK, :S_CLIENT, :S_HOW_PAID, :S_TERMS, :S_INVOICE_DATE, :S_SHIP_ORG, :S_PRICE, :S_PRODUCT_NAME, :S_TS_CREDIT_AMT, :S_DISC_DESC, :S_ADDL_QTY, :S_ADDL_USER_AMT, :S_OPTIONS_DESC, :S_AMT_OPTIONS, :S_TAX_RATE, :S_SUPPORT_AMT, :S_SHIP_AMT, :S_INVOICE_TOTAL, :S_DISCOUNT, :S_SALES_TAX)
    end
end

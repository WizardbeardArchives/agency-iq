class RfqSkusController < ApplicationController
  before_action :set_rfq_sku, only: [:show, :edit, :update, :destroy]

  # GET /rfq_skus
  # GET /rfq_skus.json
  def index
    @rfq_skus = RfqSku.all
  end

  # GET /rfq_skus/1
  # GET /rfq_skus/1.json
  def show
  end

  # GET /rfq_skus/new
  def new
    @rfq_sku = RfqSku.new
  end

  # GET /rfq_skus/1/edit
  def edit
  end

  # POST /rfq_skus
  # POST /rfq_skus.json
  def create
    @rfq_sku = RfqSku.new(rfq_sku_params)

    respond_to do |format|
      if @rfq_sku.save
        format.html { redirect_to @rfq_sku, notice: 'Rfq sku was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rfq_sku }
      else
        format.html { render action: 'new' }
        format.json { render json: @rfq_sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfq_skus/1
  # PATCH/PUT /rfq_skus/1.json
  def update
    respond_to do |format|
      if @rfq_sku.update(rfq_sku_params)
        format.html { redirect_to @rfq_sku, notice: 'Rfq sku was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rfq_sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfq_skus/1
  # DELETE /rfq_skus/1.json
  def destroy
    @rfq_sku.destroy
    respond_to do |format|
      format.html { redirect_to rfq_skus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfq_sku
      @rfq_sku = RfqSku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rfq_sku_params
      params.require(:rfq_sku).permit(:primaryKey, :RFQSKU_PART_NUM, :RFQSKU_NAME, :RFQSKU_DESC, :RFQSKU_TYPE, :RFQSKU_MARKUP, :RFQSKU_UNIT_COST, :RFQSKU_VENDOR_NUM, :RFQSKU_TASK, :RFQSKU_JOB_TYPE)
    end
end

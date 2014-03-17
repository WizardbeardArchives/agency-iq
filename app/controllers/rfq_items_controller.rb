class RfqItemsController < ApplicationController
  before_action :set_rfq_item, only: [:show, :edit, :update, :destroy]

  # GET /rfq_items
  # GET /rfq_items.json
  def index
    @rfq_items = RfqItem.all
  end

  # GET /rfq_items/1
  # GET /rfq_items/1.json
  def show
  end

  # GET /rfq_items/new
  def new
    @rfq_item = RfqItem.new
  end

  # GET /rfq_items/1/edit
  def edit
  end

  # POST /rfq_items
  # POST /rfq_items.json
  def create
    @rfq_item = RfqItem.new(rfq_item_params)

    respond_to do |format|
      if @rfq_item.save
        format.html { redirect_to @rfq_item, notice: 'Rfq item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rfq_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @rfq_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfq_items/1
  # PATCH/PUT /rfq_items/1.json
  def update
    respond_to do |format|
      if @rfq_item.update(rfq_item_params)
        format.html { redirect_to @rfq_item, notice: 'Rfq item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rfq_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfq_items/1
  # DELETE /rfq_items/1.json
  def destroy
    @rfq_item.destroy
    respond_to do |format|
      format.html { redirect_to rfq_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfq_item
      @rfq_item = RfqItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rfq_item_params
      params.require(:rfq_item).permit(:primaryKey, :RFQX_LINE_NUMBER, :RFQX_NUM, :RFQX_VENDOR2, :RFQX_JOB_NUM, :RFQX_TASK, :RFQX_NAME, :RFQX_DESC2, :RFQX_QTY, :RFQX_UNIT_COST, :RFQX_COST, :RFQX_GROSS, :RFQX_MARKUP, :RFQX_PO_NUM, :RFQX_TAXABLE1, :RFQX_TAXABLE2, :RFQX_INCLUDE, :RFQX_TYPE)
    end
end

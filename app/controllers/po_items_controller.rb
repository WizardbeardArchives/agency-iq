class PoItemsController < ApplicationController
  before_action :set_po_item, only: [:show, :edit, :update, :destroy]

  # GET /po_items
  # GET /po_items.json
  def index
    @po_items = PoItem.all
  end

  # GET /po_items/1
  # GET /po_items/1.json
  def show
  end

  # GET /po_items/new
  def new
    @po_item = PoItem.new
  end

  # GET /po_items/1/edit
  def edit
  end

  # POST /po_items
  # POST /po_items.json
  def create
    @po_item = PoItem.new(po_item_params)

    respond_to do |format|
      if @po_item.save
        format.html { redirect_to @po_item, notice: 'Po item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @po_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @po_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /po_items/1
  # PATCH/PUT /po_items/1.json
  def update
    respond_to do |format|
      if @po_item.update(po_item_params)
        format.html { redirect_to @po_item, notice: 'Po item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @po_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /po_items/1
  # DELETE /po_items/1.json
  def destroy
    @po_item.destroy
    respond_to do |format|
      format.html { redirect_to po_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_po_item
      @po_item = PoItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def po_item_params
      params.require(:po_item).permit(:primaryKey, :POX_LINE_NUMBER, :POX_JOB_NUM, :POX_TASK, :POX_DESC, :POX_PROGRAM, :POX_QTY, :POX_COST_EACH, :POX_COST, :POX_MARKUP, :POX_GROSS, :POX_COST_PAID, :POX_GROSS_PAID, :POX_PO_NUM, :POX_BILLABLE, :POX_UNIT, :POX_NAME, :POX_KEY, :POX_BUYDETID, :POX_DUE_DATE, :POX_DUE_DATE2, :POX_ISSUE_DATE, :POX_REVISION, :POX_AP_OK, :POX_AD_SIZE, :POX_AD_NAME, :POX_AR_NUM, :POX_PUB, :POX_CLIENT_NUM, :POX_BILL_NET, :POX_TYPE, :POX_RATING, :POX_CPP, :POX_CPM, :POX_MAKEGOOD, :POX_AR_AMT, :POX_COST_NUM, :POX_BILL_DATE, :POX_SALES_TAX, :POX_ISSUE_DATE2, :POX_TRADE, :POX_RUN_DATE, :POX_ADDED_BY, :POX_ADDED_WHEN, :POX_EDITED_BY, :POX_EDITED_WHEN, :POX_TAXABLE1, :POX_TAXABLE2)
    end
end

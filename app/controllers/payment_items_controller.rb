class PaymentItemsController < ApplicationController
  before_action :set_payment_item, only: [:show, :edit, :update, :destroy]

  # GET /payment_items
  # GET /payment_items.json
  def index
    @payment_items = PaymentItem.all
  end

  # GET /payment_items/1
  # GET /payment_items/1.json
  def show
  end

  # GET /payment_items/new
  def new
    @payment_item = PaymentItem.new
  end

  # GET /payment_items/1/edit
  def edit
  end

  # POST /payment_items
  # POST /payment_items.json
  def create
    @payment_item = PaymentItem.new(payment_item_params)

    respond_to do |format|
      if @payment_item.save
        format.html { redirect_to @payment_item, notice: 'Payment item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @payment_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @payment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_items/1
  # PATCH/PUT /payment_items/1.json
  def update
    respond_to do |format|
      if @payment_item.update(payment_item_params)
        format.html { redirect_to @payment_item, notice: 'Payment item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @payment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_items/1
  # DELETE /payment_items/1.json
  def destroy
    @payment_item.destroy
    respond_to do |format|
      format.html { redirect_to payment_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_item
      @payment_item = PaymentItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_item_params
      params.require(:payment_item).permit(:primaryKey, :PX_AR_NUM, :PX_AMT, :PX_CGL, :PX_POSTED, :PX_PERIOD, :PX_CHECK_NUM, :PX_CLIENT_NUM, :PX_DISC_AMT, :PX_DISC_GL, :PX_ADDED_BY, :PX_ADDED_WHEN, :PX_EDITED_BY, :PX_EDITED_WHEN)
    end
end

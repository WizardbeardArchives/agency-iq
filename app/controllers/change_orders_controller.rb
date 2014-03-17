class ChangeOrdersController < ApplicationController
  before_action :set_change_order, only: [:show, :edit, :update, :destroy]

  # GET /change_orders
  # GET /change_orders.json
  def index
    @change_orders = ChangeOrder.all
  end

  # GET /change_orders/1
  # GET /change_orders/1.json
  def show
  end

  # GET /change_orders/new
  def new
    @change_order = ChangeOrder.new
  end

  # GET /change_orders/1/edit
  def edit
  end

  # POST /change_orders
  # POST /change_orders.json
  def create
    @change_order = ChangeOrder.new(change_order_params)

    respond_to do |format|
      if @change_order.save
        format.html { redirect_to @change_order, notice: 'Change order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @change_order }
      else
        format.html { render action: 'new' }
        format.json { render json: @change_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_orders/1
  # PATCH/PUT /change_orders/1.json
  def update
    respond_to do |format|
      if @change_order.update(change_order_params)
        format.html { redirect_to @change_order, notice: 'Change order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @change_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_orders/1
  # DELETE /change_orders/1.json
  def destroy
    @change_order.destroy
    respond_to do |format|
      format.html { redirect_to change_orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_order
      @change_order = ChangeOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def change_order_params
      params.require(:change_order).permit(:primaryKey, :CHANGE_JOB_NUM, :CHANGE_TASK1, :CHANGE_NUM, :CHANGE_WHO, :CHANGE_DATE, :CHANGE_DESC, :CHANGE_OK, :CHANGE_NOTE, :CHANGE_AMT1, :CHANGE_TYPE, :CHANGE_TASK2, :CHANGE_TASK3, :CHANGE_TASK4, :CHANGE_AMT2, :CHANGE_AMT3, :CHANGE_AMT4, :CHANGE_TOTAL, :CHANGE_TASK5, :CHANGE_TASK6, :CHANGE_AMT5, :CHANGE_AMT6, :CHANGE_OTHER, :CHANGE_NAME, :CHANGE_BAMT1, :CHANGE_BAMT2, :CHANGE_BAMT3, :CHANGE_BAMT4, :CHANGE_BAMT5, :CHANGE_BAMT6, :CHANGE_SALES_TAX1, :CHANGE_SALES_TAX2, :CHANGE_ROLLUP1, :CHANGE_ROLLUP2, :CHANGE_ROLLUP3, :CHANGE_ROLLUP4, :CHANGE_ROLLUP5, :CHANGE_ROLLUP6, :CHANGE_HOURS1, :CHANGE_HOURS2, :CHANGE_HOURS3, :CHANGE_HOURS4, :CHANGE_HOURS5, :CHANGE_HOURS6, :CHANGE_ROLL_UP, :CHANGE_STATUS, :CHANGE_APPROVE, :CHANGE_MAIL_TO, :CHANGE_SEND_PDF, :CHANGE_APPROVED_BY, :CHANGE_APPROVED_DATE, :CHANGE_APPROVED, :CHANGE_EDITED_BY, :CHANGE_EDITED_WHEN, :CHANGE_ADDED_BY, :CHANGE_ADDED_WHEN)
    end
end

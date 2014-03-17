class WorkOrdersController < ApplicationController
  before_action :set_work_order, only: [:show, :edit, :update, :destroy]

  # GET /work_orders
  # GET /work_orders.json
  def index
    @work_orders = WorkOrder.all
  end

  # GET /work_orders/1
  # GET /work_orders/1.json
  def show
  end

  # GET /work_orders/new
  def new
    @work_order = WorkOrder.new
  end

  # GET /work_orders/1/edit
  def edit
  end

  # POST /work_orders
  # POST /work_orders.json
  def create
    @work_order = WorkOrder.new(work_order_params)

    respond_to do |format|
      if @work_order.save
        format.html { redirect_to @work_order, notice: 'Work order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @work_order }
      else
        format.html { render action: 'new' }
        format.json { render json: @work_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_orders/1
  # PATCH/PUT /work_orders/1.json
  def update
    respond_to do |format|
      if @work_order.update(work_order_params)
        format.html { redirect_to @work_order, notice: 'Work order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @work_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_orders/1
  # DELETE /work_orders/1.json
  def destroy
    @work_order.destroy
    respond_to do |format|
      format.html { redirect_to work_orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_order
      @work_order = WorkOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_order_params
      params.require(:work_order).permit(:primaryKey, :WO_JOB_NUM, :WO_CLIENT_NUM, :WO_1_LABEL, :WO_2_LABEL, :WO_3_LABEL, :WO_4_LABEL, :WO_5_LABEL, :WO_6_LABEL, :WO_7_LABEL, :WO_8_LABEL, :WO_9_LABEL, :WO_10_LABEL, :WO_11_LABEL, :WO_12_LABEL, :WO_13_LABEL, :WO_14_LABEL, :WO_15_LABEL, :WO_1, :WO_2, :WO_3, :WO_4, :WO_5, :WO_6, :WO_7, :WO_8, :WO_9, :WO_10, :WO_11, :WO_12, :WO_13, :WO_14, :WO_15, :WO_ADDED_BY, :WO_REV_BY, :WO_OK, :WO_OK_BY, :WO_OK_DATE, :WO_APPROVED, :WO_APPROVED_DATE, :WO_APPROVED_BY, :WO_ADR_NAME)
    end
end

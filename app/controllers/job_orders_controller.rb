class JobOrdersController < ApplicationController
  before_action :set_job_order, only: [:show, :edit, :update, :destroy]

  # GET /job_orders
  # GET /job_orders.json
  def index
    @job_orders = JobOrder.all
  end

  # GET /job_orders/1
  # GET /job_orders/1.json
  def show
  end

  # GET /job_orders/new
  def new
    @job_order = JobOrder.new
  end

  # GET /job_orders/1/edit
  def edit
  end

  # POST /job_orders
  # POST /job_orders.json
  def create
    @job_order = JobOrder.new(job_order_params)

    respond_to do |format|
      if @job_order.save
        format.html { redirect_to @job_order, notice: 'Job order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job_order }
      else
        format.html { render action: 'new' }
        format.json { render json: @job_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_orders/1
  # PATCH/PUT /job_orders/1.json
  def update
    respond_to do |format|
      if @job_order.update(job_order_params)
        format.html { redirect_to @job_order, notice: 'Job order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_orders/1
  # DELETE /job_orders/1.json
  def destroy
    @job_order.destroy
    respond_to do |format|
      format.html { redirect_to job_orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_order
      @job_order = JobOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_order_params
      params.require(:job_order).permit(:primaryKey, :CB_JOB_NUM, :CB_CLIENT_NUM, :CB_1_LABEL, :CB_1, :CB_2_LABEL, :CB_2, :CB_3_LABEL, :CB_3, :CB_4_LABEL, :CB_4, :CB_5_LABEL, :CB_5, :CB_6_LABEL, :CB_6, :CB_7_LABEL, :CB_7, :CB_8_LABEL, :CB_8, :CB_REV, :CB_9_LABEL, :CB_9, :CB_10_LABEL, :CB_10, :CB_11_LABEL, :CB_11, :CB_12_LABEL, :CB_12, :CB_13_LABEL, :CB_13, :CB_14_LABEL, :CB_14, :CB_15_LABEL, :CB_15, :CB_ADDED_BY, :CB_REV_BY, :CB_REV_DATE, :CB_OK, :CB_OK_BY, :CB_OK_DATE, :CB_APPROVED, :CB_APPROVED_DATE, :CB_APPROVED_BY, :CB_EDITED_BY, :CB_EDITED_WHEN)
    end
end

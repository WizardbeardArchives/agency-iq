class BillingInfosController < ApplicationController
  before_action :set_billing_info, only: [:show, :edit, :update, :destroy]

  # GET /billing_infos
  # GET /billing_infos.json
  def index
    @billing_infos = BillingInfo.all
  end

  # GET /billing_infos/1
  # GET /billing_infos/1.json
  def show
  end

  # GET /billing_infos/new
  def new
    @billing_info = BillingInfo.new
  end

  # GET /billing_infos/1/edit
  def edit
  end

  # POST /billing_infos
  # POST /billing_infos.json
  def create
    @billing_info = BillingInfo.new(billing_info_params)

    respond_to do |format|
      if @billing_info.save
        format.html { redirect_to @billing_info, notice: 'Billing info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @billing_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @billing_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billing_infos/1
  # PATCH/PUT /billing_infos/1.json
  def update
    respond_to do |format|
      if @billing_info.update(billing_info_params)
        format.html { redirect_to @billing_info, notice: 'Billing info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @billing_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billing_infos/1
  # DELETE /billing_infos/1.json
  def destroy
    @billing_info.destroy
    respond_to do |format|
      format.html { redirect_to billing_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_info
      @billing_info = BillingInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billing_info_params
      params.require(:billing_info).permit(:primaryKey, :B_JOB_NUM, :B_COST_CTR1, :B_COST_CTR2, :B_COST_CTR3, :B_COST_CTR4, :B_COST_CTR5, :B_COST_CTR6, :B_COST_CTR7, :B_COST_CTR8, :B_COST_CTR9, :B_ACCT1, :B_ACCT2, :B_ACCT3, :B_ACCT4, :B_ACCT5, :B_ACCT6, :B_ACCT7, :B_ACCT8, :B_ACCT9, :B_PERCENT1, :B_PERCENT2, :B_PERCENT3, :B_PERCENT4, :B_PERCENT5, :B_PERCENT6, :B_PERCENT7, :B_PERCENT8, :B_PERCENT9, :B_EDITED_BY, :B_EDITED_WHEN)
    end
end

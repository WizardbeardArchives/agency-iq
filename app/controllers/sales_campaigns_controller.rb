class SalesCampaignsController < ApplicationController
  before_action :set_sales_campaign, only: [:show, :edit, :update, :destroy]

  # GET /sales_campaigns
  # GET /sales_campaigns.json
  def index
    @sales_campaigns = SalesCampaign.all
  end

  # GET /sales_campaigns/1
  # GET /sales_campaigns/1.json
  def show
  end

  # GET /sales_campaigns/new
  def new
    @sales_campaign = SalesCampaign.new
  end

  # GET /sales_campaigns/1/edit
  def edit
  end

  # POST /sales_campaigns
  # POST /sales_campaigns.json
  def create
    @sales_campaign = SalesCampaign.new(sales_campaign_params)

    respond_to do |format|
      if @sales_campaign.save
        format.html { redirect_to @sales_campaign, notice: 'Sales campaign was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sales_campaign }
      else
        format.html { render action: 'new' }
        format.json { render json: @sales_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_campaigns/1
  # PATCH/PUT /sales_campaigns/1.json
  def update
    respond_to do |format|
      if @sales_campaign.update(sales_campaign_params)
        format.html { redirect_to @sales_campaign, notice: 'Sales campaign was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sales_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_campaigns/1
  # DELETE /sales_campaigns/1.json
  def destroy
    @sales_campaign.destroy
    respond_to do |format|
      format.html { redirect_to sales_campaigns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_campaign
      @sales_campaign = SalesCampaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_campaign_params
      params.require(:sales_campaign).permit(:primaryKey, :SCAM_ID, :SCAM_DESC, :SCAM_ADDED_BY, :SCAM_START, :SCAM_END, :SCAM_ACTION, :SCAM_ACTION1, :SCAM_ACTION1_DAYS, :SCAM_ACTION2, :SCAM_ACTION2_DAYS, :SCAM_ACTION3, :SCAM_ACTION3_DAYS, :SCAM_CLIENT_NUM, :SCAM_OK, :SCAM_OK_BY, :SCAM_ADDED_WHEN, :SCAM_EDITED_BY, :SCAM_EDITED_WHEN)
    end
end

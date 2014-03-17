class RfqVendorsController < ApplicationController
  before_action :set_rfq_vendor, only: [:show, :edit, :update, :destroy]

  # GET /rfq_vendors
  # GET /rfq_vendors.json
  def index
    @rfq_vendors = RfqVendor.all
  end

  # GET /rfq_vendors/1
  # GET /rfq_vendors/1.json
  def show
  end

  # GET /rfq_vendors/new
  def new
    @rfq_vendor = RfqVendor.new
  end

  # GET /rfq_vendors/1/edit
  def edit
  end

  # POST /rfq_vendors
  # POST /rfq_vendors.json
  def create
    @rfq_vendor = RfqVendor.new(rfq_vendor_params)

    respond_to do |format|
      if @rfq_vendor.save
        format.html { redirect_to @rfq_vendor, notice: 'Rfq vendor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rfq_vendor }
      else
        format.html { render action: 'new' }
        format.json { render json: @rfq_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfq_vendors/1
  # PATCH/PUT /rfq_vendors/1.json
  def update
    respond_to do |format|
      if @rfq_vendor.update(rfq_vendor_params)
        format.html { redirect_to @rfq_vendor, notice: 'Rfq vendor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rfq_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfq_vendors/1
  # DELETE /rfq_vendors/1.json
  def destroy
    @rfq_vendor.destroy
    respond_to do |format|
      format.html { redirect_to rfq_vendors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfq_vendor
      @rfq_vendor = RfqVendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rfq_vendor_params
      params.require(:rfq_vendor).permit(:primaryKey, :RFQV_NUM, :RFQV_VENDOR_NUM, :RFQV_CONTACT, :RFQV_PHONE, :RFQV_FAX, :RFQV_WINNER, :RFQV_VORG, :RFQV_TYPE)
    end
end

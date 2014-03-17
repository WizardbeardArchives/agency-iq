class HistoryVendorsController < ApplicationController
  before_action :set_history_vendor, only: [:show, :edit, :update, :destroy]

  # GET /history_vendors
  # GET /history_vendors.json
  def index
    @history_vendors = HistoryVendor.all
  end

  # GET /history_vendors/1
  # GET /history_vendors/1.json
  def show
  end

  # GET /history_vendors/new
  def new
    @history_vendor = HistoryVendor.new
  end

  # GET /history_vendors/1/edit
  def edit
  end

  # POST /history_vendors
  # POST /history_vendors.json
  def create
    @history_vendor = HistoryVendor.new(history_vendor_params)

    respond_to do |format|
      if @history_vendor.save
        format.html { redirect_to @history_vendor, notice: 'History vendor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @history_vendor }
      else
        format.html { render action: 'new' }
        format.json { render json: @history_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /history_vendors/1
  # PATCH/PUT /history_vendors/1.json
  def update
    respond_to do |format|
      if @history_vendor.update(history_vendor_params)
        format.html { redirect_to @history_vendor, notice: 'History vendor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @history_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /history_vendors/1
  # DELETE /history_vendors/1.json
  def destroy
    @history_vendor.destroy
    respond_to do |format|
      format.html { redirect_to history_vendors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history_vendor
      @history_vendor = HistoryVendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_vendor_params
      params.require(:history_vendor).permit(:primaryKey, :HV_VENDOR_NUM, :HV_NUM, :HV_ADDED_BY, :HV_DATE, :HV_SUBJECT, :HV_OK, :HV_FOR, :HV_DESC, :HV_MAIL_TO, :HV_CC, :HV_BCC, :HV_NOTIFIED, :HV_INV_NUM, :HV_EDITED_BY, :HV_EDITED_WHEN)
    end
end

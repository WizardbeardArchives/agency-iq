class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]

  # GET /vendors
  # GET /vendors.json
  def index
    @vendors = Vendor.all
  end

  # GET /vendors/1
  # GET /vendors/1.json
  def show
  end

  # GET /vendors/new
  def new
    @vendor = Vendor.new
  end

  # GET /vendors/1/edit
  def edit
  end

  # POST /vendors
  # POST /vendors.json
  def create
    @vendor = Vendor.new(vendor_params)

    respond_to do |format|
      if @vendor.save
        format.html { redirect_to @vendor, notice: 'Vendor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vendor }
      else
        format.html { render action: 'new' }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendors/1
  # PATCH/PUT /vendors/1.json
  def update
    respond_to do |format|
      if @vendor.update(vendor_params)
        format.html { redirect_to @vendor, notice: 'Vendor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendors/1
  # DELETE /vendors/1.json
  def destroy
    @vendor.destroy
    respond_to do |format|
      format.html { redirect_to vendors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_params
      params.require(:vendor).permit(:primaryKey, :V_NUM, :V_ORG, :V_NOTE1, :V_STREET, :V_CITY, :V_NOTE2, :V_ZIP, :V_CONTACT, :V_PHONE, :V_YTD, :V_MARKUP, :V_NOTE3, :V_TASK, :V_TYPE, :V_OPEN, :V_ALLOCATE, :V_TAX_ID, :V_ACCT_NUM, :V_CURRN, :V_30DAY, :V_60DAY, :V_90DAY, :V_BALN, :V_LAST_AP, :V_ADDED_BY, :V_ADDED_WHEN, :V_TIME, :V_1, :V_2, :V_3, :V_4, :V_5, :V_6, :V_7, :V_8, :V_9, :V_10, :V_11, :V_12, :V_L1, :V_L2, :V_L3, :V_L4, :V_L5, :V_L6, :V_L7, :V_L8, :V_L9, :V_L10, :V_L11, :V_L12, :V_TERMS1, :V_TERMS2, :V_TERMS3, :V_CGL, :V_DGL, :V_CK_MEMO, :V_NOTES, :V_FAX, :V_DISC_DGL, :V_NAME1, :V_PHONE1, :V_FAX1, :V_PAGER1, :V_CAR_PHONE1, :V_NAME2, :V_PHONE2, :V_FAX2, :V_CAR_PHONE2, :V_PAGER2, :V_NAME3, :V_PHONE3, :V_FAX3, :V_PAGER3, :V_CAR_PHONE3, :V_HOME_PHONE1, :V_HOME_PHONE2, :V_HOME_PHONE3, :V_ACTIVE, :V_1099, :V_MEDIA_VNUM, :V_ADDRESS2_1, :V_ADDRESS2_2, :V_ADDRESS2_3, :V_ADDRESS2_4, :V_ADDRESS3_1, :V_ADDRESS3_2, :V_ADDRESS3_3, :V_ADDRESS3_4, :V_COMM, :V_HOLD, :V_HOLD_WHY, :V_MEDIA_KIND, :V_WEB_URL, :V_EMAIL, :V_CORP_ID, :V_MARKET, :V_CHANGED_BY, :V_CHANGED_WHEN, :V_NO_RFQ, :V_DBA, :V_1099_RENT, :V_EDITED_BY, :V_EDITED_WHEN, :V_PAID_ONLINE, :V_NCF_PREFIX1, :V_RFQ_TYPE)
    end
end

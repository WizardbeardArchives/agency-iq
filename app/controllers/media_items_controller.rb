class MediaItemsController < ApplicationController
  before_action :set_media_item, only: [:show, :edit, :update, :destroy]

  # GET /media_items
  # GET /media_items.json
  def index
    @media_items = MediaItem.all
  end

  # GET /media_items/1
  # GET /media_items/1.json
  def show
  end

  # GET /media_items/new
  def new
    @media_item = MediaItem.new
  end

  # GET /media_items/1/edit
  def edit
  end

  # POST /media_items
  # POST /media_items.json
  def create
    @media_item = MediaItem.new(media_item_params)

    respond_to do |format|
      if @media_item.save
        format.html { redirect_to @media_item, notice: 'Media item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @media_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @media_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_items/1
  # PATCH/PUT /media_items/1.json
  def update
    respond_to do |format|
      if @media_item.update(media_item_params)
        format.html { redirect_to @media_item, notice: 'Media item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @media_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_items/1
  # DELETE /media_items/1.json
  def destroy
    @media_item.destroy
    respond_to do |format|
      format.html { redirect_to media_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_item
      @media_item = MediaItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_item_params
      params.require(:media_item).permit(:primaryKey, :MX_CAMPAIGN_NUM, :MX_DATE, :MX_STATION, :MX_GROUP, :MX_TIME_PGM, :MX_GROSS_EA, :MX_F1, :MX_SA1, :MX_SU1, :MX_M1, :MX_T1, :MX_W1, :MX_TH1, :MX_F2, :MX_SA2, :MX_SU2, :MX_M2, :MX_T2, :MX_W2, :MX_TH2, :MX_F3, :MX_RATING_EA, :MX_RATING, :MX_GROSS_AMT, :MX_SPOTS, :MX_WEEK1_1, :MX_WEEK1_2, :MX_WEEK1_COST, :MX_WEEK2_1, :MX_WEEK2_2, :MX_WEEK2_COST, :MX_WEEK3_1, :MX_WEEK3_2, :MX_WEEK3_COST, :MX_WEEK4_1, :MX_WEEK4_2, :MX_WEEK4_COST, :MX_WEEK5_1, :MX_WEEK5_2, :MX_WEEK5_COST, :MX_NOTES, :MX_M_NUM, :MX_MEDIA1, :MX_MEDIA2, :MX_MEDIA3, :MX_PO_NUM, :MX_DATE_ORDERED, :MX_ORDERED, :MX_WEEK6_1, :MX_WEEK6_2, :MX_WEEK6_COST, :MX_WEEK7_1, :MX_WEEK7_2, :MX_WEEK7_COST, :MX_WEEK8_1, :MX_WEEK8_2, :MX_WEEK8_COST, :MX_WEEK9_1, :MX_WEEK9_2, :MX_WEEK9_COST, :MX_WEEK10_1, :MX_WEEK10_2, :MX_WEEK10_COST, :MX_WEEK11_1, :MX_WEEK11_2, :MX_WEEK11_COST, :MX_WEEK12_1, :MX_WEEK12_2, :MX_WEEK12_COST, :MX_AMT_ORDERED, :MX_WEEK1_PO, :MX_WEEK2_PO, :MX_WEEK3_PO, :MX_WEEK4_PO, :MX_WEEK5_PO, :MX_WEEK6_PO, :MX_WEEK7_PO, :MX_WEEK8_PO, :MX_WEEK9_PO, :MX_WEEK10_PO, :MX_WEEK11_PO, :MX_WEEK12_PO, :MX_AD_CAPTION, :MX_WEEK1_3, :MX_WEEK2_3, :MX_WEEK3_3, :MX_WEEK4_3, :MX_WEEK5_3, :MX_WEEK6_3, :MX_WEEK7_3, :MX_WEEK8_3, :MX_WEEK9_3, :MX_WEEK10_3, :MX_WEEK11_3, :MX_WEEK12_3, :MX_RATE_BASIS, :MX_SPACE_CLOSE1, :MX_SPACE_CLOSE2, :MX_SPACE_CLOSE3, :MX_SPACE_CLOSE4, :MX_SPACE_CLOSE5, :MX_SPACE_CLOSE6, :MX_SPACE_CLOSE7, :MX_SPACE_CLOSE8, :MX_SPACE_CLOSE9, :MX_SPACE_CLOSE10, :MX_SPACE_CLOSE11, :MX_SPACE_CLOSE12, :MX_MAT_DUE1, :MX_MAT_DUE2, :MX_MAT_DUE3, :MX_MAT_DUE4, :MX_MAT_DUE5, :MX_MAT_DUE6, :MX_MAT_DUE7, :MX_MAT_DUE8, :MX_MAT_DUE9, :MX_MAT_DUE10, :MX_MAT_DUE11, :MX_MAT_DUE12, :MX_LENGTH, :MX_DAY, :MX_DATES, :MX_TIME, :MX_QTY, :MX_START_DATE, :MX_RUN_DATE1, :MX_RUN_DATE2, :MX_RUN_DATE3, :MX_RUN_DATE4, :MX_RUN_DATE5, :MX_RUN_DATE6, :MX_RUN_DATE7, :MX_RUN_DATE8, :MX_RUN_DATE9, :MX_RUN_DATE10, :MX_RUN_DATE11, :MX_RUN_DATE12, :MX_ADDED_BY, :MX_ADDED_WHEN, :MX_EDITED_BY, :MX_EDITED_WHEN)
    end
end

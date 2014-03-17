class MediaEstItemsController < ApplicationController
  before_action :set_media_est_item, only: [:show, :edit, :update, :destroy]

  # GET /media_est_items
  # GET /media_est_items.json
  def index
    @media_est_items = MediaEstItem.all
  end

  # GET /media_est_items/1
  # GET /media_est_items/1.json
  def show
  end

  # GET /media_est_items/new
  def new
    @media_est_item = MediaEstItem.new
  end

  # GET /media_est_items/1/edit
  def edit
  end

  # POST /media_est_items
  # POST /media_est_items.json
  def create
    @media_est_item = MediaEstItem.new(media_est_item_params)

    respond_to do |format|
      if @media_est_item.save
        format.html { redirect_to @media_est_item, notice: 'Media est item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @media_est_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @media_est_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_est_items/1
  # PATCH/PUT /media_est_items/1.json
  def update
    respond_to do |format|
      if @media_est_item.update(media_est_item_params)
        format.html { redirect_to @media_est_item, notice: 'Media est item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @media_est_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_est_items/1
  # DELETE /media_est_items/1.json
  def destroy
    @media_est_item.destroy
    respond_to do |format|
      format.html { redirect_to media_est_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_est_item
      @media_est_item = MediaEstItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_est_item_params
      params.require(:media_est_item).permit(:primaryKey, :MI_ME_NUM, :MI_PUB, :MI_ISSUE_DATE, :MI_CLOSE_DATE, :MI_AD_NAME, :MI_AD_SIZE, :MI_GROSS, :MI_COST, :MI_COMM, :MI_VENDOR_NUM, :MI_PO_NUM, :MI_PO_AMT, :MI_PO_DATE, :MI_JOB_NUM, :MI_TASK, :MI_STATUS, :MI_NOTES, :MI_SHOW_NOTES, :MI_MATERIALS_DUE, :MI_PERIOD, :MI_BILL_NET, :MI_RUN_DATE, :MI_ADDED_BY, :MI_ADDED_WHEN, :MI_EDITED_BY, :MI_EDITED_WHEN)
    end
end

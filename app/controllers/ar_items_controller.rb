class ArItemsController < ApplicationController
  before_action :set_ar_item, only: [:show, :edit, :update, :destroy]

  # GET /ar_items
  # GET /ar_items.json
  def index
    @ar_items = ArItem.all
  end

  # GET /ar_items/1
  # GET /ar_items/1.json
  def show
  end

  # GET /ar_items/new
  def new
    @ar_item = ArItem.new
  end

  # GET /ar_items/1/edit
  def edit
  end

  # POST /ar_items
  # POST /ar_items.json
  def create
    @ar_item = ArItem.new(ar_item_params)

    respond_to do |format|
      if @ar_item.save
        format.html { redirect_to @ar_item, notice: 'Ar item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ar_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @ar_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_items/1
  # PATCH/PUT /ar_items/1.json
  def update
    respond_to do |format|
      if @ar_item.update(ar_item_params)
        format.html { redirect_to @ar_item, notice: 'Ar item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ar_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_items/1
  # DELETE /ar_items/1.json
  def destroy
    @ar_item.destroy
    respond_to do |format|
      format.html { redirect_to ar_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_item
      @ar_item = ArItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_item_params
      params.require(:ar_item).permit(:primaryKey, :AX_JOB_NUM, :AX_TASK, :AX_AR_NUM, :AX_AMT, :AX_SORT, :AX_GROUP, :AX_TAXABLE1, :AX_TAXABLE2, :AX_DESC, :AX_DATE, :AX_CGL, :AX_POSTED, :AX_PERIOD, :AX_NAME, :AX_HOURS_BILLED, :AX_HIDE, :AX_ROLL_UP, :AX_SHOW_DESC, :AX_QTY, :AX_POX_KEY, :AX_PUB, :AX_ISSUE_DATE, :AX_COST, :AX_EXPORTED, :AX_PC, :AX_CLIENT_NUM, :AX_COMMISSIONABLE, :AX_ADDED_BY, :AX_ADDED_WHEN, :AX_EDITED_BY, :AX_EDITED_WHEN)
    end
end

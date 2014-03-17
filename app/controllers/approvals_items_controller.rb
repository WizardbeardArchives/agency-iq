class ApprovalsItemsController < ApplicationController
  before_action :set_approvals_item, only: [:show, :edit, :update, :destroy]

  # GET /approvals_items
  # GET /approvals_items.json
  def index
    @approvals_items = ApprovalsItem.all
  end

  # GET /approvals_items/1
  # GET /approvals_items/1.json
  def show
  end

  # GET /approvals_items/new
  def new
    @approvals_item = ApprovalsItem.new
  end

  # GET /approvals_items/1/edit
  def edit
  end

  # POST /approvals_items
  # POST /approvals_items.json
  def create
    @approvals_item = ApprovalsItem.new(approvals_item_params)

    respond_to do |format|
      if @approvals_item.save
        format.html { redirect_to @approvals_item, notice: 'Approvals item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @approvals_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @approvals_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /approvals_items/1
  # PATCH/PUT /approvals_items/1.json
  def update
    respond_to do |format|
      if @approvals_item.update(approvals_item_params)
        format.html { redirect_to @approvals_item, notice: 'Approvals item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @approvals_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approvals_items/1
  # DELETE /approvals_items/1.json
  def destroy
    @approvals_item.destroy
    respond_to do |format|
      format.html { redirect_to approvals_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approvals_item
      @approvals_item = ApprovalsItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def approvals_item_params
      params.require(:approvals_item).permit(:primaryKey, :APPRX_ID, :APPRX_FILE_NAME, :APPRX_FILE_CPX, :APPRX_STATUS, :APPRX_STATUS_NOTE)
    end
end

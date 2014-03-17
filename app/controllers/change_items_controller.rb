class ChangeItemsController < ApplicationController
  before_action :set_change_item, only: [:show, :edit, :update, :destroy]

  # GET /change_items
  # GET /change_items.json
  def index
    @change_items = ChangeItem.all
  end

  # GET /change_items/1
  # GET /change_items/1.json
  def show
  end

  # GET /change_items/new
  def new
    @change_item = ChangeItem.new
  end

  # GET /change_items/1/edit
  def edit
  end

  # POST /change_items
  # POST /change_items.json
  def create
    @change_item = ChangeItem.new(change_item_params)

    respond_to do |format|
      if @change_item.save
        format.html { redirect_to @change_item, notice: 'Change item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @change_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @change_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_items/1
  # PATCH/PUT /change_items/1.json
  def update
    respond_to do |format|
      if @change_item.update(change_item_params)
        format.html { redirect_to @change_item, notice: 'Change item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @change_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_items/1
  # DELETE /change_items/1.json
  def destroy
    @change_item.destroy
    respond_to do |format|
      format.html { redirect_to change_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_item
      @change_item = ChangeItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def change_item_params
      params.require(:change_item).permit(:primaryKey, :CHX_JOB_NUM, :CHX_TASK, :CHX_NAME, :CHX_HOURS, :CHX_BUDGET, :CHX_ESTIMATE, :CHX_NOTES, :CHX_NUM, :CHX_TAXABLE1, :CHX_TAXABLE2, :CHX_ROLLUP, :CHX_ADDED_BY, :CHX_ADDED_WHEN, :CHX_EDITED_BY, :CHX_EDITED_WHEN)
    end
end

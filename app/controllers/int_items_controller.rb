class IntItemsController < ApplicationController
  before_action :set_int_item, only: [:show, :edit, :update, :destroy]

  # GET /int_items
  # GET /int_items.json
  def index
    @int_items = IntItem.all
  end

  # GET /int_items/1
  # GET /int_items/1.json
  def show
  end

  # GET /int_items/new
  def new
    @int_item = IntItem.new
  end

  # GET /int_items/1/edit
  def edit
  end

  # POST /int_items
  # POST /int_items.json
  def create
    @int_item = IntItem.new(int_item_params)

    respond_to do |format|
      if @int_item.save
        format.html { redirect_to @int_item, notice: 'Int item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @int_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @int_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /int_items/1
  # PATCH/PUT /int_items/1.json
  def update
    respond_to do |format|
      if @int_item.update(int_item_params)
        format.html { redirect_to @int_item, notice: 'Int item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @int_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /int_items/1
  # DELETE /int_items/1.json
  def destroy
    @int_item.destroy
    respond_to do |format|
      format.html { redirect_to int_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_int_item
      @int_item = IntItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def int_item_params
      params.require(:int_item).permit(:primaryKey, :INT_ITEM, :INT_SIZE, :INT_KEY, :INT_DESC, :INT_TASK, :INT_COST_EA, :INT_UNIT, :INT_GROSS_EA, :INT_ADDED_BY, :INT_ADDED_WHEN, :INT_EDITED_BY, :INT_EDITED_WHEN)
    end
end

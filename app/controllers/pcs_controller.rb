class PcsController < ApplicationController
  before_action :set_pc, only: [:show, :edit, :update, :destroy]

  # GET /pcs
  # GET /pcs.json
  def index
    @pcs = Pc.all
  end

  # GET /pcs/1
  # GET /pcs/1.json
  def show
  end

  # GET /pcs/new
  def new
    @pc = Pc.new
  end

  # GET /pcs/1/edit
  def edit
  end

  # POST /pcs
  # POST /pcs.json
  def create
    @pc = Pc.new(pc_params)

    respond_to do |format|
      if @pc.save
        format.html { redirect_to @pc, notice: 'Pc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pc }
      else
        format.html { render action: 'new' }
        format.json { render json: @pc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pcs/1
  # PATCH/PUT /pcs/1.json
  def update
    respond_to do |format|
      if @pc.update(pc_params)
        format.html { redirect_to @pc, notice: 'Pc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pcs/1
  # DELETE /pcs/1.json
  def destroy
    @pc.destroy
    respond_to do |format|
      format.html { redirect_to pcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc
      @pc = Pc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pc_params
      params.require(:pc).permit(:primaryKey, :PC_NUM, :PC_NAME, :PC_DESC, :PC_CORP_ID, :PC_ADDED_BY, :PC_ADDED_WHEN, :PC_EDITED_BY, :PC_EDITED_WHEN, :PC_BUS_UNIT, :PC_OUTDATED, :PC_AR_SHOW, :PC_BILL_ORG, :PC_BILL_ADDRESS1, :PC_BILL_ADDRESS2, :PC_BILL_ADDRESS3)
    end
end

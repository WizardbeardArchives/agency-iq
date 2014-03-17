class RetainersController < ApplicationController
  before_action :set_retainer, only: [:show, :edit, :update, :destroy]

  # GET /retainers
  # GET /retainers.json
  def index
    @retainers = Retainer.all
  end

  # GET /retainers/1
  # GET /retainers/1.json
  def show
  end

  # GET /retainers/new
  def new
    @retainer = Retainer.new
  end

  # GET /retainers/1/edit
  def edit
  end

  # POST /retainers
  # POST /retainers.json
  def create
    @retainer = Retainer.new(retainer_params)

    respond_to do |format|
      if @retainer.save
        format.html { redirect_to @retainer, notice: 'Retainer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @retainer }
      else
        format.html { render action: 'new' }
        format.json { render json: @retainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retainers/1
  # PATCH/PUT /retainers/1.json
  def update
    respond_to do |format|
      if @retainer.update(retainer_params)
        format.html { redirect_to @retainer, notice: 'Retainer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @retainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retainers/1
  # DELETE /retainers/1.json
  def destroy
    @retainer.destroy
    respond_to do |format|
      format.html { redirect_to retainers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retainer
      @retainer = Retainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retainer_params
      params.require(:retainer).permit(:RET_CLIENT_NUM, :RET_AMT1, :RET_AMT2, :RET_AMT3, :RET_AMT4, :RET_AMT5, :RET_AMT6, :RET_AMT7, :RET_AMT8, :RET_AMT9, :RET_AMT10, :RET_AMT11, :RET_AMT12, :RET_1, :RET_2, :RET_3, :RET_4, :RET_5, :RET_6, :RET_7, :RET_8, :RET_9, :RET_10, :RET_11, :RET_12, :RET_1_OK, :RET_2_OK, :RET_3_OK, :RET_4_OK, :RET_5_OK, :RET_6_OK, :RET_7_OK, :RET_8_OK, :RET_9_OK, :RET_10_OK, :RET_11_OK, :RET_12_OK, :RET_DATE1, :RET_DATE2, :RET_DATE3, :RET_DATE4, :RET_DATE5, :RET_DATE6, :RET_DATE7, :RET_DATE8, :RET_DATE9, :RET_DATE10, :RET_DATE11, :RET_DATE12, :RET_AR_NUM1, :RET_AR_NUM2, :RET_AR_NUM3, :RET_AR_NUM4, :RET_AR_NUM5, :RET_AR_NUM6, :RET_AR_NUM7, :RET_AR_NUM8, :RET_AR_NUM9, :RET_AR_NUM10, :RET_AR_NUM11, :RET_AR_NUM12, :RET_ADDED_BY, :RET_ADDED_WHEN, :RET_EDITED_BY, :RET_EDITED_WHEN)
    end
end

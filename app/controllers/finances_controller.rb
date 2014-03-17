class FinancesController < ApplicationController
  before_action :set_finance, only: [:show, :edit, :update, :destroy]

  # GET /finances
  # GET /finances.json
  def index
    @finances = Finance.all
  end

  # GET /finances/1
  # GET /finances/1.json
  def show
  end

  # GET /finances/new
  def new
    @finance = Finance.new
  end

  # GET /finances/1/edit
  def edit
  end

  # POST /finances
  # POST /finances.json
  def create
    @finance = Finance.new(finance_params)

    respond_to do |format|
      if @finance.save
        format.html { redirect_to @finance, notice: 'Finance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @finance }
      else
        format.html { render action: 'new' }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finances/1
  # PATCH/PUT /finances/1.json
  def update
    respond_to do |format|
      if @finance.update(finance_params)
        format.html { redirect_to @finance, notice: 'Finance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finances/1
  # DELETE /finances/1.json
  def destroy
    @finance.destroy
    respond_to do |format|
      format.html { redirect_to finances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finance
      @finance = Finance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finance_params
      params.require(:finance).permit(:primaryKey, :FI_AC_NUM, :FI_CATEGORY, :FI_CLASS, :FI_MTD, :FI_MTD_PERCENT, :FI_YTD, :FI_YTD_PERCENT, :FI_MONTH, :FI_YEAR, :FI_1, :FI_2, :FI_3, :FI_4, :FI_5, :FI_6, :FI_7, :FI_8, :FI_NAME, :FI_NOTE, :FI_SUB_CLASS, :FI_ROLL_UP, :FI_PCT1, :FI_PCT2, :FI_PCT3, :FI_PCT4, :FI_L_MONTH, :FI_L_MTD, :FI_L_YEAR, :FI_L_YTD, :FI_L_MTD_PERCENT, :FI_L_YTD_PERCENT, :FI_L_PCT1, :FI_L_PCT2, :FI_L_PCT3, :FI_L_PCT4, :FI_CLIENT_NUM, :FI_GROUP, :FI_PCT5, :FI_L_PCT5)
    end
end

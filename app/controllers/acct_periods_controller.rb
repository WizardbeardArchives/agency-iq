class AcctPeriodsController < ApplicationController
  before_action :set_acct_period, only: [:show, :edit, :update, :destroy]

  # GET /acct_periods
  # GET /acct_periods.json
  def index
    @acct_periods = AcctPeriod.all
  end

  # GET /acct_periods/1
  # GET /acct_periods/1.json
  def show
  end

  # GET /acct_periods/new
  def new
    @acct_period = AcctPeriod.new
  end

  # GET /acct_periods/1/edit
  def edit
  end

  # POST /acct_periods
  # POST /acct_periods.json
  def create
    @acct_period = AcctPeriod.new(acct_period_params)

    respond_to do |format|
      if @acct_period.save
        format.html { redirect_to @acct_period, notice: 'Acct period was successfully created.' }
        format.json { render action: 'show', status: :created, location: @acct_period }
      else
        format.html { render action: 'new' }
        format.json { render json: @acct_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acct_periods/1
  # PATCH/PUT /acct_periods/1.json
  def update
    respond_to do |format|
      if @acct_period.update(acct_period_params)
        format.html { redirect_to @acct_period, notice: 'Acct period was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @acct_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acct_periods/1
  # DELETE /acct_periods/1.json
  def destroy
    @acct_period.destroy
    respond_to do |format|
      format.html { redirect_to acct_periods_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acct_period
      @acct_period = AcctPeriod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acct_period_params
      params.require(:acct_period).permit(:PERIOD_ID, :PERIOD_1, :PERIOD_2, :PERIOD_3, :PERIOD_4, :PERIOD_5, :PERIOD_6, :PERIOD_7, :PERIOD_8, :PERIOD_9, :PERIOD_10, :PERIOD_11, :PERIOD_12, :PERIOD_13, :PERIOD_14, :PERIOD_15, :PERIOD_16, :PERIOD_17, :PERIOD_18, :PERIOD_19, :PERIOD_20, :PERIOD_21, :PERIOD_22, :PERIOD_23, :PERIOD_24, :PERIOD_LOCK1, :PERIOD_LOCK2, :PERIOD_LOCK3, :PERIOD_LOCK4, :PERIOD_LOCK5, :PERIOD_LOCK6, :PERIOD_LOCK7, :PERIOD_LOCK8, :PERIOD_LOCK9, :PERIOD_LOCK10, :PERIOD_LOCK11, :PERIOD_LOCK12, :PERIOD_LOCK13, :PERIOD_LOCK14, :PERIOD_LOCK15, :PERIOD_LOCK16, :PERIOD_LOCK17, :PERIOD_LOCK18, :PERIOD_LOCK19, :PERIOD_LOCK20, :PERIOD_LOCK21, :PERIOD_LOCK22, :PERIOD_LOCK23, :PERIOD_LOCK24, :PERIOD_FIRST_DAY, :PERIOD_CURR_PER, :PERIOD_FY1_NAME, :PERIOD_FY2_NAME)
    end
end

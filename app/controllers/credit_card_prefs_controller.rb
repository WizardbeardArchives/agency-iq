class CreditCardPrefsController < ApplicationController
  before_action :set_credit_card_pref, only: [:show, :edit, :update, :destroy]

  # GET /credit_card_prefs
  # GET /credit_card_prefs.json
  def index
    @credit_card_prefs = CreditCardPref.all
  end

  # GET /credit_card_prefs/1
  # GET /credit_card_prefs/1.json
  def show
  end

  # GET /credit_card_prefs/new
  def new
    @credit_card_pref = CreditCardPref.new
  end

  # GET /credit_card_prefs/1/edit
  def edit
  end

  # POST /credit_card_prefs
  # POST /credit_card_prefs.json
  def create
    @credit_card_pref = CreditCardPref.new(credit_card_pref_params)

    respond_to do |format|
      if @credit_card_pref.save
        format.html { redirect_to @credit_card_pref, notice: 'Credit card pref was successfully created.' }
        format.json { render action: 'show', status: :created, location: @credit_card_pref }
      else
        format.html { render action: 'new' }
        format.json { render json: @credit_card_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credit_card_prefs/1
  # PATCH/PUT /credit_card_prefs/1.json
  def update
    respond_to do |format|
      if @credit_card_pref.update(credit_card_pref_params)
        format.html { redirect_to @credit_card_pref, notice: 'Credit card pref was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @credit_card_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_card_prefs/1
  # DELETE /credit_card_prefs/1.json
  def destroy
    @credit_card_pref.destroy
    respond_to do |format|
      format.html { redirect_to credit_card_prefs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_card_pref
      @credit_card_pref = CreditCardPref.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credit_card_pref_params
      params.require(:credit_card_pref).permit(:primaryKey, :CC_KIND, :CC_VENDOR_NUM, :CC_CGL, :CC_PAYEE, :CC_JOB_NUM, :CC_TASK, :CC_DGL, :CC_ACCT_NUM)
    end
end

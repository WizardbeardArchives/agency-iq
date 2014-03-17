class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.all
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = Account.new
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(account_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Account was successfully created.' }
        format.json { render action: 'show', status: :created, location: @account }
      else
        format.html { render action: 'new' }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:primaryKey, :AC_NUM, :AC_NAME, :AC_CLASS, :AC_SUB_CLASS, :AC_CONFIDENTIAL, :AC_ROLLUP_ONLY, :AC_CK_NUM, :AC_PC, :AC_1, :AC_2, :AC_3, :AC_4, :AC_5, :AC_6, :AC_7, :AC_8, :AC_9, :AC_10, :AC_11, :AC_12, :AC_BEG_BALN, :AC_BUDGET1, :AC_BUDGET2, :AC_BUDGET3, :AC_BUDGET4, :AC_BUDGET5, :AC_BUDGET6, :AC_BUDGET7, :AC_BUDGET8, :AC_BUDGET9, :AC_BUDGET10, :AC_BUDGET11, :AC_BUDGET12, :AC_B13, :AC_L1, :AC_L2, :AC_L3, :AC_L4, :AC_L5, :AC_L6, :AC_L7, :AC_L8, :AC_L9, :AC_L10, :AC_L11, :AC_L12, :AC_L_BEG_BALN, :AC_GROUP, :AC_CATEGORY, :AC_YTD, :AC_ROLL_UP, :AC_ACTIVE, :AC_CK_ACCT, :AC_DESC, :AC_13, :AC_14, :AC_15, :AC_16, :AC_17, :AC_18, :AC_19, :AC_20, :AC_21, :AC_22, :AC_23, :AC_24, :AC_YTD2, :AC_CF, :AC_RATIO, :AC_AR_CONTROL, :AC_AP_CONTROL, :AC_AR_LOCK, :AC_AP_LOCK, :AC_DEPT, :AC_BUDGET13, :AC_BUDGET14, :AC_BUDGET15, :AC_BUDGET16, :AC_BUDGET17, :AC_BUDGET18, :AC_BUDGET19, :AC_BUDGET20, :AC_BUDGET21, :AC_BUDGET22, :AC_BUDGET23, :AC_BUDGET24, :AC_CORP_ID, :AC_ADDED_BY, :AC_ADDED_WHEN, :AC_EDITED_BY, :AC_EDITED_WHEN, :AC_BANK_ROUTING, :AC_BANK_ACCT_NUM, :AC_BANK_NAME, :AC_BANK_LOCATION, :AC_BANK_NUM, :AC_ONLINE_PMT_NUM)
    end
end

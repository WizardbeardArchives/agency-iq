class UnChecksController < ApplicationController
  before_action :set_un_check, only: [:show, :edit, :update, :destroy]

  # GET /un_checks
  # GET /un_checks.json
  def index
    @un_checks = UnCheck.all
  end

  # GET /un_checks/1
  # GET /un_checks/1.json
  def show
  end

  # GET /un_checks/new
  def new
    @un_check = UnCheck.new
  end

  # GET /un_checks/1/edit
  def edit
  end

  # POST /un_checks
  # POST /un_checks.json
  def create
    @un_check = UnCheck.new(un_check_params)

    respond_to do |format|
      if @un_check.save
        format.html { redirect_to @un_check, notice: 'Un check was successfully created.' }
        format.json { render action: 'show', status: :created, location: @un_check }
      else
        format.html { render action: 'new' }
        format.json { render json: @un_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /un_checks/1
  # PATCH/PUT /un_checks/1.json
  def update
    respond_to do |format|
      if @un_check.update(un_check_params)
        format.html { redirect_to @un_check, notice: 'Un check was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @un_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /un_checks/1
  # DELETE /un_checks/1.json
  def destroy
    @un_check.destroy
    respond_to do |format|
      format.html { redirect_to un_checks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_un_check
      @un_check = UnCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def un_check_params
      params.require(:un_check).permit(:primaryKey, :UNCKS_DEBIT, :UNCKS_CREDIT, :UNCKS_DESC, :UNCKS_REF, :UNCKS_TEMP_REC, :UNCKS_PAY_BATCH, :UNCKS_SOURCE, :UNCKS_RECONCILE, :UNCKS_DATE, :UNCKS_AC_NUM)
    end
end

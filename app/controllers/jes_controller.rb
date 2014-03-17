class JesController < ApplicationController
  before_action :set_je, only: [:show, :edit, :update, :destroy]

  # GET /jes
  # GET /jes.json
  def index
    @jes = Je.all
  end

  # GET /jes/1
  # GET /jes/1.json
  def show
  end

  # GET /jes/new
  def new
    @je = Je.new
  end

  # GET /jes/1/edit
  def edit
  end

  # POST /jes
  # POST /jes.json
  def create
    @je = Je.new(je_params)

    respond_to do |format|
      if @je.save
        format.html { redirect_to @je, notice: 'Je was successfully created.' }
        format.json { render action: 'show', status: :created, location: @je }
      else
        format.html { render action: 'new' }
        format.json { render json: @je.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jes/1
  # PATCH/PUT /jes/1.json
  def update
    respond_to do |format|
      if @je.update(je_params)
        format.html { redirect_to @je, notice: 'Je was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @je.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jes/1
  # DELETE /jes/1.json
  def destroy
    @je.destroy
    respond_to do |format|
      format.html { redirect_to jes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_je
      @je = Je.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def je_params
      params.require(:je).permit(:primaryKey, :JE_DATE, :JE_REF, :JE_POSTED, :JE_DESC, :JE_DEBIT, :JE_CREDIT, :JE_AC_NUM, :JE_PERIOD, :JE_JOB_NUM, :JE_CLIENT_NUM, :JE_RECONCILE, :JE_SOURCE, :JE_ADDED_BY, :JE_ADDED_WHEN, :JE_VENDOR_NUM, :JE_AUTO_REV, :JE_AUTO_ACC, :JE_TEMP_REC, :JE_KIND, :JE_PAY_BATCH, :JE_GL_REC, :JE_EXPORTED, :JE_EDITED_BY, :JE_EDITED_WHEN, :JE_POSTED_BY, :JE_POSTED_WHEN)
    end
end

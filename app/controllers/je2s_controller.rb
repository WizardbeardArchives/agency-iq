class Je2sController < ApplicationController
  before_action :set_je2, only: [:show, :edit, :update, :destroy]

  # GET /je2s
  # GET /je2s.json
  def index
    @je2s = Je2.all
  end

  # GET /je2s/1
  # GET /je2s/1.json
  def show
  end

  # GET /je2s/new
  def new
    @je2 = Je2.new
  end

  # GET /je2s/1/edit
  def edit
  end

  # POST /je2s
  # POST /je2s.json
  def create
    @je2 = Je2.new(je2_params)

    respond_to do |format|
      if @je2.save
        format.html { redirect_to @je2, notice: 'Je2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @je2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @je2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /je2s/1
  # PATCH/PUT /je2s/1.json
  def update
    respond_to do |format|
      if @je2.update(je2_params)
        format.html { redirect_to @je2, notice: 'Je2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @je2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /je2s/1
  # DELETE /je2s/1.json
  def destroy
    @je2.destroy
    respond_to do |format|
      format.html { redirect_to je2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_je2
      @je2 = Je2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def je2_params
      params.require(:je2).permit(:primaryKey, :JE2_DATE, :JE2_REF, :JE2_POSTED, :JE2_DESC, :JE2_DEBIT, :JE2_CREDIT, :JE2_AC_NUM, :JE2_PERIOD, :JE2_JOB_NUM, :JE2_CLIENT_NUM, :JE2_RECONCILE, :JE2_SOURCE, :JE2_ADDED_BY, :JE2_ADDED_WHEN, :JE2_VENDOR_NUM, :JE2_AUTO_REV, :JE2_AUTO_ACC, :JE2_TEMP_REC, :JE2_KIND, :JE2_PAY_BATCH, :JE2_GL_REC, :JE2_EXPORTED, :JE2_EDITED_BY, :JE2_EDITED_WHEN, :JE2_POSTED_BY, :JE2_POSTED_WHEN, :JE2_FISCAL_YEAR, :JE2_PERIOD_FIRST_DAY)
    end
end

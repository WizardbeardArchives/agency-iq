class RecurApsController < ApplicationController
  before_action :set_recur_ap, only: [:show, :edit, :update, :destroy]

  # GET /recur_aps
  # GET /recur_aps.json
  def index
    @recur_aps = RecurAp.all
  end

  # GET /recur_aps/1
  # GET /recur_aps/1.json
  def show
  end

  # GET /recur_aps/new
  def new
    @recur_ap = RecurAp.new
  end

  # GET /recur_aps/1/edit
  def edit
  end

  # POST /recur_aps
  # POST /recur_aps.json
  def create
    @recur_ap = RecurAp.new(recur_ap_params)

    respond_to do |format|
      if @recur_ap.save
        format.html { redirect_to @recur_ap, notice: 'Recur ap was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recur_ap }
      else
        format.html { render action: 'new' }
        format.json { render json: @recur_ap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recur_aps/1
  # PATCH/PUT /recur_aps/1.json
  def update
    respond_to do |format|
      if @recur_ap.update(recur_ap_params)
        format.html { redirect_to @recur_ap, notice: 'Recur ap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recur_ap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recur_aps/1
  # DELETE /recur_aps/1.json
  def destroy
    @recur_ap.destroy
    respond_to do |format|
      format.html { redirect_to recur_aps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recur_ap
      @recur_ap = RecurAp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recur_ap_params
      params.require(:recur_ap).permit(:primaryKey, :RAP_VENDOR, :RAP_DATE, :RAP_AMT1, :RAP_DESC, :RAP_CGL, :RAP_DGL1, :RAP_ADDED_BY, :RAP_INV_NUM, :RAP_PERIOD, :RAP_INV_DATE, :RAP_DGL2, :RAP_DGL3, :RAP_DGL4, :RAP_DGL5, :RAP_DGL6, :RAP_AMT2, :RAP_AMT3, :RAP_AMT4, :RAP_AMT5, :RAP_AMT6, :RAP_ADDED_WHEN, :RAP_EDITED_BY, :RAP_EDITED_WHEN)
    end
end

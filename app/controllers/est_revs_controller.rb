class EstRevsController < ApplicationController
  before_action :set_est_rev, only: [:show, :edit, :update, :destroy]

  # GET /est_revs
  # GET /est_revs.json
  def index
    @est_revs = EstRev.all
  end

  # GET /est_revs/1
  # GET /est_revs/1.json
  def show
  end

  # GET /est_revs/new
  def new
    @est_rev = EstRev.new
  end

  # GET /est_revs/1/edit
  def edit
  end

  # POST /est_revs
  # POST /est_revs.json
  def create
    @est_rev = EstRev.new(est_rev_params)

    respond_to do |format|
      if @est_rev.save
        format.html { redirect_to @est_rev, notice: 'Est rev was successfully created.' }
        format.json { render action: 'show', status: :created, location: @est_rev }
      else
        format.html { render action: 'new' }
        format.json { render json: @est_rev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /est_revs/1
  # PATCH/PUT /est_revs/1.json
  def update
    respond_to do |format|
      if @est_rev.update(est_rev_params)
        format.html { redirect_to @est_rev, notice: 'Est rev was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @est_rev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /est_revs/1
  # DELETE /est_revs/1.json
  def destroy
    @est_rev.destroy
    respond_to do |format|
      format.html { redirect_to est_revs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_est_rev
      @est_rev = EstRev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def est_rev_params
      params.require(:est_rev).permit(:primaryKey, :RV_JOB_NUM, :RV_TASK, :RV_EST1, :RV_EST2, :RV_EST3, :RV_NAME, :RV_GROUP, :RV_SORT, :RV_FINAL, :RV_REVISION, :RV_EST_HEAD1, :RV_EST_HEAD2, :RV_EST_HEAD3, :RV_EST_HRS1, :RV_EST_HRS2, :RV_EST_HRS3, :RV_BUDGET, :RV_REVISED_BY, :RV_REVISION_DATE, :RV_REVISION_NOTES, :RV_REASON, :RV_REV_OKD_BY, :RV_REV_OKD_DATE, :RV_ADDED_BY, :RV_ADDED_WHEN, :RV_EDITED_BY, :RV_EDITED_WHEN)
    end
end

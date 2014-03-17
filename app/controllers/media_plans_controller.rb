class MediaPlansController < ApplicationController
  before_action :set_media_plan, only: [:show, :edit, :update, :destroy]

  # GET /media_plans
  # GET /media_plans.json
  def index
    @media_plans = MediaPlan.all
  end

  # GET /media_plans/1
  # GET /media_plans/1.json
  def show
  end

  # GET /media_plans/new
  def new
    @media_plan = MediaPlan.new
  end

  # GET /media_plans/1/edit
  def edit
  end

  # POST /media_plans
  # POST /media_plans.json
  def create
    @media_plan = MediaPlan.new(media_plan_params)

    respond_to do |format|
      if @media_plan.save
        format.html { redirect_to @media_plan, notice: 'Media plan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @media_plan }
      else
        format.html { render action: 'new' }
        format.json { render json: @media_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_plans/1
  # PATCH/PUT /media_plans/1.json
  def update
    respond_to do |format|
      if @media_plan.update(media_plan_params)
        format.html { redirect_to @media_plan, notice: 'Media plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @media_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_plans/1
  # DELETE /media_plans/1.json
  def destroy
    @media_plan.destroy
    respond_to do |format|
      format.html { redirect_to media_plans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_plan
      @media_plan = MediaPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_plan_params
      params.require(:media_plan).permit(:primaryKey, :M_CAMPAIGN, :M_NAME, :M_DESC, :M_BUDGET, :M_COST, :M_START_DATE, :M_END_START, :M_SPOTS_TOTAL, :M_RATING_TOTAL, :M_COST_TOTAL, :M_CPP_TOTAL, :M_CPS_TOTAL, :M_RF_TOTAL, :M_CLIENT_NUM, :M_DATE_ADDED, :M_ADDED_BY, :M_REVISION, :M_REV_NOTE, :M_STATUS_NOTE, :M_PO_COST, :M_PO_GROSS, :M_BILLED, :M_PERIOD1, :M_PERIOD2, :M_PERIOD3, :M_PERIOD4, :M_PERIOD5, :M_TYPE, :M_MEMO, :M_NUM, :M_FIELD_LABEL1, :M_FIELD_LABEL2, :M_FIELD_LABEL3, :M_FIELD_LABEL4, :M_FIELD_LABEL5, :M_FIELD_LABEL6, :M_FIELD1, :M_FIELD2, :M_FIELD3, :M_FIELD4, :M_FIELD5, :M_FIELD6, :M_AE_TEAM, :M_CLIENT_CONT, :M_CLIENT_PHONE, :M_F1, :M_SA1, :M_SU1, :M_M1, :M_TU1, :M_W1, :M_TH1, :M_F2, :M_SA2, :M_SU2, :M_M2, :M_TU2, :M_W2, :M_TH2, :M_F3, :M_PER_LABEL1, :M_PER_LABEL2, :M_PER_LABEL3, :M_PER_LABEL4, :M_PER_LABEL5, :M_PER_LABEL6, :M_PER_LABEL7, :M_PER_LABEL8, :M_PER_LABEL9, :M_PER_LABEL10, :M_PER_LABEL11, :M_PER_LABEL12, :M_PERIOD6, :M_PERIOD7, :M_PERIOD8, :M_PERIOD9, :M_PERIOD10, :M_PERIOD11, :M_PERIOD12, :M_JOB_NUM, :M_TASK, :M_APPROVAL1, :M_APPROVAL2, :M_APPROVAL3, :M_FLIGHT, :M_KIND, :M_COMMISSION, :M_STATUS, :M_BRAND, :M_CLOSED, :M_INACTIVE, :M_APPROVED, :M_APPROVED_BY, :M_APPROVED_DATE, :M_EDITED_BY, :M_EDITED_WHEN)
    end
end

class ApprovalsController < ApplicationController
  before_action :set_approval, only: [:show, :edit, :update, :destroy]

  # GET /approvals
  # GET /approvals.json
  def index
    @approvals = Approval.all
  end

  # GET /approvals/1
  # GET /approvals/1.json
  def show
  end

  # GET /approvals/new
  def new
    @approval = Approval.new
  end

  # GET /approvals/1/edit
  def edit
  end

  # POST /approvals
  # POST /approvals.json
  def create
    @approval = Approval.new(approval_params)

    respond_to do |format|
      if @approval.save
        format.html { redirect_to @approval, notice: 'Approval was successfully created.' }
        format.json { render action: 'show', status: :created, location: @approval }
      else
        format.html { render action: 'new' }
        format.json { render json: @approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /approvals/1
  # PATCH/PUT /approvals/1.json
  def update
    respond_to do |format|
      if @approval.update(approval_params)
        format.html { redirect_to @approval, notice: 'Approval was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approvals/1
  # DELETE /approvals/1.json
  def destroy
    @approval.destroy
    respond_to do |format|
      format.html { redirect_to approvals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approval
      @approval = Approval.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def approval_params
      params.require(:approval).permit(:primaryKey, :APPR_ADDED_BY, :APPR_DATE_ADDED, :APPR_DATE_EXPIRES, :APPR_INSTRUCTIONS, :APPR_OKD_BY, :APPR_ID, :APPR_STATUS, :APPR_STATUS_NOTE, :APPR_OKD_DATE, :APPR_RUSH, :APPR_JOB_NUM, :APPR_CLIENT_NUM, :APPR_REPLY_TO, :APPR_NEEDED_WHEN, :APPR_NEEDED_BY, :APPR_SENT_DATE, :APPR_DRAFT, :APPR_KIND, :APPR_CHANGES, :APPR_STEP_DESC, :APPR_REF_NUM, :APPR_NEEDED_BY_NAME, :APPR_FILE_PATH, :APPR_EDITED_BY, :APPR_EDITED_WHEN)
    end
end

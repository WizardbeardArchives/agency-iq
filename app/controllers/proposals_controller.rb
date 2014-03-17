class ProposalsController < ApplicationController
  before_action :set_proposal, only: [:show, :edit, :update, :destroy]

  # GET /proposals
  # GET /proposals.json
  def index
    @proposals = Proposal.all
  end

  # GET /proposals/1
  # GET /proposals/1.json
  def show
  end

  # GET /proposals/new
  def new
    @proposal = Proposal.new
  end

  # GET /proposals/1/edit
  def edit
  end

  # POST /proposals
  # POST /proposals.json
  def create
    @proposal = Proposal.new(proposal_params)

    respond_to do |format|
      if @proposal.save
        format.html { redirect_to @proposal, notice: 'Proposal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proposal }
      else
        format.html { render action: 'new' }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposals/1
  # PATCH/PUT /proposals/1.json
  def update
    respond_to do |format|
      if @proposal.update(proposal_params)
        format.html { redirect_to @proposal, notice: 'Proposal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposals/1
  # DELETE /proposals/1.json
  def destroy
    @proposal.destroy
    respond_to do |format|
      format.html { redirect_to proposals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposal
      @proposal = Proposal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposal_params
      params.require(:proposal).permit(:primaryKey, :PROPS_CLIENT_NUM, :PROPS_DATE_ADDED, :PROPS_REQUESTOR, :PROPS_TYPE, :PROPS_BUDGET, :PROPS_START_DATE, :PROPS_DUE_DATE, :PROPS_OK_BY, :PROPS_CB1, :PROPS_CB2, :PROPS_CB3, :PROPS_CB4, :PROPS_CB5, :PROPS_CB6, :PROPS_CB7, :PROPS_CB8, :PROPS_CB9, :PROPS_CB10, :PROPS_CB11, :PROPS_CB12, :PROPS_CB13, :PROPS_CB14, :PROPS_CB15, :PROPS_NAME, :PROPS_OK_DATE, :PROPS_DESC, :PROPS_CHARGE_NUM, :PROPS_STATUS_DESC, :PROPS_STATUS, :PROPS_ADDED_BY, :PROPS_APPROVED, :PROPS_APPROVED_BY, :PROPS_APPROVED_DATE, :PROPS_EDITED_BY, :PROPS_EDITED_WHEN, :PROPS_REVIEWER)
    end
end

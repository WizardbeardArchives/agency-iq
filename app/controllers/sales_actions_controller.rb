class SalesActionsController < ApplicationController
  before_action :set_sales_action, only: [:show, :edit, :update, :destroy]

  # GET /sales_actions
  # GET /sales_actions.json
  def index
    @sales_actions = SalesAction.all
  end

  # GET /sales_actions/1
  # GET /sales_actions/1.json
  def show
  end

  # GET /sales_actions/new
  def new
    @sales_action = SalesAction.new
  end

  # GET /sales_actions/1/edit
  def edit
  end

  # POST /sales_actions
  # POST /sales_actions.json
  def create
    @sales_action = SalesAction.new(sales_action_params)

    respond_to do |format|
      if @sales_action.save
        format.html { redirect_to @sales_action, notice: 'Sales action was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sales_action }
      else
        format.html { render action: 'new' }
        format.json { render json: @sales_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_actions/1
  # PATCH/PUT /sales_actions/1.json
  def update
    respond_to do |format|
      if @sales_action.update(sales_action_params)
        format.html { redirect_to @sales_action, notice: 'Sales action was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sales_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_actions/1
  # DELETE /sales_actions/1.json
  def destroy
    @sales_action.destroy
    respond_to do |format|
      format.html { redirect_to sales_actions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_action
      @sales_action = SalesAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_action_params
      params.require(:sales_action).permit(:primaryKey, :SACT_KIND, :SACT_DATE, :SACT_TIME, :SACT_LENGTH, :SACT_CAMPAIGN, :SACT_CON__SEQ, :SACT_PRIORITY, :SACT_SLTR__SEQ, :SACT_FROM_STAFF, :SACT_PRINTED, :SACT_PRINTED_BY, :SACT_CLIENT_NUM, :SACT_ADDED_BY, :SACT_SUBJECT, :SACT_BODY, :SACT_PS, :SACT_ADDED_WHEN, :SACT_EDITED_BY, :SACT_EDITED_WHEN)
    end
end

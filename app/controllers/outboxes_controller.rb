class OutboxesController < ApplicationController
  before_action :set_outbox, only: [:show, :edit, :update, :destroy]

  # GET /outboxes
  # GET /outboxes.json
  def index
    @outboxes = Outbox.all
  end

  # GET /outboxes/1
  # GET /outboxes/1.json
  def show
  end

  # GET /outboxes/new
  def new
    @outbox = Outbox.new
  end

  # GET /outboxes/1/edit
  def edit
  end

  # POST /outboxes
  # POST /outboxes.json
  def create
    @outbox = Outbox.new(outbox_params)

    respond_to do |format|
      if @outbox.save
        format.html { redirect_to @outbox, notice: 'Outbox was successfully created.' }
        format.json { render action: 'show', status: :created, location: @outbox }
      else
        format.html { render action: 'new' }
        format.json { render json: @outbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outboxes/1
  # PATCH/PUT /outboxes/1.json
  def update
    respond_to do |format|
      if @outbox.update(outbox_params)
        format.html { redirect_to @outbox, notice: 'Outbox was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @outbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outboxes/1
  # DELETE /outboxes/1.json
  def destroy
    @outbox.destroy
    respond_to do |format|
      format.html { redirect_to outboxes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outbox
      @outbox = Outbox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outbox_params
      params.require(:outbox).permit(:primaryKey, :OUT_FROM_EMAIL, :OUT_TO_EMAIL, :OUT_SUBJECT, :OUT_BODY, :OUT_CC, :OUT_BCC, :OUT_REAL_NAME, :OUT_ATTACHMENT, :OUT_DATE_ADDED, :OUT_ADDED_BY, :OUT_SEND_DATE, :OUT_OK)
    end
end

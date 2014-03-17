class AvailsController < ApplicationController
  before_action :set_avail, only: [:show, :edit, :update, :destroy]

  # GET /avails
  # GET /avails.json
  def index
    @avails = Avail.all
  end

  # GET /avails/1
  # GET /avails/1.json
  def show
  end

  # GET /avails/new
  def new
    @avail = Avail.new
  end

  # GET /avails/1/edit
  def edit
  end

  # POST /avails
  # POST /avails.json
  def create
    @avail = Avail.new(avail_params)

    respond_to do |format|
      if @avail.save
        format.html { redirect_to @avail, notice: 'Avail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @avail }
      else
        format.html { render action: 'new' }
        format.json { render json: @avail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avails/1
  # PATCH/PUT /avails/1.json
  def update
    respond_to do |format|
      if @avail.update(avail_params)
        format.html { redirect_to @avail, notice: 'Avail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @avail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avails/1
  # DELETE /avails/1.json
  def destroy
    @avail.destroy
    respond_to do |format|
      format.html { redirect_to avails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avail
      @avail = Avail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avail_params
      params.require(:avail).permit(:primaryKey, :AV_INITIALS, :AV_DATE, :AV_KEY, :AV_KIND, :AV_NOTE, :AV_DESC, :AV_ADDED_BY, :AV_ADDED_WHEN, :AV_EDITED_BY, :AV_EDIT_WHEN)
    end
end

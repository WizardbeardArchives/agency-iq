class OdbcusersController < ApplicationController
  before_action :set_odbcuser, only: [:show, :edit, :update, :destroy]

  # GET /odbcusers
  # GET /odbcusers.json
  def index
    @odbcusers = Odbcuser.all
  end

  # GET /odbcusers/1
  # GET /odbcusers/1.json
  def show
  end

  # GET /odbcusers/new
  def new
    @odbcuser = Odbcuser.new
  end

  # GET /odbcusers/1/edit
  def edit
  end

  # POST /odbcusers
  # POST /odbcusers.json
  def create
    @odbcuser = Odbcuser.new(odbcuser_params)

    respond_to do |format|
      if @odbcuser.save
        format.html { redirect_to @odbcuser, notice: 'Odbcuser was successfully created.' }
        format.json { render action: 'show', status: :created, location: @odbcuser }
      else
        format.html { render action: 'new' }
        format.json { render json: @odbcuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /odbcusers/1
  # PATCH/PUT /odbcusers/1.json
  def update
    respond_to do |format|
      if @odbcuser.update(odbcuser_params)
        format.html { redirect_to @odbcuser, notice: 'Odbcuser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @odbcuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odbcusers/1
  # DELETE /odbcusers/1.json
  def destroy
    @odbcuser.destroy
    respond_to do |format|
      format.html { redirect_to odbcusers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_odbcuser
      @odbcuser = Odbcuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def odbcuser_params
      params.require(:odbcuser).permit(:ODBCUSERNAME, :ODBCPASSWORD, :ODBCACCESSMASK)
    end
end

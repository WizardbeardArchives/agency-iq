class AccessPrivsController < ApplicationController
  before_action :set_access_priv, only: [:show, :edit, :update, :destroy]

  # GET /access_privs
  # GET /access_privs.json
  def index
    @access_privs = AccessPriv.all
  end

  # GET /access_privs/1
  # GET /access_privs/1.json
  def show
  end

  # GET /access_privs/new
  def new
    @access_priv = AccessPriv.new
  end

  # GET /access_privs/1/edit
  def edit
  end

  # POST /access_privs
  # POST /access_privs.json
  def create
    @access_priv = AccessPriv.new(access_priv_params)

    respond_to do |format|
      if @access_priv.save
        format.html { redirect_to @access_priv, notice: 'Access priv was successfully created.' }
        format.json { render action: 'show', status: :created, location: @access_priv }
      else
        format.html { render action: 'new' }
        format.json { render json: @access_priv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /access_privs/1
  # PATCH/PUT /access_privs/1.json
  def update
    respond_to do |format|
      if @access_priv.update(access_priv_params)
        format.html { redirect_to @access_priv, notice: 'Access priv was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @access_priv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /access_privs/1
  # DELETE /access_privs/1.json
  def destroy
    @access_priv.destroy
    respond_to do |format|
      format.html { redirect_to access_privs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_access_priv
      @access_priv = AccessPriv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def access_priv_params
      params.require(:access_priv).permit(:primaryKey, :ACS_CLIENT_NUM, :ACS_INITIALS, :ACS_KEY, :ACS_SEE, :ACS_EDIT, :ACS_DEL, :ACS_PRINT)
    end
end

class Y1099sController < ApplicationController
  before_action :set_y1099, only: [:show, :edit, :update, :destroy]

  # GET /y1099s
  # GET /y1099s.json
  def index
    @y1099s = Y1099.all
  end

  # GET /y1099s/1
  # GET /y1099s/1.json
  def show
  end

  # GET /y1099s/new
  def new
    @y1099 = Y1099.new
  end

  # GET /y1099s/1/edit
  def edit
  end

  # POST /y1099s
  # POST /y1099s.json
  def create
    @y1099 = Y1099.new(y1099_params)

    respond_to do |format|
      if @y1099.save
        format.html { redirect_to @y1099, notice: 'Y1099 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @y1099 }
      else
        format.html { render action: 'new' }
        format.json { render json: @y1099.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /y1099s/1
  # PATCH/PUT /y1099s/1.json
  def update
    respond_to do |format|
      if @y1099.update(y1099_params)
        format.html { redirect_to @y1099, notice: 'Y1099 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @y1099.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /y1099s/1
  # DELETE /y1099s/1.json
  def destroy
    @y1099.destroy
    respond_to do |format|
      format.html { redirect_to y1099s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_y1099
      @y1099 = Y1099.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def y1099_params
      params.require(:y1099).permit(:primaryKey, :Y_NAME1, :Y_ADDRESS1, :Y_CITY_STATE1, :Y_ZIP1, :Y_TAX1, :Y_AMT1, :Y_NAME2, :Y_ADDRESS2, :Y_CITY_STATE2, :Y_ZIP2, :Y_TAX2, :Y_AMT2, :Y_NAME3, :Y_ADDRESS3, :Y_CITY_STATE3, :Y_ZIP3, :Y_AMT3, :Y_TAX3, :Y_DBA, :Y_DBA2, :Y_RENT, :Y_RENT2)
    end
end

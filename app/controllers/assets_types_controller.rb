class AssetsTypesController < ApplicationController
  before_action :set_assets_type, only: [:show, :edit, :update, :destroy]

  # GET /assets_types
  # GET /assets_types.json
  def index
    @assets_types = AssetsType.all
  end

  # GET /assets_types/1
  # GET /assets_types/1.json
  def show
  end

  # GET /assets_types/new
  def new
    @assets_type = AssetsType.new
  end

  # GET /assets_types/1/edit
  def edit
  end

  # POST /assets_types
  # POST /assets_types.json
  def create
    @assets_type = AssetsType.new(assets_type_params)

    respond_to do |format|
      if @assets_type.save
        format.html { redirect_to @assets_type, notice: 'Assets type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @assets_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @assets_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assets_types/1
  # PATCH/PUT /assets_types/1.json
  def update
    respond_to do |format|
      if @assets_type.update(assets_type_params)
        format.html { redirect_to @assets_type, notice: 'Assets type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @assets_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assets_types/1
  # DELETE /assets_types/1.json
  def destroy
    @assets_type.destroy
    respond_to do |format|
      format.html { redirect_to assets_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assets_type
      @assets_type = AssetsType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assets_type_params
      params.require(:assets_type).permit(:primaryKey, :AST_FILE_EXT, :AST_APP_NAME, :AST_DESC, :AST_CREATOR, :AST_ICON, :AST_USER, :AST_KIND)
    end
end

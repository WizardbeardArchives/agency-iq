class AssetsFilesController < ApplicationController
  before_action :set_assets_file, only: [:show, :edit, :update, :destroy]

  # GET /assets_files
  # GET /assets_files.json
  def index
    @assets_files = AssetsFile.all
  end

  # GET /assets_files/1
  # GET /assets_files/1.json
  def show
  end

  # GET /assets_files/new
  def new
    @assets_file = AssetsFile.new
  end

  # GET /assets_files/1/edit
  def edit
  end

  # POST /assets_files
  # POST /assets_files.json
  def create
    @assets_file = AssetsFile.new(assets_file_params)

    respond_to do |format|
      if @assets_file.save
        format.html { redirect_to @assets_file, notice: 'Assets file was successfully created.' }
        format.json { render action: 'show', status: :created, location: @assets_file }
      else
        format.html { render action: 'new' }
        format.json { render json: @assets_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assets_files/1
  # PATCH/PUT /assets_files/1.json
  def update
    respond_to do |format|
      if @assets_file.update(assets_file_params)
        format.html { redirect_to @assets_file, notice: 'Assets file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @assets_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assets_files/1
  # DELETE /assets_files/1.json
  def destroy
    @assets_file.destroy
    respond_to do |format|
      format.html { redirect_to assets_files_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assets_file
      @assets_file = AssetsFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assets_file_params
      params.require(:assets_file).permit(:primaryKey, :ASF_JOB_NUM, :ASF_FILE_NAME, :ASF_FILE_KIND, :ASF_ADDED_BY, :ASF_DATE_ADDED, :ASF_DATE_ACQUIRED, :ASF_DESC, :ASF_KEYWORD1, :ASF_KEYWORD2, :ASF_KEYWORD3, :ASF_SOURCE, :ASF_FIELD1_LABEL, :ASF_FIELD2_LABEL, :ASF_FIELD3_LABEL, :ASF_FIELD4_LABEL, :ASF_FIELD5_LABEL, :ASF_FIELD1, :ASF_FIELD2, :ASF_FIELD3, :ASF_FIELD4, :ASF_FIELD5, :ASF_OWNERSHIP, :ASF_AUTHOR_NAME, :ASF_AUTHOR_PHONE, :ASF_COPYRIGHT, :ASF_USAGE_RESTRICTION, :ASF_LAST_MOD_DATE, :ASF_LAST_MOD_BY, :ASF_LAST_MOD_DESC, :ASF_PROTECTED, :ASF_EDITED_BY, :ASF_EDITED_WHEN)
    end
end

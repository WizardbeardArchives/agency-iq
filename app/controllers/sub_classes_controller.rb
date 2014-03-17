class SubClassesController < ApplicationController
  before_action :set_sub_class, only: [:show, :edit, :update, :destroy]

  # GET /sub_classes
  # GET /sub_classes.json
  def index
    @sub_classes = SubClass.all
  end

  # GET /sub_classes/1
  # GET /sub_classes/1.json
  def show
  end

  # GET /sub_classes/new
  def new
    @sub_class = SubClass.new
  end

  # GET /sub_classes/1/edit
  def edit
  end

  # POST /sub_classes
  # POST /sub_classes.json
  def create
    @sub_class = SubClass.new(sub_class_params)

    respond_to do |format|
      if @sub_class.save
        format.html { redirect_to @sub_class, notice: 'Sub class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sub_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @sub_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_classes/1
  # PATCH/PUT /sub_classes/1.json
  def update
    respond_to do |format|
      if @sub_class.update(sub_class_params)
        format.html { redirect_to @sub_class, notice: 'Sub class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sub_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_classes/1
  # DELETE /sub_classes/1.json
  def destroy
    @sub_class.destroy
    respond_to do |format|
      format.html { redirect_to sub_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_class
      @sub_class = SubClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_class_params
      params.require(:sub_class).permit(:primaryKey, :SUB_NUM, :SUB_DESC, :SUB_ADDED_BY, :SUB_ADDED_WHEN, :SUB_EDITED_BY, :SUB_EDITED_WHEN)
    end
end

class PalmCatsController < ApplicationController
  before_action :set_palm_cat, only: [:show, :edit, :update, :destroy]

  # GET /palm_cats
  # GET /palm_cats.json
  def index
    @palm_cats = PalmCat.all
  end

  # GET /palm_cats/1
  # GET /palm_cats/1.json
  def show
  end

  # GET /palm_cats/new
  def new
    @palm_cat = PalmCat.new
  end

  # GET /palm_cats/1/edit
  def edit
  end

  # POST /palm_cats
  # POST /palm_cats.json
  def create
    @palm_cat = PalmCat.new(palm_cat_params)

    respond_to do |format|
      if @palm_cat.save
        format.html { redirect_to @palm_cat, notice: 'Palm cat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @palm_cat }
      else
        format.html { render action: 'new' }
        format.json { render json: @palm_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palm_cats/1
  # PATCH/PUT /palm_cats/1.json
  def update
    respond_to do |format|
      if @palm_cat.update(palm_cat_params)
        format.html { redirect_to @palm_cat, notice: 'Palm cat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @palm_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palm_cats/1
  # DELETE /palm_cats/1.json
  def destroy
    @palm_cat.destroy
    respond_to do |format|
      format.html { redirect_to palm_cats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palm_cat
      @palm_cat = PalmCat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palm_cat_params
      params.require(:palm_cat).permit(:primaryKey, :PALM_CAT_NAME, :PALM_CAT_ID, :PALM_CAT_USER)
    end
end

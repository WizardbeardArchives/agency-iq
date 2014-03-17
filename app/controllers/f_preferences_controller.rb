class FPreferencesController < ApplicationController
  before_action :set_f_preference, only: [:show, :edit, :update, :destroy]

  # GET /f_preferences
  # GET /f_preferences.json
  def index
    @f_preferences = FPreference.all
  end

  # GET /f_preferences/1
  # GET /f_preferences/1.json
  def show
  end

  # GET /f_preferences/new
  def new
    @f_preference = FPreference.new
  end

  # GET /f_preferences/1/edit
  def edit
  end

  # POST /f_preferences
  # POST /f_preferences.json
  def create
    @f_preference = FPreference.new(f_preference_params)

    respond_to do |format|
      if @f_preference.save
        format.html { redirect_to @f_preference, notice: 'F preference was successfully created.' }
        format.json { render action: 'show', status: :created, location: @f_preference }
      else
        format.html { render action: 'new' }
        format.json { render json: @f_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_preferences/1
  # PATCH/PUT /f_preferences/1.json
  def update
    respond_to do |format|
      if @f_preference.update(f_preference_params)
        format.html { redirect_to @f_preference, notice: 'F preference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @f_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_preferences/1
  # DELETE /f_preferences/1.json
  def destroy
    @f_preference.destroy
    respond_to do |format|
      format.html { redirect_to f_preferences_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_preference
      @f_preference = FPreference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_preference_params
      params.require(:f_preference).permit(:primaryKey, :prSQLConvFlag)
    end
end

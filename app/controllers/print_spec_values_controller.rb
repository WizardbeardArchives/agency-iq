class PrintSpecValuesController < ApplicationController
  before_action :set_print_spec_value, only: [:show, :edit, :update, :destroy]

  # GET /print_spec_values
  # GET /print_spec_values.json
  def index
    @print_spec_values = PrintSpecValue.all
  end

  # GET /print_spec_values/1
  # GET /print_spec_values/1.json
  def show
  end

  # GET /print_spec_values/new
  def new
    @print_spec_value = PrintSpecValue.new
  end

  # GET /print_spec_values/1/edit
  def edit
  end

  # POST /print_spec_values
  # POST /print_spec_values.json
  def create
    @print_spec_value = PrintSpecValue.new(print_spec_value_params)

    respond_to do |format|
      if @print_spec_value.save
        format.html { redirect_to @print_spec_value, notice: 'Print spec value was successfully created.' }
        format.json { render action: 'show', status: :created, location: @print_spec_value }
      else
        format.html { render action: 'new' }
        format.json { render json: @print_spec_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /print_spec_values/1
  # PATCH/PUT /print_spec_values/1.json
  def update
    respond_to do |format|
      if @print_spec_value.update(print_spec_value_params)
        format.html { redirect_to @print_spec_value, notice: 'Print spec value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @print_spec_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /print_spec_values/1
  # DELETE /print_spec_values/1.json
  def destroy
    @print_spec_value.destroy
    respond_to do |format|
      format.html { redirect_to print_spec_values_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_print_spec_value
      @print_spec_value = PrintSpecValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def print_spec_value_params
      params.require(:print_spec_value).permit(:primaryKey, :PSV_CAT, :PSV_VALUE, :PSV_ADDED_BY, :PSV_ADDED_WHEN, :PSV_EDITED_BY, :PSV_EDITED_WHEN)
    end
end

class SalesLettersController < ApplicationController
  before_action :set_sales_letter, only: [:show, :edit, :update, :destroy]

  # GET /sales_letters
  # GET /sales_letters.json
  def index
    @sales_letters = SalesLetter.all
  end

  # GET /sales_letters/1
  # GET /sales_letters/1.json
  def show
  end

  # GET /sales_letters/new
  def new
    @sales_letter = SalesLetter.new
  end

  # GET /sales_letters/1/edit
  def edit
  end

  # POST /sales_letters
  # POST /sales_letters.json
  def create
    @sales_letter = SalesLetter.new(sales_letter_params)

    respond_to do |format|
      if @sales_letter.save
        format.html { redirect_to @sales_letter, notice: 'Sales letter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sales_letter }
      else
        format.html { render action: 'new' }
        format.json { render json: @sales_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_letters/1
  # PATCH/PUT /sales_letters/1.json
  def update
    respond_to do |format|
      if @sales_letter.update(sales_letter_params)
        format.html { redirect_to @sales_letter, notice: 'Sales letter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sales_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_letters/1
  # DELETE /sales_letters/1.json
  def destroy
    @sales_letter.destroy
    respond_to do |format|
      format.html { redirect_to sales_letters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_letter
      @sales_letter = SalesLetter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_letter_params
      params.require(:sales_letter).permit(:primaryKey, :SLTR_ID, :SLTR_KIND, :SLTR_START, :SLTR_END, :SLTR_CLIENT_NUM, :SLTR_DESC, :SLTR_AUTHOR, :SLTR_OK, :SLTR_OK_BY, :SLTR_SUBJECT, :SLTR_BODY, :SLTR_PS, :SLTR_COUNT, :SLTR_LAST_USE, :SLTR_ONE_TIME, :SLTR_ADDED_BY, :SLTR_ADDED_WHEN, :SLTR_EDITED_BY, :SLTR_EDITED_WHEN)
    end
end

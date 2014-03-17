class HomebasesController < ApplicationController
  before_action :set_homebasis, only: [:show, :edit, :update, :destroy]

  # GET /homebases
  # GET /homebases.json
  def index
    @homebases = Homebase.all
  end

  # GET /homebases/1
  # GET /homebases/1.json
  def show
  end

  # GET /homebases/new
  def new
    @homebasis = Homebase.new
  end

  # GET /homebases/1/edit
  def edit
  end

  # POST /homebases
  # POST /homebases.json
  def create
    @homebasis = Homebase.new(homebasis_params)

    respond_to do |format|
      if @homebasis.save
        format.html { redirect_to @homebasis, notice: 'Homebase was successfully created.' }
        format.json { render action: 'show', status: :created, location: @homebasis }
      else
        format.html { render action: 'new' }
        format.json { render json: @homebasis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homebases/1
  # PATCH/PUT /homebases/1.json
  def update
    respond_to do |format|
      if @homebasis.update(homebasis_params)
        format.html { redirect_to @homebasis, notice: 'Homebase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @homebasis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homebases/1
  # DELETE /homebases/1.json
  def destroy
    @homebasis.destroy
    respond_to do |format|
      format.html { redirect_to homebases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homebasis
      @homebasis = Homebase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homebasis_params
      params.require(:homebasis).permit(:primaryKey, :HOME_JOB_NUM, :HOME_TASK, :HOME_STATUS, :HOME_S_INITIALS, :HOME_ADDED_BY, :HOME_DATE_ADDED, :HOME_DUE_DATE, :HOME_SUBJECT, :HOME_KIND, :HOME_REPLY, :HOME_PRIVATE1, :HOME_PRIVATE2, :HOME_PRIORITY, :HOME_SORT, :HOME_CHOICE1, :HOME_CHOICE2, :HOME_CHOICE3, :HOME_CHOICE4, :HOME_CHOICE5, :HOME_CHOICE6, :HOME_LAST_REPLY, :HOME_MESSAGE, :HOME_LOCKED, :HOME_ADDED_KIND, :HOME_COMMENT, :HOME_RATING, :HOME_PROD_STATUS, :HOME_ORIG__SEQ, :HOME_FILE_NAME, :HOME_X_PHASE, :HOME_AVAIL_CREATIVE, :HOME_AVAIL_PROD, :HOME_AVAIL_STAFF, :HOME_AVAIL_CLIENTS, :HOME_AVAIL_VENDORS, :HOME_EMAIL_IT)
    end
end

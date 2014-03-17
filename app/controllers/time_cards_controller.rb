class TimeCardsController < ApplicationController
  before_action :set_time_card, only: [:show, :edit, :update, :destroy]

  # GET /time_cards
  # GET /time_cards.json
  def index
    @time_cards = TimeCard.all
  end

  # GET /time_cards/1
  # GET /time_cards/1.json
  def show
  end

  # GET /time_cards/new
  def new
    @time_card = TimeCard.new
  end

  # GET /time_cards/1/edit
  def edit
  end

  # POST /time_cards
  # POST /time_cards.json
  def create
    @time_card = TimeCard.new(time_card_params)

    respond_to do |format|
      if @time_card.save
        format.html { redirect_to @time_card, notice: 'Time card was successfully created.' }
        format.json { render action: 'show', status: :created, location: @time_card }
      else
        format.html { render action: 'new' }
        format.json { render json: @time_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_cards/1
  # PATCH/PUT /time_cards/1.json
  def update
    respond_to do |format|
      if @time_card.update(time_card_params)
        format.html { redirect_to @time_card, notice: 'Time card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @time_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_cards/1
  # DELETE /time_cards/1.json
  def destroy
    @time_card.destroy
    respond_to do |format|
      format.html { redirect_to time_cards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_card
      @time_card = TimeCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_card_params
      params.require(:time_card).permit(:primaryKey, :TIME_START1, :TIME_START2, :TIME_START3, :TIME_START4, :TIME_START5, :TIME_START6, :TIME_START7, :TIME_START8, :TIME_START9, :TIME_START10, :TIME_START11, :TIME_START12, :TIME_START13, :TIME_START14, :TIME_START15, :TIME_START16, :TIME_START17, :TIME_START18, :TIME_START19, :TIME_START20, :TIME_END1, :TIME_END2, :TIME_END3, :TIME_END4, :TIME_END5, :TIME_END6, :TIME_END7, :TIME_END8, :TIME_END9, :TIME_END10, :TIME_END11, :TIME_END12, :TIME_END13, :TIME_END14, :TIME_END15, :TIME_END16, :TIME_END17, :TIME_END18, :TIME_END19, :TIME_END20, :TIME_JOB1, :TIME_JOB2, :TIME_JOB3, :TIME_JOB4, :TIME_JOB5, :TIME_JOB6, :TIME_JOB7, :TIME_JOB8, :TIME_JOB9, :TIME_JOB10, :TIME_JOB11, :TIME_JOB12, :TIME_JOB13, :TIME_JOB14, :TIME_JOB15, :TIME_JOB16, :TIME_JOB17, :TIME_JOB18, :TIME_JOB19, :TIME_JOB20, :TIME_TASK1, :TIME_TASK2, :TIME_TASK3, :TIME_TASK4, :TIME_TASK5, :TIME_TASK6, :TIME_TASK7, :TIME_TASK8, :TIME_TASK9, :TIME_TASK10, :TIME_TASK11, :TIME_TASK12, :TIME_TASK13, :TIME_TASK14, :TIME_TASK15, :TIME_TASK16, :TIME_TASK17, :TIME_TASK18, :TIME_TASK19, :TIME_TASK20, :TIME_HOURS1, :TIME_HOURS2, :TIME_HOURS3, :TIME_HOURS4, :TIME_HOURS5, :TIME_HOURS6, :TIME_HOURS7, :TIME_HOURS8, :TIME_HOURS9, :TIME_HOURS10, :TIME_HOURS11, :TIME_HOURS12, :TIME_HOURS13, :TIME_HOURS14, :TIME_HOURS15, :TIME_HOURS16, :TIME_HOURS17, :TIME_HOURS18, :TIME_HOURS19, :TIME_HOURS20, :TIME_DESC1, :TIME_DESC2, :TIME_DESC3, :TIME_DESC4, :TIME_DESC5, :TIME_DESC6, :TIME_DESC7, :TIME_DESC8, :TIME_DESC9, :TIME_DESC10, :TIME_DESC11, :TIME_DESC12, :TIME_DESC13, :TIME_DESC14, :TIME_DESC15, :TIME_DESC16, :TIME_DESC17, :TIME_DESC18, :TIME_DESC19, :TIME_DESC20, :TIME_BILLABLE1, :TIME_BILLABLE2, :TIME_BILLABLE3, :TIME_BILLABLE4, :TIME_BILLABLE5, :TIME_BILLABLE6, :TIME_BILLABLE7, :TIME_BILLABLE8, :TIME_BILLABLE9, :TIME_BILLABLE10, :TIME_BILLABLE11, :TIME_BILLABLE12, :TIME_BILLABLE13, :TIME_BILLABLE14, :TIME_BILLABLE15, :TIME_BILLABLE16, :TIME_BILLABLE17, :TIME_BILLABLE18, :TIME_BILLABLE19, :TIME_BILLABLE20, :TIME_STAFF, :TIME_DATE, :TIME_KEY, :TIME_POSTED, :TIME_OT1, :TIME_OT2, :TIME_OT3, :TIME_OT4, :TIME_OT5, :TIME_OT6, :TIME_OT7, :TIME_OT8, :TIME_OT9, :TIME_OT10, :TIME_OT11, :TIME_OT12, :TIME_OT13, :TIME_OT14, :TIME_OT15, :TIME_OT16, :TIME_OT17, :TIME_OT18, :TIME_OT19, :TIME_OT20, :TIME_CARD_LIST, :TIME_NEW)
    end
end

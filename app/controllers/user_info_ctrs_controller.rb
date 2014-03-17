class UserInfoCtrsController < ApplicationController
  before_action :set_user_info_ctr, only: [:show, :edit, :update, :destroy]

  # GET /user_info_ctrs
  # GET /user_info_ctrs.json
  def index
    @user_info_ctrs = UserInfoCtr.all
  end

  # GET /user_info_ctrs/1
  # GET /user_info_ctrs/1.json
  def show
  end

  # GET /user_info_ctrs/new
  def new
    @user_info_ctr = UserInfoCtr.new
  end

  # GET /user_info_ctrs/1/edit
  def edit
  end

  # POST /user_info_ctrs
  # POST /user_info_ctrs.json
  def create
    @user_info_ctr = UserInfoCtr.new(user_info_ctr_params)

    respond_to do |format|
      if @user_info_ctr.save
        format.html { redirect_to @user_info_ctr, notice: 'User info ctr was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_info_ctr }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_info_ctr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_info_ctrs/1
  # PATCH/PUT /user_info_ctrs/1.json
  def update
    respond_to do |format|
      if @user_info_ctr.update(user_info_ctr_params)
        format.html { redirect_to @user_info_ctr, notice: 'User info ctr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_info_ctr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_info_ctrs/1
  # DELETE /user_info_ctrs/1.json
  def destroy
    @user_info_ctr.destroy
    respond_to do |format|
      format.html { redirect_to user_info_ctrs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_info_ctr
      @user_info_ctr = UserInfoCtr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_info_ctr_params
      params.require(:user_info_ctr).permit(:primaryKey, :UI_WORK, :UI_PROC1, :UI_PROC2, :UI_PROC3, :UI_PROC4, :UI_PROC5, :UI_PROC6, :UI_LABEL1, :UI_LABEL2, :UI_LABEL3, :UI_LABEL4, :UI_LABEL5, :UI_LABEL6)
    end
end

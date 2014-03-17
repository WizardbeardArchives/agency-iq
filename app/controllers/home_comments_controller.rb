class HomeCommentsController < ApplicationController
  before_action :set_home_comment, only: [:show, :edit, :update, :destroy]

  # GET /home_comments
  # GET /home_comments.json
  def index
    @home_comments = HomeComment.all
  end

  # GET /home_comments/1
  # GET /home_comments/1.json
  def show
  end

  # GET /home_comments/new
  def new
    @home_comment = HomeComment.new
  end

  # GET /home_comments/1/edit
  def edit
  end

  # POST /home_comments
  # POST /home_comments.json
  def create
    @home_comment = HomeComment.new(home_comment_params)

    respond_to do |format|
      if @home_comment.save
        format.html { redirect_to @home_comment, notice: 'Home comment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @home_comment }
      else
        format.html { render action: 'new' }
        format.json { render json: @home_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_comments/1
  # PATCH/PUT /home_comments/1.json
  def update
    respond_to do |format|
      if @home_comment.update(home_comment_params)
        format.html { redirect_to @home_comment, notice: 'Home comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @home_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_comments/1
  # DELETE /home_comments/1.json
  def destroy
    @home_comment.destroy
    respond_to do |format|
      format.html { redirect_to home_comments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_comment
      @home_comment = HomeComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_comment_params
      params.require(:home_comment).permit(:primaryKey, :COMMENT_HOME__SEQ, :COMMENT_JOB_NUM, :COMMENT_TASK, :COMMENT_ADDED_BY, :COMMENT_DATE_ADDED, :COMMENT_KIND, :COMMENT_REPLY, :COMMENT_PRIVATE1, :COMMENT_PRIVATE2, :COMMENT_PRIORITY, :COMMENT_SORT, :COMMENT_CHOICE, :COMMENT_MESSAGE, :COMMENT_LOCKED, :COMMENT_ADDED_KIND, :COMMENT_RATING, :COMMENT_PROD_STATUS, :COMMENT_FILE_NAME, :COMMENT_X_PHASE, :COMMENT_PING, :COMMENT_FINAL, :COMMENT_STAR)
    end
end

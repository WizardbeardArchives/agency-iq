class SchedRevsController < ApplicationController
  before_action :set_sched_rev, only: [:show, :edit, :update, :destroy]

  # GET /sched_revs
  # GET /sched_revs.json
  def index
    @sched_revs = SchedRev.all
  end

  # GET /sched_revs/1
  # GET /sched_revs/1.json
  def show
  end

  # GET /sched_revs/new
  def new
    @sched_rev = SchedRev.new
  end

  # GET /sched_revs/1/edit
  def edit
  end

  # POST /sched_revs
  # POST /sched_revs.json
  def create
    @sched_rev = SchedRev.new(sched_rev_params)

    respond_to do |format|
      if @sched_rev.save
        format.html { redirect_to @sched_rev, notice: 'Sched rev was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sched_rev }
      else
        format.html { render action: 'new' }
        format.json { render json: @sched_rev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sched_revs/1
  # PATCH/PUT /sched_revs/1.json
  def update
    respond_to do |format|
      if @sched_rev.update(sched_rev_params)
        format.html { redirect_to @sched_rev, notice: 'Sched rev was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sched_rev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sched_revs/1
  # DELETE /sched_revs/1.json
  def destroy
    @sched_rev.destroy
    respond_to do |format|
      format.html { redirect_to sched_revs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sched_rev
      @sched_rev = SchedRev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sched_rev_params
      params.require(:sched_rev).permit(:primaryKey, :SCV_JOB_NUM, :SCV_TASK, :SCV_SORT, :SCV_TASK_NAME, :SCV_TASK_SPECS, :SCV_DUE_DATE, :SCV_DUE_WHEN, :SCV_RESOURCE, :SCV_LEAD_TIME, :SCV_START_DATE, :SCV_DATE_FINISHED, :SCV_FINISHED, :SCV_FINAL, :SCV_REVISION, :SCV_J_DUE_DATE, :SCV_J_START_DATE, :SCV_REVISED_BY, :SCV_REVISION_DATE, :SCV_REVISION_NOTES, :SCV_REASON, :SCV_REV_OKD_BY, :SCV_REV_OKD_DATE, :SCV_KIND, :SCV_ADDED_BY, :SCV_ADDED_WHEN, :SCV_EDITED_BY, :SCV_EDITED_WHEN)
    end
end

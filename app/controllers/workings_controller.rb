class WorkingsController < ApplicationController
  before_action :set_working, only: [:show, :edit, :update, :destroy]

  # GET /workings
  # GET /workings.json
  def index
    @workings = Working.all
  end

  # GET /workings/1
  # GET /workings/1.json
  def show
  end

  # GET /workings/new
  def new
    @working = Working.new
  end

  # GET /workings/1/edit
  def edit
  end

  # POST /workings
  # POST /workings.json
  def create
    @working = Working.new(working_params)

    respond_to do |format|
      if @working.save
        format.html { redirect_to @working, notice: 'Working was successfully created.' }
        format.json { render action: 'show', status: :created, location: @working }
      else
        format.html { render action: 'new' }
        format.json { render json: @working.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workings/1
  # PATCH/PUT /workings/1.json
  def update
    respond_to do |format|
      if @working.update(working_params)
        format.html { redirect_to @working, notice: 'Working was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @working.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workings/1
  # DELETE /workings/1.json
  def destroy
    @working.destroy
    respond_to do |format|
      format.html { redirect_to workings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working
      @working = Working.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def working_params
      params.require(:working).permit(:primaryKey, :W_WORK, :W_ORG, :W_DATABASE, :W_PHONE, :W_EXPIRES, :W_WHERE, :W_IN_OUT, :W_BILL_RATE, :W_FINANCE_CHG, :W_DEPT, :W_A_ADD_TASKS, :W_PO_NUMBERING, :W_YEAR, :W_CK_STOCK, :W_DEMO, :W_A_EDIT_JOBS, :W_GROUP_LIMIT, :W_A_AR_EDIT, :W_A_PRODUCTION, :W_NOTE_STATUS_CHANGE, :W_A_REOPEN_JOBS, :W_A_TIME_CLOSED_JOBS, :W_A_UTILITIES, :W_A_JOB_WIP, :W_A_UNPOST, :W_PASSWORD_EXP, :W_TERMS, :W_STATUS_NEW, :W_STATUS_REOPEN, :W_STATUS_CLOSED, :W_AE_TEAM, :W_AKA_CLIENT, :W_AKA_CLIENTS, :W_AKA_JOB, :W_AKA_JOBS, :W_AKA_TASK, :W_AKA_TASKS, :W_AKA_VENDOR, :W_AKA_VENDORS, :W_AKA_AR, :W_AKA_ARS, :W_A_OPEN_JOBS, :W_A_DELETE_JOBS, :W_A_REMOVE_TASKS, :W_A_EDIT_EST, :W_A_CHG_ORDERS, :W_A_UP_PROD_STATUS, :W_A_UP_BILL_STATUS, :W_PO_DISCLAIMER, :W_TAX_DESC1, :W_TAX_DESC2, :W_TAX_RATE1, :W_TAX_RATE2, :W_TAX_GL1, :W_TAX_GL2, :W_DATE_FORMAT, :W_ALERT_PO, :W_ALERT_PO_PC, :W_ALERT_COST, :W_ALERT_COST_PC, :W_ALERT_TIME, :W_ALERT_TIME_PC, :W_A_STATUS_TABLE, :W_A_UP_TRAFFIC, :W_A_UP_SCHEDULES, :W_A_CANT_CHG_PO, :W_A_HIDE_RATES, :W_INFO_CTR, :W_A_COST_CHECKS, :W_A_HIDE_TIME, :W_PO_TO1, :W_PO_TO2, :W_PO_TO3, :W_PO_TO4, :W_PO_TO5, :W_JOB_NUMBERING, :W_A_STATUS_CAT, :W_LOGO_ESTIMATE, :W_LOGO_AR, :W_LOGO_PO, :W_EST_DISCLAIMR, :W_STMT_NOTE, :W_AR_NOTE, :W_PO_NOTE, :W_GL_CASH, :W_GL_AR, :W_GL_AP, :W_GL_RETAINER, :W_GL_SALES, :W_GL_OVERHEAD, :W_GL_COST, :W_GL_RE, :W_PERIOD, :W_DATE1, :W_GL_EMPL_ADV, :W_PRINT_TO, :W_A_EST_OK, :W_A_LOOK_CLIENTS, :W_A_LOOK_JOBS, :W_A_LOOK_STAFF, :W_A_LOOK_COA, :W_A_LOOK_PC, :W_A_LOOK_DEPT, :W_A_LOOK_PO, :W_A_LOOK_PROJ, :W_A_LOOK_TYPES, :W_A_LOOK_VENDORS, :W_EST_HEADING, :W_INV_HEADING, :W_APPROVAL1, :W_APPROVAL2, :W_APPROVAL3, :W_A_ADD_XFERS, :W_A_IMPORT_PAYROLL, :W_A_XFER_ACCT_BAL, :W_A_TIME, :W_A_GL_AUDITOR, :W_A_CLOSE_YEAR, :W_A_RECUR_JE, :W_PO_SHOW_CL, :W_A_GL_RECONCILE, :W_A_ADD_COA, :W_A_GL_BUDGETS, :W_A_DELETE_OWN_PO, :W_A_ADJ_JE, :W_A_OVERHEAD_ALLOC, :W_A_IMPORT_TIME, :W_A_CLOSE_JOBS, :W_AKA_PO, :W_PO_APPROVAL1, :W_PO_APPROVAL2, :W_PO_APPROVAL3, :W_PO_FIELD1, :W_PO_FIELD2, :W_PO_FIELD3, :W_PO_FIELD4, :W_PO_FIELD5, :W_NEXT_JOB, :W_EQUITY_NAME, :W_INCOME_NAME, :W_COSTS_NAME, :W_OTHERINC_NAME, :W_OTHEREXP_NAME, :W_EXPENSES_NAME, :W_USER_NAME, :W_NEXT, :W_NEXT_PO_NUM, :W_A_CHANGE_GL, :W_GL_ADV_BILL, :W_LOGGED_IN, :W_LOGGED_OUT, :W_A_PO_MAX, :W_A_GL_POST, :W_AKA_POS, :W_JOBS_POS, :W_ESTIMATE_POS, :W_SCHEDULE_POS, :W_AR_POS, :W_PO_POS, :W_STATUS_POS, :W_UPTRAFFIC_POS, :W_TRAFFIC_POS, :W_MEDIA_POS, :W_JOBSPECS_POS, :W_TIME_POS, :W_A_POST_ONLY, :W_GL_AR_DISC, :W_GL_AP_DISC, :W_A_JOBS, :W_A_CLIENTS, :W_A_VENDORS, :W_A_STAFF, :W_A_AP, :W_A_CHECKS, :W_A_EXPENSES, :W_A_AR, :W_A_MANAGER, :W_A_PREFS, :W_A_COA, :W_A_TASK_TABLE, :W_A_FINANCIALS, :W_A_COSTS, :W_A_SEE_COSTS, :W_A_ADHOC, :W_A_GL, :W_A_CLIENT_PMTS, :W_A_CLIENT_AGING, :W_A_VENDOR_AGING, :W_A_WIP, :W_A_PROFITABILITY, :W_A_PRODUCTIVITY, :W_A_CASH_FLOW, :W_A_MEDIA, :W_A_XFERS, :W_STATUS_BILLED, :W_STATUS_AR_PAID, :W_A_PO_AMT, :W_GL_MEDIA_WIP, :W_GL_MEDIA_COSTS, :W_A_EMPL_ADV, :W_A_TIME_VIEW_DAYS, :W_A_HIDE_JOB_AMTS, :W_A_APPROVE_PO, :W_A_STAFF_ONLY, :W_A_CONFID_GL, :W_NUM11, :W_NUM12, :W_BUD_ALERT_C1, :W_BUD_ALERT_C2, :W_BUD_ALERT_L1, :W_BUD_ALERT_L2, :W_BUD_ALERT_PO1, :W_BUD_ALERT_PO2, :W_JOB_COLUMN1, :W_JOB_COLUMN2, :W_JOB_COLUMN3, :W_AKA, :W_SEP, :W_AKA_PROJECT, :W_FORCE_QUIT, :W_FORCE_TIME, :W_INFO_CTR_MSG, :W_CON_NOTE, :W_CON_PC, :W_UNIQ_JNUM, :W_JOBS_FROM, :W_JOBS_TO, :W_AKA_CLIENT_PO, :W_J_TO1, :W_J_TO2, :W_J_TO3, :W_J_TO4, :W_J_TO5, :W_CHAR20, :W_VERSION_A, :W_VERSION_B, :W_VERSION_C, :W_VERSION_KIND, :W_USER_FIELD3, :W_USER_FIELD4, :W_USER_FIELD5, :W_USER_FIELD6, :W_PO_TOTAL_LABEL, :W_AKA_PC, :W_AKA_PCS, :W_A_SALES_TAX, :W_A_SPELL, :W_A_IO_MAX, :W_A_APPROVE_AR, :W_A_DBA, :W_JOB_COL1, :W_JOB_COL2, :W_JOB_COL3, :W_JOB_COL4, :W_JOB_COL5, :W_JOB_COL6, :W_A_OK_REQUESTS, :W_A_APPROVE_TIME, :W_A_APPROVE_EXP, :W_A_CHANGE_PRIORITY, :W_A_MEDIA_SNAPS, :W_A_CLIENT_ADD, :W_A_WEB_ACCESS, :W_A_CUST_REPORTS, :W_A_COLLECT_MGR, :W_A_EMAIL, :W_A_APPROVE_AP, :W_A_APPROVE_JOBS, :W_A_APPROVE_SCH, :W_A_APPROVE_MO, :W_A_APPROVE_MESTS, :W_A_APPROVE_MPLANS, :W_A_APPROVE_MBRIEFS, :W_A_INT_CHARGES, :W_A_COMMISSIONS, :W_A_PRINT_SPECS, :W_A_APPROVE_PRINTSPECS, :W_A_RENUMBER, :W_A_VERIFY_RECOVER, :W_A_SEE_LABOR_NET, :W_A_HIDE_TOOLTIPS, :W_TCP_ADDRESS, :W_LAST_WORK_TIME, :W_LAST_WORK, :W_LOG_OFF_NOW, :W_A_JOB_SNAPSHOT, :W_GL_INT_BILL, :W_A_HIDE_RATES_BILL, :W_POS_CLIP_NOTE, :W_STATUS_NEW_B, :W_STATUS_CLOSED_B, :W_STATUS_REOPEN_B, :W_STATUS_BILLED_B, :W_STATUS_AR_PAID_B, :W_PRINT_STATUS_FROM, :W_PRINT_STATUS_TO, :W_WEB_ACCESS, :W_A_INST_JOBS, :W_PC, :W_TAX_RATE3, :W_TAX_DESC3, :W_TAX_GL3, :W_DASHBOARD, :W_A_JOB_BILL_WKST, :W_A_TIME_CARD)
    end
end

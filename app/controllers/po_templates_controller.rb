class PoTemplatesController < ApplicationController
  before_action :set_po_template, only: [:show, :edit, :update, :destroy]

  # GET /po_templates
  # GET /po_templates.json
  def index
    @po_templates = PoTemplate.all
  end

  # GET /po_templates/1
  # GET /po_templates/1.json
  def show
  end

  # GET /po_templates/new
  def new
    @po_template = PoTemplate.new
  end

  # GET /po_templates/1/edit
  def edit
  end

  # POST /po_templates
  # POST /po_templates.json
  def create
    @po_template = PoTemplate.new(po_template_params)

    respond_to do |format|
      if @po_template.save
        format.html { redirect_to @po_template, notice: 'Po template was successfully created.' }
        format.json { render action: 'show', status: :created, location: @po_template }
      else
        format.html { render action: 'new' }
        format.json { render json: @po_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /po_templates/1
  # PATCH/PUT /po_templates/1.json
  def update
    respond_to do |format|
      if @po_template.update(po_template_params)
        format.html { redirect_to @po_template, notice: 'Po template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @po_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /po_templates/1
  # DELETE /po_templates/1.json
  def destroy
    @po_template.destroy
    respond_to do |format|
      format.html { redirect_to po_templates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_po_template
      @po_template = PoTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def po_template_params
      params.require(:po_template).permit(:primaryKey, :PT_TEMPLATE, :PT_JOB_NUM, :PT_TASK, :PT_DESC_LABEL, :PT_DESC, :PT_VENDOR_NUM, :PT_COST, :PT_MARKUP, :PT_TAX, :PT_GROSS, :PT_TYPE, :PT_SHIP_NOTE, :PT_SHIP1, :PT_SHIP2, :PT_SHIP3, :PT_SHIP4, :PT_QTY_LABEL, :PT_QTY, :PT_APPROVAL1, :PT_APPROVAL2, :PT_APPROVAL3, :PT_TERMS1, :PT_TERMS2, :PT_TERMS3, :PT_PC, :PT_TO1, :PT_TO2, :PT_TO3, :PT_TO4, :PT_TO5, :PT_VENDOR1, :PT_VENDOR2, :PT_VENDOR3, :PT_VENDOR4, :PT_VENDOR5, :PT_FIELD_LABEL1, :PT_FIELD_LABEL2, :PT_FIELD_LABEL3, :PT_FIELD_LABEL4, :PT_FIELD_LABEL5, :PT_FIELD1, :PT_FIELD2, :PT_FIELD3, :PT_FIELD4, :PT_FIELD5, :PT_TAX_EXEMPT, :PT_DISCLAIMER, :PT_ITEM_DESC, :PT_KIND, :PT_ADDED_BY, :PT_ADDED_WHEN, :PT_EDITED_BY, :PT_EDITED_WHEN, :PT_TERMS_CONDITIONS, :PT_TERMS_HEADER, :PT_TERMS_PRINT1, :PT_TERMS_PRINT2, :PT_TERMS_PRINT3, :PT_TERMS_PRINT4, :PT_TERMS_PRINT5)
    end
end

class ApPdfsController < ApplicationController
  before_action :set_ap_pdf, only: [:show, :edit, :update, :destroy]

  # GET /ap_pdfs
  # GET /ap_pdfs.json
  def index
    @ap_pdfs = ApPdf.all
  end

  # GET /ap_pdfs/1
  # GET /ap_pdfs/1.json
  def show
  end

  # GET /ap_pdfs/new
  def new
    @ap_pdf = ApPdf.new
  end

  # GET /ap_pdfs/1/edit
  def edit
  end

  # POST /ap_pdfs
  # POST /ap_pdfs.json
  def create
    @ap_pdf = ApPdf.new(ap_pdf_params)

    respond_to do |format|
      if @ap_pdf.save
        format.html { redirect_to @ap_pdf, notice: 'Ap pdf was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ap_pdf }
      else
        format.html { render action: 'new' }
        format.json { render json: @ap_pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ap_pdfs/1
  # PATCH/PUT /ap_pdfs/1.json
  def update
    respond_to do |format|
      if @ap_pdf.update(ap_pdf_params)
        format.html { redirect_to @ap_pdf, notice: 'Ap pdf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ap_pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ap_pdfs/1
  # DELETE /ap_pdfs/1.json
  def destroy
    @ap_pdf.destroy
    respond_to do |format|
      format.html { redirect_to ap_pdfs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ap_pdf
      @ap_pdf = ApPdf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ap_pdf_params
      params.require(:ap_pdf).permit(:primaryKey, :AP_PDF_KEY, :AP_PDF_BINARY)
    end
end

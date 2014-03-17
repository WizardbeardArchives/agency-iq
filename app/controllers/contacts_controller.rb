class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:primaryKey, :CON_C_NUM, :CON_V_NUM, :CON_KIND, :CON_FIRST_NAME, :CON_LAST_NAME, :CON_MID_INITIAL, :CON_SAL, :CON_TITLE, :CON_DECISION_MAKER, :CON_PHONE_WORK, :CON_PHONE_HOME, :CON_PHONE_MOBILE, :CON_FAX_WORK, :CON_PAGER, :CON_NOTE, :CON_EMAIL_WORK, :CON_EMAIL_HOME, :CON_DATE_ADDED, :CON_ADDED_BY, :CON_LAST_CALL, :CON_LAST_BY, :CON_FAX_HOME, :CON_SALES_EMAIL, :CON_ORG, :CON_FULL_NAME, :CON_ADDRESS1, :CON_ADDRESS2, :CON_ADDRESS3, :CON_ADDRESS4, :CON_ADDRESS5, :CON_ADDRESS6, :CON_APPROVE_JOBS, :CON_EDITED_BY, :CON_EDITED_WHEN)
    end
end

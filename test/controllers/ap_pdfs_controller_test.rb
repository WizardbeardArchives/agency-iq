require 'test_helper'

class ApPdfsControllerTest < ActionController::TestCase
  setup do
    @ap_pdf = ap_pdfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ap_pdfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ap_pdf" do
    assert_difference('ApPdf.count') do
      post :create, ap_pdf: { AP_PDF_BINARY: @ap_pdf.AP_PDF_BINARY, AP_PDF_KEY: @ap_pdf.AP_PDF_KEY, primaryKey: @ap_pdf.primaryKey }
    end

    assert_redirected_to ap_pdf_path(assigns(:ap_pdf))
  end

  test "should show ap_pdf" do
    get :show, id: @ap_pdf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ap_pdf
    assert_response :success
  end

  test "should update ap_pdf" do
    patch :update, id: @ap_pdf, ap_pdf: { AP_PDF_BINARY: @ap_pdf.AP_PDF_BINARY, AP_PDF_KEY: @ap_pdf.AP_PDF_KEY, primaryKey: @ap_pdf.primaryKey }
    assert_redirected_to ap_pdf_path(assigns(:ap_pdf))
  end

  test "should destroy ap_pdf" do
    assert_difference('ApPdf.count', -1) do
      delete :destroy, id: @ap_pdf
    end

    assert_redirected_to ap_pdfs_path
  end
end

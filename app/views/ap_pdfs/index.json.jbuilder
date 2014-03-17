json.array!(@ap_pdfs) do |ap_pdf|
  json.extract! ap_pdf, :id, :primaryKey, :AP_PDF_KEY, :AP_PDF_BINARY
  json.url ap_pdf_url(ap_pdf, format: :json)
end

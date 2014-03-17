json.array!(@claven_sales) do |claven_sale|
  json.extract! claven_sale, :id, :S_NUM, :S_PR_JOB_NUM, :S_PR_TASK, :S_CLIENT, :S_HOW_PAID, :S_TERMS, :S_INVOICE_DATE, :S_SHIP_ORG, :S_PRICE, :S_PRODUCT_NAME, :S_TS_CREDIT_AMT, :S_DISC_DESC, :S_ADDL_QTY, :S_ADDL_USER_AMT, :S_OPTIONS_DESC, :S_AMT_OPTIONS, :S_TAX_RATE, :S_SUPPORT_AMT, :S_SHIP_AMT, :S_INVOICE_TOTAL, :S_DISCOUNT, :S_SALES_TAX
  json.url claven_sale_url(claven_sale, format: :json)
end

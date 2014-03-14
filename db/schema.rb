# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "access_privs", primary_key: "ACS_SEQ", force: true do |t|
    t.string  "ACS_CLIENT_NUM", limit: 10
    t.string  "ACS_INITIALS",   limit: 10
    t.string  "ACS_KEY",        limit: 20
    t.integer "ACS_SEE",        limit: 1
    t.integer "ACS_EDIT",       limit: 1
    t.integer "ACS_DEL",        limit: 1
    t.integer "ACS_PRINT",      limit: 1
  end

  add_index "access_privs", ["ACS_CLIENT_NUM"], name: "ACS_CLIENT_NUM", using: :btree
  add_index "access_privs", ["ACS_INITIALS"], name: "ACS_INITIALS", using: :btree
  add_index "access_privs", ["ACS_KEY"], name: "ACS_KEY", using: :btree
  add_index "access_privs", ["ACS_SEQ"], name: "ACS_SEQ", unique: true, using: :btree

  create_table "accounts", primary_key: "AC_SEQ", force: true do |t|
    t.decimal  "AC_NUM",                        precision: 15, scale: 2
    t.string   "AC_NAME",           limit: 40
    t.decimal  "AC_CLASS",                      precision: 15, scale: 0
    t.decimal  "AC_SUB_CLASS",                  precision: 15, scale: 0
    t.decimal  "AC_CONFIDENTIAL",               precision: 9,  scale: 0
    t.decimal  "AC_ROLLUP_ONLY",                precision: 15, scale: 2
    t.decimal  "AC_CK_NUM",                     precision: 15, scale: 0
    t.string   "AC_PC",             limit: 10
    t.decimal  "AC_1",                          precision: 15, scale: 2
    t.decimal  "AC_2",                          precision: 15, scale: 2
    t.decimal  "AC_3",                          precision: 15, scale: 2
    t.decimal  "AC_4",                          precision: 15, scale: 2
    t.decimal  "AC_5",                          precision: 15, scale: 2
    t.decimal  "AC_6",                          precision: 15, scale: 2
    t.decimal  "AC_7",                          precision: 15, scale: 2
    t.decimal  "AC_8",                          precision: 15, scale: 2
    t.decimal  "AC_9",                          precision: 15, scale: 2
    t.decimal  "AC_10",                         precision: 15, scale: 2
    t.decimal  "AC_11",                         precision: 15, scale: 2
    t.decimal  "AC_12",                         precision: 15, scale: 2
    t.decimal  "AC_BEG_BALN",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET1",                    precision: 15, scale: 2
    t.decimal  "AC_BUDGET2",                    precision: 15, scale: 2
    t.decimal  "AC_BUDGET3",                    precision: 15, scale: 2
    t.decimal  "AC_BUDGET4",                    precision: 15, scale: 2
    t.decimal  "AC_BUDGET5",                    precision: 15, scale: 2
    t.decimal  "AC_BUDGET6",                    precision: 15, scale: 2
    t.decimal  "AC_BUDGET7",                    precision: 15, scale: 2
    t.decimal  "AC_BUDGET8",                    precision: 15, scale: 2
    t.decimal  "AC_BUDGET9",                    precision: 15, scale: 2
    t.decimal  "AC_BUDGET10",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET11",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET12",                   precision: 15, scale: 2
    t.decimal  "AC_B13",                        precision: 15, scale: 2
    t.decimal  "AC_L1",                         precision: 15, scale: 2
    t.decimal  "AC_L2",                         precision: 15, scale: 2
    t.decimal  "AC_L3",                         precision: 15, scale: 2
    t.decimal  "AC_L4",                         precision: 15, scale: 2
    t.decimal  "AC_L5",                         precision: 15, scale: 2
    t.decimal  "AC_L6",                         precision: 15, scale: 2
    t.decimal  "AC_L7",                         precision: 15, scale: 2
    t.decimal  "AC_L8",                         precision: 15, scale: 2
    t.decimal  "AC_L9",                         precision: 15, scale: 2
    t.decimal  "AC_L10",                        precision: 15, scale: 2
    t.decimal  "AC_L11",                        precision: 15, scale: 2
    t.decimal  "AC_L12",                        precision: 15, scale: 2
    t.decimal  "AC_L_BEG_BALN",                 precision: 15, scale: 2
    t.decimal  "AC_GROUP",                      precision: 15, scale: 0
    t.decimal  "AC_CATEGORY",                   precision: 15, scale: 0
    t.decimal  "AC_YTD",                        precision: 15, scale: 2
    t.decimal  "AC_ROLL_UP",                    precision: 15, scale: 2
    t.decimal  "AC_ACTIVE",                     precision: 15, scale: 0
    t.decimal  "AC_CK_ACCT",                    precision: 15, scale: 0
    t.text     "AC_DESC"
    t.decimal  "AC_13",                         precision: 15, scale: 2
    t.decimal  "AC_14",                         precision: 15, scale: 2
    t.decimal  "AC_15",                         precision: 15, scale: 2
    t.decimal  "AC_16",                         precision: 15, scale: 2
    t.decimal  "AC_17",                         precision: 15, scale: 2
    t.decimal  "AC_18",                         precision: 15, scale: 2
    t.decimal  "AC_19",                         precision: 15, scale: 2
    t.decimal  "AC_20",                         precision: 15, scale: 2
    t.decimal  "AC_21",                         precision: 15, scale: 2
    t.decimal  "AC_22",                         precision: 15, scale: 2
    t.decimal  "AC_23",                         precision: 15, scale: 2
    t.decimal  "AC_24",                         precision: 15, scale: 2
    t.decimal  "AC_YTD2",                       precision: 15, scale: 2
    t.integer  "AC_CF",             limit: 1
    t.integer  "AC_RATIO",          limit: 1
    t.decimal  "AC_AR_CONTROL",                 precision: 15, scale: 0
    t.decimal  "AC_AP_CONTROL",                 precision: 15, scale: 0
    t.string   "AC_AR_LOCK",        limit: 1
    t.string   "AC_AP_LOCK",        limit: 1
    t.decimal  "AC_DEPT",                       precision: 9,  scale: 0
    t.decimal  "AC_BUDGET13",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET14",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET15",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET16",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET17",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET18",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET19",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET20",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET21",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET22",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET23",                   precision: 15, scale: 2
    t.decimal  "AC_BUDGET24",                   precision: 15, scale: 2
    t.string   "AC_CORP_ID",        limit: 100
    t.string   "AC_ADDED_BY",       limit: 4
    t.datetime "AC_ADDED_WHEN"
    t.string   "AC_EDITED_BY",      limit: 4
    t.datetime "AC_EDITED_WHEN"
    t.decimal  "AC_BANK_ROUTING",               precision: 15, scale: 0
    t.decimal  "AC_BANK_ACCT_NUM",              precision: 15, scale: 0
    t.string   "AC_BANK_NAME",      limit: 40
    t.string   "AC_BANK_LOCATION",  limit: 40
    t.string   "AC_BANK_NUM",       limit: 40
    t.decimal  "AC_ONLINE_PMT_NUM",             precision: 9,  scale: 0
  end

  add_index "accounts", ["AC_ADDED_WHEN"], name: "AC_ADDED_WHEN", using: :btree
  add_index "accounts", ["AC_AP_CONTROL"], name: "AC_AP_CONTROL", using: :btree
  add_index "accounts", ["AC_AR_CONTROL"], name: "AC_AR_CONTROL", using: :btree
  add_index "accounts", ["AC_CF"], name: "AC_CF", using: :btree
  add_index "accounts", ["AC_CLASS"], name: "AC_CLASS", using: :btree
  add_index "accounts", ["AC_NAME"], name: "AC_NAME", using: :btree
  add_index "accounts", ["AC_NUM"], name: "AC_NUM", using: :btree
  add_index "accounts", ["AC_PC"], name: "AC_PC", using: :btree
  add_index "accounts", ["AC_ROLLUP_ONLY"], name: "AC_ROLLUP_ONLY", using: :btree
  add_index "accounts", ["AC_SEQ"], name: "AC_SEQ", unique: true, using: :btree

  create_table "acct_periods", id: false, force: true do |t|
    t.string  "PERIOD_ID",        limit: 4
    t.string  "PERIOD_1",         limit: 15
    t.string  "PERIOD_2",         limit: 15
    t.string  "PERIOD_3",         limit: 15
    t.string  "PERIOD_4",         limit: 15
    t.string  "PERIOD_5",         limit: 15
    t.string  "PERIOD_6",         limit: 15
    t.string  "PERIOD_7",         limit: 15
    t.string  "PERIOD_8",         limit: 15
    t.string  "PERIOD_9",         limit: 15
    t.string  "PERIOD_10",        limit: 15
    t.string  "PERIOD_11",        limit: 15
    t.string  "PERIOD_12",        limit: 15
    t.string  "PERIOD_13",        limit: 15
    t.string  "PERIOD_14",        limit: 15
    t.string  "PERIOD_15",        limit: 15
    t.string  "PERIOD_16",        limit: 15
    t.string  "PERIOD_17",        limit: 15
    t.string  "PERIOD_18",        limit: 15
    t.string  "PERIOD_19",        limit: 15
    t.string  "PERIOD_20",        limit: 15
    t.string  "PERIOD_21",        limit: 15
    t.string  "PERIOD_22",        limit: 15
    t.string  "PERIOD_23",        limit: 15
    t.string  "PERIOD_24",        limit: 15
    t.integer "PERIOD_LOCK1",     limit: 1
    t.integer "PERIOD_LOCK2",     limit: 1
    t.integer "PERIOD_LOCK3",     limit: 1
    t.integer "PERIOD_LOCK4",     limit: 1
    t.integer "PERIOD_LOCK5",     limit: 1
    t.integer "PERIOD_LOCK6",     limit: 1
    t.integer "PERIOD_LOCK7",     limit: 1
    t.integer "PERIOD_LOCK8",     limit: 1
    t.integer "PERIOD_LOCK9",     limit: 1
    t.integer "PERIOD_LOCK10",    limit: 1
    t.integer "PERIOD_LOCK11",    limit: 1
    t.integer "PERIOD_LOCK12",    limit: 1
    t.integer "PERIOD_LOCK13",    limit: 1
    t.integer "PERIOD_LOCK14",    limit: 1
    t.integer "PERIOD_LOCK15",    limit: 1
    t.integer "PERIOD_LOCK16",    limit: 1
    t.integer "PERIOD_LOCK17",    limit: 1
    t.integer "PERIOD_LOCK18",    limit: 1
    t.integer "PERIOD_LOCK19",    limit: 1
    t.integer "PERIOD_LOCK20",    limit: 1
    t.integer "PERIOD_LOCK21",    limit: 1
    t.integer "PERIOD_LOCK22",    limit: 1
    t.integer "PERIOD_LOCK23",    limit: 1
    t.integer "PERIOD_LOCK24",    limit: 1
    t.date    "PERIOD_FIRST_DAY"
    t.integer "PERIOD_CURR_PER",  limit: 1
    t.string  "PERIOD_FY1_NAME",  limit: 15
    t.string  "PERIOD_FY2_NAME",  limit: 15
  end

  add_index "acct_periods", ["PERIOD_ID"], name: "PERIOD_ID", using: :btree

  create_table "addresses", primary_key: "ADR_SEQ", force: true do |t|
    t.string   "ADR_CLIENT_NUM",  limit: 10
    t.string   "ADR_NAME",        limit: 20
    t.string   "ADR_ADDRESS1",    limit: 50
    t.string   "ADR_ADDRESS2",    limit: 50
    t.string   "ADR_ADDRESS3",    limit: 50
    t.string   "ADR_ADDRESS4",    limit: 50
    t.string   "ADR_ADDRESS5",    limit: 50
    t.string   "ADR_ADDRESS6",    limit: 50
    t.integer  "ADR_KIND",        limit: 1
    t.string   "ADR_ORG",         limit: 50
    t.string   "ADR_TAX_AREA",    limit: 30
    t.decimal  "ADR_TAX_RATE1",              precision: 15, scale: 4
    t.decimal  "ADR_TAX_RATE2",              precision: 15, scale: 4
    t.decimal  "ADR_TAX_GL1",                precision: 15, scale: 0
    t.decimal  "ADR_TAX_GL2",                precision: 15, scale: 0
    t.string   "ADR_ADDED_BY",    limit: 4
    t.datetime "ADR_ADDED_WHEN"
    t.string   "ADR_EDITED_BY",   limit: 4
    t.datetime "ADR_EDITED_WHEN"
  end

  add_index "addresses", ["ADR_CLIENT_NUM"], name: "ADR_CLIENT_NUM", using: :btree
  add_index "addresses", ["ADR_NAME"], name: "ADR_NAME", using: :btree
  add_index "addresses", ["ADR_SEQ"], name: "ADR_SEQ", unique: true, using: :btree

  create_table "ap", primary_key: "AP_SEQ", force: true do |t|
    t.string   "AP_NUM",             limit: 20
    t.string   "AP_VENDOR_NUM",      limit: 10
    t.date     "AP_DATE"
    t.string   "AP_KEY",             limit: 30
    t.text     "AP_DESC"
    t.decimal  "AP_CGL",                        precision: 15, scale: 2
    t.decimal  "AP_NET_AMT",                    precision: 15, scale: 2
    t.decimal  "AP_COMM_NET",                   precision: 9,  scale: 2
    t.decimal  "AP_MARKUP_PC",                  precision: 9,  scale: 2
    t.decimal  "AP_TAX_AMT",                    precision: 9,  scale: 2
    t.decimal  "AP_GROSS_AMT",                  precision: 15, scale: 2
    t.date     "AP_POSTED"
    t.decimal  "AP_TOTAL_AMT",                  precision: 15, scale: 2
    t.date     "AP_DISC_DATE"
    t.integer  "AP_JUMPSTART",       limit: 1
    t.string   "AP_ADDED_BY",        limit: 4
    t.date     "AP_ADDED_WHEN"
    t.string   "AP_VOUCHER",         limit: 10
    t.decimal  "AP_TERMS1",                     precision: 9,  scale: 0
    t.decimal  "AP_TERMS2",                     precision: 9,  scale: 0
    t.decimal  "AP_TERMS3",                     precision: 9,  scale: 0
    t.date     "AP_PAY_DATE"
    t.decimal  "AP_PERIOD",                     precision: 9,  scale: 0
    t.decimal  "AP_CURRENT",                    precision: 9,  scale: 2
    t.decimal  "AP_30",                         precision: 9,  scale: 2
    t.decimal  "AP_60",                         precision: 9,  scale: 2
    t.decimal  "AP_90",                         precision: 9,  scale: 2
    t.string   "AP_AUTO_PAY",        limit: 10
    t.decimal  "AP_GST_GL",                     precision: 15, scale: 2
    t.decimal  "AP_GST1",                       precision: 9,  scale: 2
    t.decimal  "AP_GST2",                       precision: 9,  scale: 2
    t.decimal  "AP_AMT_PAID",                   precision: 15, scale: 2
    t.date     "AP_CLIENT_PAID"
    t.integer  "AP_CLOSE_PO",        limit: 1
    t.decimal  "AP_UNPAID",                     precision: 9,  scale: 0
    t.integer  "AP_KIND",            limit: 1
    t.decimal  "AP_DISC_TAKEN",                 precision: 9,  scale: 2
    t.date     "AP_EXPORTED"
    t.integer  "AP_APPROVED",        limit: 1
    t.string   "AP_APPROVED_BY",     limit: 4
    t.datetime "AP_APPROVED_DATE"
    t.string   "AP_EDITED_BY",       limit: 4
    t.datetime "AP_EDITED_WHEN"
    t.string   "AP_POSTED_BY",       limit: 4
    t.date     "AP_POSTED_WHEN"
    t.string   "AP_PAID_CC",         limit: 10
    t.date     "AP_DATE_PAID"
    t.string   "AP_PAID_CC_INV_NUM", limit: 20
    t.integer  "AP_PAID_ONLINE",     limit: 1
  end

  add_index "ap", ["AP_AUTO_PAY"], name: "AP_AUTO_PAY", using: :btree
  add_index "ap", ["AP_DATE"], name: "AP_DATE", using: :btree
  add_index "ap", ["AP_EDITED_BY"], name: "AP_EDITED_BY", using: :btree
  add_index "ap", ["AP_KEY"], name: "AP_KEY", using: :btree
  add_index "ap", ["AP_NUM"], name: "AP_NUM", using: :btree
  add_index "ap", ["AP_PAY_DATE"], name: "AP_PAY_DATE", using: :btree
  add_index "ap", ["AP_POSTED"], name: "AP_POSTED", using: :btree
  add_index "ap", ["AP_SEQ"], name: "AP_SEQ", unique: true, using: :btree
  add_index "ap", ["AP_UNPAID"], name: "AP_UNPAID", using: :btree
  add_index "ap", ["AP_VENDOR_NUM"], name: "AP_VENDOR_NUM", using: :btree

  create_table "ap_pdfs", primary_key: "AP_PDF_SEQ", force: true do |t|
    t.string "AP_PDF_KEY",    limit: 30
    t.binary "AP_PDF_BINARY", limit: 16777215
  end

  add_index "ap_pdfs", ["AP_PDF_KEY"], name: "AP_PDF_KEY", using: :btree
  add_index "ap_pdfs", ["AP_PDF_SEQ"], name: "AP_PDF_SEQ", unique: true, using: :btree

  create_table "approvals", primary_key: "APPR_SEQ", force: true do |t|
    t.string   "APPR_ADDED_BY",       limit: 4
    t.datetime "APPR_DATE_ADDED"
    t.datetime "APPR_DATE_EXPIRES"
    t.text     "APPR_INSTRUCTIONS"
    t.string   "APPR_OKD_BY",         limit: 4
    t.string   "APPR_ID",             limit: 20
    t.integer  "APPR_STATUS",         limit: 1
    t.text     "APPR_STATUS_NOTE"
    t.datetime "APPR_OKD_DATE"
    t.integer  "APPR_RUSH",           limit: 1
    t.string   "APPR_JOB_NUM",        limit: 10
    t.string   "APPR_CLIENT_NUM",     limit: 10
    t.string   "APPR_REPLY_TO",       limit: 100
    t.datetime "APPR_NEEDED_WHEN"
    t.string   "APPR_NEEDED_BY",      limit: 4
    t.datetime "APPR_SENT_DATE"
    t.integer  "APPR_DRAFT",          limit: 1
    t.integer  "APPR_KIND",           limit: 1
    t.text     "APPR_CHANGES"
    t.string   "APPR_STEP_DESC",      limit: 200
    t.string   "APPR_REF_NUM",        limit: 20
    t.string   "APPR_NEEDED_BY_NAME", limit: 200
    t.text     "APPR_FILE_PATH"
    t.string   "APPR_EDITED_BY",      limit: 4
    t.datetime "APPR_EDITED_WHEN"
  end

  add_index "approvals", ["APPR_ADDED_BY"], name: "APPR_ADDED_BY", using: :btree
  add_index "approvals", ["APPR_CLIENT_NUM"], name: "APPR_CLIENT_NUM", using: :btree
  add_index "approvals", ["APPR_DATE_EXPIRES"], name: "APPR_DATE_EXPIRES", using: :btree
  add_index "approvals", ["APPR_ID"], name: "APPR_ID", using: :btree
  add_index "approvals", ["APPR_JOB_NUM"], name: "APPR_JOB_NUM", using: :btree
  add_index "approvals", ["APPR_KIND"], name: "APPR_KIND", using: :btree
  add_index "approvals", ["APPR_NEEDED_BY"], name: "APPR_NEEDED_BY", using: :btree
  add_index "approvals", ["APPR_SEQ"], name: "APPR_SEQ", unique: true, using: :btree

  create_table "approvals_items", primary_key: "APPRX_SEQ", force: true do |t|
    t.string  "APPRX_ID",          limit: 20
    t.string  "APPRX_FILE_NAME",   limit: 100
    t.text    "APPRX_FILE_CPX"
    t.integer "APPRX_STATUS",      limit: 1
    t.text    "APPRX_STATUS_NOTE"
  end

  add_index "approvals_items", ["APPRX_ID"], name: "APPRX_ID", using: :btree
  add_index "approvals_items", ["APPRX_SEQ"], name: "APPRX_SEQ", unique: true, using: :btree

  create_table "ar", primary_key: "AR_SEQ", force: true do |t|
    t.string   "AR_NUM",                limit: 10
    t.string   "AR_JOB_NUM",            limit: 10
    t.string   "AR_CLIENT_NUM",         limit: 10
    t.date     "AR_DATE"
    t.date     "AR_POSTED"
    t.string   "AR_AE",                 limit: 10
    t.string   "AR_TERMS",              limit: 50
    t.decimal  "AR_PERIOD",                        precision: 9,  scale: 0
    t.string   "AR_PO",                 limit: 15
    t.text     "AR_DESC"
    t.date     "AR_DUE_DATE"
    t.decimal  "AR_COUNT",                         precision: 9,  scale: 0
    t.date     "AR_DISC_DUE"
    t.decimal  "AR_DISC_AMT",                      precision: 15, scale: 2
    t.decimal  "AR_AMT_PAID",                      precision: 15, scale: 2
    t.decimal  "AR_TOTAL",                         precision: 15, scale: 2
    t.decimal  "AR_DAYS",                          precision: 9,  scale: 0
    t.decimal  "AR_TAX_AMT1",                      precision: 15, scale: 2
    t.decimal  "AR_TAX_AMT2",                      precision: 15, scale: 2
    t.decimal  "AR_TAXABLE1",                      precision: 15, scale: 2
    t.decimal  "AR_TAXABLE2",                      precision: 15, scale: 2
    t.decimal  "AR_TAX_RATE1",                     precision: 15, scale: 4
    t.decimal  "AR_TAX_RATE2",                     precision: 15, scale: 4
    t.decimal  "AR_TAX_CGL1",                      precision: 15, scale: 2
    t.decimal  "AR_TAX_CGL2",                      precision: 15, scale: 2
    t.string   "AR_STATUS",             limit: 20
    t.integer  "AR_OPEN",               limit: 1
    t.integer  "AR_JUMP",               limit: 1
    t.decimal  "AR_DGL",                           precision: 15, scale: 2
    t.decimal  "AR_CURR",                          precision: 15, scale: 2
    t.decimal  "AR_30",                            precision: 15, scale: 2
    t.decimal  "AR_60",                            precision: 15, scale: 2
    t.decimal  "AR_90",                            precision: 15, scale: 2
    t.decimal  "AR_120",                           precision: 15, scale: 2
    t.string   "AR_ADDED_BY",           limit: 4
    t.date     "AR_ADDED_WHEN"
    t.string   "AR_CLIENT_CONTACT",     limit: 40
    t.string   "AR_AGENCY_CONTACT",     limit: 40
    t.integer  "AR_SHOW_SPECS",         limit: 1
    t.string   "AR_RETAINR_NOTE",       limit: 80
    t.decimal  "AR_RETAINER_AMT",                  precision: 15, scale: 2
    t.decimal  "AR_RETAINER_GL",                   precision: 15, scale: 2
    t.decimal  "AR_BILLING_TYPE",                  precision: 9,  scale: 0
    t.decimal  "AR_COMM_AMT",                      precision: 15, scale: 2
    t.decimal  "AR_COMM_GL",                       precision: 15, scale: 2
    t.text     "AR_COMM_DESC"
    t.decimal  "AR_MISC_AMT1",                     precision: 15, scale: 2
    t.decimal  "AR_MISC_GL1",                      precision: 15, scale: 2
    t.text     "AR_MISC_DESC1"
    t.decimal  "AR_MISC_AMT2",                     precision: 15, scale: 2
    t.decimal  "AR_MISC_GL2",                      precision: 15, scale: 2
    t.text     "AR_MISC_DESC2"
    t.string   "AR_ADDRESS1",           limit: 50
    t.string   "AR_ADDRESS2",           limit: 50
    t.string   "AR_ADDRESS3",           limit: 50
    t.string   "AR_ADDRESS4",           limit: 50
    t.string   "AR_ADDRESS5",           limit: 50
    t.string   "AR_TO1",                limit: 10
    t.string   "AR_TO2",                limit: 10
    t.string   "AR_TO3",                limit: 10
    t.string   "AR_TO4",                limit: 10
    t.string   "AR_TO5",                limit: 10
    t.string   "AR_ADDRESS6",           limit: 50
    t.string   "AR_ZERO_AS",            limit: 10
    t.decimal  "AR_FINANCE_CHG",                   precision: 15, scale: 2
    t.decimal  "AR_FINANCE_AMT",                   precision: 15, scale: 2
    t.decimal  "AR_FINANCE_CGL",                   precision: 15, scale: 2
    t.decimal  "AR_ROLL_UP",                       precision: 15, scale: 0
    t.decimal  "AR_SHOW_TOTALS",                   precision: 15, scale: 0
    t.decimal  "AR_ADV_PMT",                       precision: 15, scale: 2
    t.decimal  "AR_ADV_PMT_GL",                    precision: 15, scale: 2
    t.string   "AR_CHARGE_NUM",         limit: 20
    t.integer  "AR_PRINT_EST",          limit: 1
    t.boolean  "AR_SHOW_HOURS"
    t.decimal  "AR_UNPAID",                        precision: 9,  scale: 0
    t.integer  "AR_KIND",               limit: 1
    t.string   "AR_KEY",                limit: 20
    t.string   "AR_SHIP_ADDRESS1",      limit: 50
    t.string   "AR_SHIP_ADDRESS2",      limit: 50
    t.string   "AR_SHIP_ADDRESS3",      limit: 50
    t.string   "AR_SHIP_ADDRESS4",      limit: 50
    t.string   "AR_SHIP_ADDRESS5",      limit: 50
    t.string   "AR_SHIP_ADDRESS6",      limit: 50
    t.string   "AR_PC",                 limit: 10
    t.integer  "AR_APPROVED",           limit: 1
    t.string   "AR_APPROVED_BY",        limit: 4
    t.datetime "AR_APPROVED_DATE"
    t.string   "AR_APPROVAL1",          limit: 40
    t.string   "AR_APPROVAL2",          limit: 40
    t.string   "AR_APPROVAL3",          limit: 40
    t.date     "AR_RETURN_DATE"
    t.text     "AR_BILL_INSTRUCTIONS"
    t.date     "AR_EXPORTED"
    t.integer  "AR_PMT_STATUS",         limit: 1
    t.text     "AR_PMT_STATUS_NOTE"
    t.datetime "AR_PMT_NEXT_DATE"
    t.integer  "AR_PMT_NEXT_ACTION",    limit: 1
    t.string   "AR_PMT_NEXT_WHO",       limit: 4
    t.text     "AR_PMT_NEXT_NOTE"
    t.decimal  "AR_PMT_NEXT_NUM",                  precision: 9,  scale: 0
    t.string   "AR_BIZDEV_AE",          limit: 10
    t.decimal  "AR_COMMISSIONABLE_AMT",            precision: 9,  scale: 2
    t.decimal  "AR_COMM_RATE_AE",                  precision: 9,  scale: 2
    t.decimal  "AR_COMM_RATE_BIZ",                 precision: 9,  scale: 2
    t.date     "AR_DATE_PAID"
    t.string   "AR_EDITED_BY",          limit: 4
    t.datetime "AR_EDITED_WHEN"
    t.string   "AR_POSTED_BY",          limit: 4
    t.datetime "AR_POSTED_WHEN"
    t.decimal  "AR_TERMS1",                        precision: 9,  scale: 0
    t.decimal  "AR_TERMS2",                        precision: 9,  scale: 0
    t.decimal  "AR_TERMS3",                        precision: 9,  scale: 0
    t.string   "AR_TAX_AREA",           limit: 20
    t.string   "AR_SHIP_ORG",           limit: 50
  end

  add_index "ar", ["AR_ADDED_BY"], name: "AR_ADDED_BY", using: :btree
  add_index "ar", ["AR_AE"], name: "AR_AE", using: :btree
  add_index "ar", ["AR_BILLING_TYPE"], name: "AR_BILLING_TYPE", using: :btree
  add_index "ar", ["AR_CLIENT_NUM"], name: "AR_CLIENT_NUM", using: :btree
  add_index "ar", ["AR_DATE"], name: "AR_DATE", using: :btree
  add_index "ar", ["AR_DATE_PAID"], name: "AR_DATE_PAID", using: :btree
  add_index "ar", ["AR_DUE_DATE"], name: "AR_DUE_DATE", using: :btree
  add_index "ar", ["AR_JOB_NUM"], name: "AR_JOB_NUM", using: :btree
  add_index "ar", ["AR_KEY"], name: "AR_KEY", using: :btree
  add_index "ar", ["AR_NUM"], name: "AR_NUM", using: :btree
  add_index "ar", ["AR_PC"], name: "AR_PC", using: :btree
  add_index "ar", ["AR_PERIOD"], name: "AR_PERIOD", using: :btree
  add_index "ar", ["AR_PMT_NEXT_ACTION"], name: "AR_PMT_NEXT_ACTION", using: :btree
  add_index "ar", ["AR_PMT_NEXT_DATE"], name: "AR_PMT_NEXT_DATE", using: :btree
  add_index "ar", ["AR_PMT_STATUS"], name: "AR_PMT_STATUS", using: :btree
  add_index "ar", ["AR_PO"], name: "AR_PO", using: :btree
  add_index "ar", ["AR_POSTED"], name: "AR_POSTED", using: :btree
  add_index "ar", ["AR_SEQ"], name: "AR_SEQ", unique: true, using: :btree
  add_index "ar", ["AR_UNPAID"], name: "AR_UNPAID", using: :btree

  create_table "ar_items", primary_key: "AX_SEQ", force: true do |t|
    t.string   "AX_JOB_NUM",        limit: 10
    t.string   "AX_TASK",           limit: 4
    t.string   "AX_AR_NUM",         limit: 10
    t.decimal  "AX_AMT",                       precision: 15, scale: 2
    t.decimal  "AX_SORT",                      precision: 9,  scale: 0
    t.decimal  "AX_GROUP",                     precision: 9,  scale: 0
    t.boolean  "AX_TAXABLE1"
    t.boolean  "AX_TAXABLE2"
    t.text     "AX_DESC"
    t.date     "AX_DATE"
    t.decimal  "AX_CGL",                       precision: 15, scale: 2
    t.date     "AX_POSTED"
    t.decimal  "AX_PERIOD",                    precision: 9,  scale: 0
    t.string   "AX_NAME",           limit: 50
    t.decimal  "AX_HOURS_BILLED",              precision: 15, scale: 2
    t.decimal  "AX_HIDE",                      precision: 9,  scale: 0
    t.string   "AX_ROLL_UP",        limit: 4
    t.integer  "AX_SHOW_DESC",      limit: 1
    t.decimal  "AX_QTY",                       precision: 15, scale: 0
    t.string   "AX_POX_KEY",        limit: 15
    t.string   "AX_PUB",            limit: 20
    t.string   "AX_ISSUE_DATE",     limit: 15
    t.decimal  "AX_COST",                      precision: 9,  scale: 2
    t.date     "AX_EXPORTED"
    t.string   "AX_PC",             limit: 10
    t.string   "AX_CLIENT_NUM",     limit: 10
    t.integer  "AX_COMMISSIONABLE", limit: 1
    t.string   "AX_ADDED_BY",       limit: 4
    t.datetime "AX_ADDED_WHEN"
    t.string   "AX_EDITED_BY",      limit: 4
    t.datetime "AX_EDITED_WHEN"
  end

  add_index "ar_items", ["AX_AR_NUM"], name: "AX_AR_NUM", using: :btree
  add_index "ar_items", ["AX_DATE"], name: "AX_DATE", using: :btree
  add_index "ar_items", ["AX_JOB_NUM"], name: "AX_JOB_NUM", using: :btree
  add_index "ar_items", ["AX_PERIOD"], name: "AX_PERIOD", using: :btree
  add_index "ar_items", ["AX_POSTED"], name: "AX_POSTED", using: :btree
  add_index "ar_items", ["AX_POX_KEY"], name: "AX_POX_KEY", using: :btree
  add_index "ar_items", ["AX_SEQ"], name: "AX_SEQ", unique: true, using: :btree
  add_index "ar_items", ["AX_TASK"], name: "AX_TASK", using: :btree

  create_table "archived_jobs", primary_key: "AJ_SEQ", force: true do |t|
    t.string "AJ_JOB_NUM",  limit: 10
    t.string "AJ_NAME",     limit: 50
    t.string "AJ_FORM",     limit: 25
    t.string "AJ_PRINTER",  limit: 25
    t.string "AJ_ARTIST",   limit: 25
    t.string "AJ_LOCATION", limit: 25
    t.text   "AJ_REF"
  end

  add_index "archived_jobs", ["AJ_JOB_NUM"], name: "AJ_JOB_NUM", using: :btree
  add_index "archived_jobs", ["AJ_SEQ"], name: "AJ_SEQ", unique: true, using: :btree

  create_table "assets_files", primary_key: "ASF_SEQ", force: true do |t|
    t.string   "ASF_JOB_NUM",           limit: 10
    t.string   "ASF_FILE_NAME",         limit: 40
    t.string   "ASF_FILE_KIND",         limit: 20
    t.string   "ASF_ADDED_BY",          limit: 4
    t.datetime "ASF_DATE_ADDED"
    t.date     "ASF_DATE_ACQUIRED"
    t.text     "ASF_DESC"
    t.string   "ASF_KEYWORD1",          limit: 20
    t.string   "ASF_KEYWORD2",          limit: 20
    t.string   "ASF_KEYWORD3",          limit: 20
    t.string   "ASF_SOURCE",            limit: 10
    t.string   "ASF_FIELD1_LABEL",      limit: 20
    t.string   "ASF_FIELD2_LABEL",      limit: 20
    t.string   "ASF_FIELD3_LABEL",      limit: 20
    t.string   "ASF_FIELD4_LABEL",      limit: 20
    t.string   "ASF_FIELD5_LABEL",      limit: 20
    t.string   "ASF_FIELD1",            limit: 20
    t.string   "ASF_FIELD2",            limit: 20
    t.string   "ASF_FIELD3",            limit: 20
    t.string   "ASF_FIELD4",            limit: 20
    t.string   "ASF_FIELD5",            limit: 20
    t.integer  "ASF_OWNERSHIP",         limit: 1
    t.string   "ASF_AUTHOR_NAME",       limit: 40
    t.string   "ASF_AUTHOR_PHONE",      limit: 15
    t.string   "ASF_COPYRIGHT",         limit: 80
    t.text     "ASF_USAGE_RESTRICTION"
    t.datetime "ASF_LAST_MOD_DATE"
    t.string   "ASF_LAST_MOD_BY",       limit: 4
    t.text     "ASF_LAST_MOD_DESC"
    t.integer  "ASF_PROTECTED",         limit: 1
    t.string   "ASF_EDITED_BY",         limit: 4
    t.datetime "ASF_EDITED_WHEN"
  end

  add_index "assets_files", ["ASF_FILE_NAME"], name: "ASF_FILE_NAME", using: :btree
  add_index "assets_files", ["ASF_JOB_NUM"], name: "ASF_JOB_NUM", using: :btree
  add_index "assets_files", ["ASF_KEYWORD1"], name: "ASF_KEYWORD1", using: :btree
  add_index "assets_files", ["ASF_KEYWORD2"], name: "ASF_KEYWORD2", using: :btree
  add_index "assets_files", ["ASF_KEYWORD3"], name: "ASF_KEYWORD3", using: :btree
  add_index "assets_files", ["ASF_SEQ"], name: "ASF_SEQ", unique: true, using: :btree

  create_table "assets_prefs", primary_key: "ASP_SEQ", force: true do |t|
    t.string   "ASP_CODE",          limit: 4
    t.integer  "ASP_AUTO_FOLDER",   limit: 1
    t.string   "ASP_ART_SERVER",    limit: 200
    t.string   "ASP_IP",            limit: 15
    t.string   "ASP_FIELD1",        limit: 20
    t.string   "ASP_FIELD2",        limit: 20
    t.string   "ASP_FIELD3",        limit: 20
    t.string   "ASP_FIELD4",        limit: 20
    t.string   "ASP_FIELD5",        limit: 20
    t.integer  "ASP_TRACK_USAGE",   limit: 1
    t.string   "ASP_ART_SERVER_W",  limit: 200
    t.string   "ASP_EDITED_BY",     limit: 4
    t.datetime "ASP_EDITED_WHEN"
    t.integer  "ASP_INCL_JNAME",    limit: 1
    t.integer  "ASP_ORG_BY_CLIENT", limit: 1
  end

  add_index "assets_prefs", ["ASP_CODE"], name: "ASP_CODE", using: :btree
  add_index "assets_prefs", ["ASP_SEQ"], name: "ASP_SEQ", unique: true, using: :btree

  create_table "assets_types", primary_key: "AST_SEQ", force: true do |t|
    t.string  "AST_FILE_EXT", limit: 4
    t.string  "AST_APP_NAME", limit: 100
    t.string  "AST_DESC",     limit: 200
    t.string  "AST_CREATOR",  limit: 10
    t.binary  "AST_ICON",     limit: 16777215
    t.string  "AST_USER",     limit: 4
    t.integer "AST_KIND",     limit: 1
  end

  add_index "assets_types", ["AST_APP_NAME"], name: "AST_APP_NAME", using: :btree
  add_index "assets_types", ["AST_CREATOR"], name: "AST_CREATOR", using: :btree
  add_index "assets_types", ["AST_FILE_EXT"], name: "AST_FILE_EXT", using: :btree
  add_index "assets_types", ["AST_SEQ"], name: "AST_SEQ", unique: true, using: :btree
  add_index "assets_types", ["AST_USER"], name: "AST_USER", using: :btree

  create_table "avail", primary_key: "AV_SEQ", force: true do |t|
    t.string   "AV_INITIALS",   limit: 10
    t.date     "AV_DATE"
    t.string   "AV_KEY",        limit: 16
    t.integer  "AV_KIND",       limit: 1
    t.text     "AV_NOTE"
    t.string   "AV_DESC",       limit: 20
    t.string   "AV_ADDED_BY",   limit: 4
    t.datetime "AV_ADDED_WHEN"
    t.string   "AV_EDITED_BY",  limit: 4
    t.datetime "AV_EDIT_WHEN"
  end

  add_index "avail", ["AV_ADDED_WHEN"], name: "AV_ADDED_WHEN", using: :btree
  add_index "avail", ["AV_DATE"], name: "AV_DATE", using: :btree
  add_index "avail", ["AV_INITIALS"], name: "AV_INITIALS", using: :btree
  add_index "avail", ["AV_KEY"], name: "AV_KEY", using: :btree
  add_index "avail", ["AV_SEQ"], name: "AV_SEQ", unique: true, using: :btree

  create_table "billing_info", primary_key: "B_SEQ", force: true do |t|
    t.string   "B_JOB_NUM",     limit: 10
    t.string   "B_COST_CTR1",   limit: 15
    t.string   "B_COST_CTR2",   limit: 15
    t.string   "B_COST_CTR3",   limit: 15
    t.string   "B_COST_CTR4",   limit: 15
    t.string   "B_COST_CTR5",   limit: 15
    t.string   "B_COST_CTR6",   limit: 15
    t.string   "B_COST_CTR7",   limit: 15
    t.string   "B_COST_CTR8",   limit: 15
    t.string   "B_COST_CTR9",   limit: 15
    t.string   "B_ACCT1",       limit: 10
    t.string   "B_ACCT2",       limit: 10
    t.string   "B_ACCT3",       limit: 10
    t.string   "B_ACCT4",       limit: 10
    t.string   "B_ACCT5",       limit: 10
    t.string   "B_ACCT6",       limit: 10
    t.string   "B_ACCT7",       limit: 10
    t.string   "B_ACCT8",       limit: 10
    t.string   "B_ACCT9",       limit: 10
    t.decimal  "B_PERCENT1",               precision: 9, scale: 2
    t.decimal  "B_PERCENT2",               precision: 9, scale: 2
    t.decimal  "B_PERCENT3",               precision: 9, scale: 2
    t.decimal  "B_PERCENT4",               precision: 9, scale: 2
    t.decimal  "B_PERCENT5",               precision: 9, scale: 2
    t.decimal  "B_PERCENT6",               precision: 9, scale: 2
    t.decimal  "B_PERCENT7",               precision: 9, scale: 2
    t.decimal  "B_PERCENT8",               precision: 9, scale: 2
    t.decimal  "B_PERCENT9",               precision: 9, scale: 2
    t.string   "B_EDITED_BY",   limit: 4
    t.datetime "B_EDITED_WHEN"
  end

  add_index "billing_info", ["B_JOB_NUM"], name: "B_JOB_NUM", using: :btree
  add_index "billing_info", ["B_SEQ"], name: "B_SEQ", unique: true, using: :btree

  create_table "bookmarks", primary_key: "BOOK_SEQ", force: true do |t|
    t.string  "BOOK_WORK",       limit: 4
    t.string  "BOOK_WINDOW",     limit: 200
    t.text    "BOOK_FIND_VALUE"
    t.string  "BOOK_DESC",       limit: 200
    t.string  "BOOK_FIND_FIELD", limit: 200
    t.decimal "BOOK_SORT",                   precision: 9, scale: 0
    t.text    "BOOK_DESC_USER"
    t.text    "BOOK_DO_METHOD"
    t.text    "BOOK_DO_CALC"
  end

  add_index "bookmarks", ["BOOK_SEQ"], name: "BOOK_SEQ", unique: true, using: :btree

  create_table "cal", primary_key: "CL_SEQ", force: true do |t|
    t.string  "CL_MONTH", limit: 20
    t.decimal "CL_YEAR",              precision: 9, scale: 0
    t.integer "CL_DAY01", limit: 1
    t.integer "CL_DAY02", limit: 1
    t.integer "CL_DAY03", limit: 1
    t.integer "CL_DAY04", limit: 1
    t.integer "CL_DAY05", limit: 1
    t.integer "CL_DAY06", limit: 1
    t.integer "CL_DAY07", limit: 1
    t.integer "CL_DAY08", limit: 1
    t.integer "CL_DAY09", limit: 1
    t.integer "CL_DAY10", limit: 1
    t.integer "CL_DAY11", limit: 1
    t.integer "CL_DAY12", limit: 1
    t.integer "CL_DAY13", limit: 1
    t.integer "CL_DAY14", limit: 1
    t.integer "CL_DAY15", limit: 1
    t.integer "CL_DAY16", limit: 1
    t.integer "CL_DAY17", limit: 1
    t.integer "CL_DAY18", limit: 1
    t.integer "CL_DAY19", limit: 1
    t.integer "CL_DAY20", limit: 1
    t.integer "CL_DAY21", limit: 1
    t.integer "CL_DAY22", limit: 1
    t.integer "CL_DAY23", limit: 1
    t.integer "CL_DAY24", limit: 1
    t.integer "CL_DAY25", limit: 1
    t.integer "CL_DAY26", limit: 1
    t.integer "CL_DAY27", limit: 1
    t.integer "CL_DAY28", limit: 1
    t.integer "CL_DAY29", limit: 1
    t.integer "CL_DAY30", limit: 1
    t.integer "CL_DAY31", limit: 1
    t.integer "CL_DAY32", limit: 1
    t.integer "CL_DAY33", limit: 1
    t.integer "CL_DAY34", limit: 1
    t.integer "CL_DAY35", limit: 1
    t.integer "CL_DAY36", limit: 1
    t.integer "CL_DAY37", limit: 1
    t.integer "CL_DAY38", limit: 1
    t.integer "CL_DAY39", limit: 1
    t.integer "CL_DAY40", limit: 1
    t.integer "CL_DAY41", limit: 1
    t.integer "CL_DAY42", limit: 1
    t.string  "CL_CAL01", limit: 100
    t.string  "CL_CAL02", limit: 100
    t.string  "CL_CAL03", limit: 100
    t.string  "CL_CAL04", limit: 100
    t.string  "CL_CAL05", limit: 100
    t.string  "CL_CAL06", limit: 100
    t.string  "CL_CAL07", limit: 100
    t.string  "CL_CAL08", limit: 100
    t.string  "CL_CAL09", limit: 100
    t.string  "CL_CAL10", limit: 100
    t.string  "CL_CAL11", limit: 100
    t.string  "CL_CAL12", limit: 100
    t.string  "CL_CAL13", limit: 100
    t.string  "CL_CAL14", limit: 100
    t.string  "CL_CAL15", limit: 100
    t.string  "CL_CAL16", limit: 100
    t.string  "CL_CAL17", limit: 100
    t.string  "CL_CAL18", limit: 100
    t.string  "CL_CAL19", limit: 100
    t.string  "CL_CAL20", limit: 100
    t.string  "CL_CAL21", limit: 100
    t.string  "CL_CAL22", limit: 100
    t.string  "CL_CAL23", limit: 100
    t.string  "CL_CAL24", limit: 100
    t.string  "CL_CAL25", limit: 100
    t.string  "CL_CAL26", limit: 100
    t.string  "CL_CAL27", limit: 100
    t.string  "CL_CAL28", limit: 100
    t.string  "CL_CAL29", limit: 100
    t.string  "CL_CAL30", limit: 100
    t.string  "CL_CAL31", limit: 100
    t.string  "CL_CAL32", limit: 100
    t.string  "CL_CAL33", limit: 100
    t.string  "CL_CAL34", limit: 100
    t.string  "CL_CAL35", limit: 100
    t.string  "CL_CAL36", limit: 100
    t.string  "CL_CAL37", limit: 100
    t.string  "CL_CAL38", limit: 100
    t.string  "CL_CAL39", limit: 100
    t.string  "CL_CAL40", limit: 100
    t.string  "CL_CAL41", limit: 100
    t.string  "CL_CAL42", limit: 100
  end

  add_index "cal", ["CL_DAY02"], name: "CL_DAY02", using: :btree
  add_index "cal", ["CL_SEQ"], name: "CL_SEQ", unique: true, using: :btree

  create_table "calendar", primary_key: "CAL_SEQ", force: true do |t|
    t.integer "CAL_KIND",        limit: 1
    t.date    "CAL_DATE"
    t.string  "CAL_TO_FROM",     limit: 30
    t.decimal "CAL_AMT",                     precision: 9, scale: 2
    t.string  "CAL_ADDED_BY",    limit: 3
    t.text    "CAL_DESC"
    t.text    "CAL_MAIL_TO"
    t.integer "CAL_NOTIFIED",    limit: 1
    t.time    "CAL_TIME"
    t.integer "CAL_PRIORITY",    limit: 1
    t.string  "CAL_STATUS",      limit: 100
    t.string  "CAL_ID",          limit: 10
    t.string  "CAL_CLIENT_NUM",  limit: 10
    t.string  "CAL_SUBJECT",     limit: 150
    t.integer "CAL_NOTIFY_DAYS", limit: 1
    t.string  "CAL_LOCATION",    limit: 25
    t.string  "CAL_JOB_NUM",     limit: 15
    t.string  "CAL_TASK",        limit: 4
  end

  add_index "calendar", ["CAL_CLIENT_NUM"], name: "CAL_CLIENT_NUM", using: :btree
  add_index "calendar", ["CAL_DATE"], name: "CAL_DATE", using: :btree
  add_index "calendar", ["CAL_ID"], name: "CAL_ID", using: :btree
  add_index "calendar", ["CAL_KIND"], name: "CAL_KIND", using: :btree
  add_index "calendar", ["CAL_SEQ"], name: "CAL_SEQ", unique: true, using: :btree

  create_table "change_items", primary_key: "CHX_SEQ", force: true do |t|
    t.string   "CHX_JOB_NUM",     limit: 10
    t.string   "CHX_TASK",        limit: 4
    t.string   "CHX_NAME",        limit: 100
    t.decimal  "CHX_HOURS",                   precision: 9, scale: 2
    t.decimal  "CHX_BUDGET",                  precision: 9, scale: 2
    t.decimal  "CHX_ESTIMATE",                precision: 9, scale: 2
    t.text     "CHX_NOTES"
    t.string   "CHX_NUM",         limit: 14
    t.integer  "CHX_TAXABLE1",    limit: 1
    t.integer  "CHX_TAXABLE2",    limit: 1
    t.integer  "CHX_ROLLUP",      limit: 1
    t.string   "CHX_ADDED_BY",    limit: 4
    t.datetime "CHX_ADDED_WHEN"
    t.string   "CHX_EDITED_BY",   limit: 4
    t.datetime "CHX_EDITED_WHEN"
  end

  add_index "change_items", ["CHX_JOB_NUM"], name: "CHX_JOB_NUM", using: :btree
  add_index "change_items", ["CHX_NUM"], name: "CHX_NUM", using: :btree
  add_index "change_items", ["CHX_SEQ"], name: "CHX_SEQ", unique: true, using: :btree

  create_table "change_order", primary_key: "CHANGE_SEQ", force: true do |t|
    t.string   "CHANGE_JOB_NUM",       limit: 10
    t.string   "CHANGE_TASK1",         limit: 4
    t.string   "CHANGE_NUM",           limit: 14
    t.string   "CHANGE_WHO",           limit: 4
    t.datetime "CHANGE_DATE"
    t.string   "CHANGE_DESC",          limit: 60
    t.decimal  "CHANGE_OK",                       precision: 15, scale: 0
    t.text     "CHANGE_NOTE"
    t.decimal  "CHANGE_AMT1",                     precision: 9,  scale: 2
    t.decimal  "CHANGE_TYPE",                     precision: 9,  scale: 0
    t.string   "CHANGE_TASK2",         limit: 4
    t.string   "CHANGE_TASK3",         limit: 4
    t.string   "CHANGE_TASK4",         limit: 4
    t.decimal  "CHANGE_AMT2",                     precision: 9,  scale: 2
    t.decimal  "CHANGE_AMT3",                     precision: 9,  scale: 2
    t.decimal  "CHANGE_AMT4",                     precision: 9,  scale: 2
    t.decimal  "CHANGE_TOTAL",                    precision: 9,  scale: 2
    t.string   "CHANGE_TASK5",         limit: 4
    t.string   "CHANGE_TASK6",         limit: 4
    t.decimal  "CHANGE_AMT5",                     precision: 9,  scale: 2
    t.decimal  "CHANGE_AMT6",                     precision: 9,  scale: 2
    t.string   "CHANGE_OTHER",         limit: 20
    t.string   "CHANGE_NAME",          limit: 40
    t.decimal  "CHANGE_BAMT1",                    precision: 9,  scale: 2
    t.decimal  "CHANGE_BAMT2",                    precision: 9,  scale: 2
    t.decimal  "CHANGE_BAMT3",                    precision: 9,  scale: 2
    t.decimal  "CHANGE_BAMT4",                    precision: 9,  scale: 2
    t.decimal  "CHANGE_BAMT5",                    precision: 9,  scale: 2
    t.decimal  "CHANGE_BAMT6",                    precision: 9,  scale: 2
    t.decimal  "CHANGE_SALES_TAX1",               precision: 9,  scale: 2
    t.decimal  "CHANGE_SALES_TAX2",               precision: 9,  scale: 2
    t.string   "CHANGE_ROLLUP1",       limit: 4
    t.string   "CHANGE_ROLLUP2",       limit: 4
    t.string   "CHANGE_ROLLUP3",       limit: 4
    t.string   "CHANGE_ROLLUP4",       limit: 4
    t.string   "CHANGE_ROLLUP5",       limit: 4
    t.string   "CHANGE_ROLLUP6",       limit: 4
    t.decimal  "CHANGE_HOURS1",                   precision: 9,  scale: 2
    t.decimal  "CHANGE_HOURS2",                   precision: 9,  scale: 2
    t.decimal  "CHANGE_HOURS3",                   precision: 9,  scale: 2
    t.decimal  "CHANGE_HOURS4",                   precision: 9,  scale: 2
    t.decimal  "CHANGE_HOURS5",                   precision: 9,  scale: 2
    t.decimal  "CHANGE_HOURS6",                   precision: 9,  scale: 2
    t.integer  "CHANGE_ROLL_UP",       limit: 1
    t.string   "CHANGE_STATUS",        limit: 40
    t.integer  "CHANGE_APPROVE",       limit: 1
    t.text     "CHANGE_MAIL_TO"
    t.integer  "CHANGE_SEND_PDF",      limit: 1
    t.string   "CHANGE_APPROVED_BY",   limit: 10
    t.datetime "CHANGE_APPROVED_DATE"
    t.integer  "CHANGE_APPROVED",      limit: 1
    t.string   "CHANGE_EDITED_BY",     limit: 4
    t.datetime "CHANGE_EDITED_WHEN"
    t.string   "CHANGE_ADDED_BY",      limit: 4
    t.datetime "CHANGE_ADDED_WHEN"
  end

  add_index "change_order", ["CHANGE_DATE"], name: "CHANGE_DATE", using: :btree
  add_index "change_order", ["CHANGE_JOB_NUM"], name: "CHANGE_JOB_NUM", using: :btree
  add_index "change_order", ["CHANGE_NUM"], name: "CHANGE_NUM", using: :btree
  add_index "change_order", ["CHANGE_OK"], name: "CHANGE_OK", using: :btree
  add_index "change_order", ["CHANGE_SEQ"], name: "CHANGE_SEQ", unique: true, using: :btree

  create_table "check_items", primary_key: "CX_SEQ", force: true do |t|
    t.date     "CX_CK_DATE"
    t.decimal  "CX_NET_AMT",                precision: 15, scale: 2
    t.decimal  "CX_DGL",                    precision: 15, scale: 2
    t.string   "CX_AP_NUM",      limit: 20
    t.string   "CX_VENDOR_NUM",  limit: 10
    t.string   "CX_JOB_NUM",     limit: 10
    t.string   "CX_TASK",        limit: 4
    t.date     "CX_POSTED"
    t.decimal  "CX_GROSS_AMT",              precision: 15, scale: 2
    t.decimal  "CX_CK_NUM",                 precision: 15, scale: 0
    t.decimal  "CX_COMM_AMT",               precision: 9,  scale: 2
    t.decimal  "CX_MARKUP_PC",              precision: 15, scale: 2
    t.decimal  "CX_DISC_AMT",               precision: 15, scale: 2
    t.integer  "CX_PERIOD",      limit: 1
    t.decimal  "CX_COST_SEQ",               precision: 9,  scale: 0
    t.decimal  "CX_DISC_DGL",               precision: 15, scale: 2
    t.integer  "CX_BILLABLE",    limit: 1
    t.text     "CX_NOTE"
    t.string   "CX_ADDED_BY",    limit: 4
    t.datetime "CX_ADDED_WHEN"
    t.string   "CX_EDITED_BY",   limit: 4
    t.datetime "CX_EDITED_WHEN"
  end

  add_index "check_items", ["CX_AP_NUM"], name: "CX_AP_NUM", using: :btree
  add_index "check_items", ["CX_CK_DATE"], name: "CX_CK_DATE", using: :btree
  add_index "check_items", ["CX_CK_NUM"], name: "CX_CK_NUM", using: :btree
  add_index "check_items", ["CX_COST_SEQ"], name: "CX_COST_SEQ", using: :btree
  add_index "check_items", ["CX_JOB_NUM"], name: "CX_JOB_NUM", using: :btree
  add_index "check_items", ["CX_PERIOD"], name: "CX_PERIOD", using: :btree
  add_index "check_items", ["CX_POSTED"], name: "CX_POSTED", using: :btree
  add_index "check_items", ["CX_SEQ"], name: "CX_SEQ", unique: true, using: :btree
  add_index "check_items", ["CX_TASK"], name: "CX_TASK", using: :btree
  add_index "check_items", ["CX_VENDOR_NUM"], name: "CX_VENDOR_NUM", using: :btree

  create_table "checks", primary_key: "CK_SEQ", force: true do |t|
    t.decimal  "CK_NUM",                               precision: 9,  scale: 0
    t.string   "CK_VENDOR_NUM",             limit: 10
    t.string   "CK_PAYEE",                  limit: 40
    t.string   "CK_ADDRESS1",               limit: 40
    t.string   "CK_ADDRESS2",               limit: 40
    t.string   "CK_ADDRESS3",               limit: 40
    t.date     "CK_DATE"
    t.date     "CK_POSTED"
    t.text     "CK_MEMO"
    t.decimal  "CK_NET_AMT",                           precision: 15, scale: 2
    t.decimal  "CK_CGL",                               precision: 15, scale: 2
    t.integer  "CK_PAY",                    limit: 1
    t.string   "CK_ADDED_BY",               limit: 4
    t.date     "CK_ADDED_WHEN"
    t.integer  "CK_CLEARED",                limit: 1
    t.integer  "CK_DONT_PRINT",             limit: 1
    t.string   "CK_AMOUNT",                 limit: 80
    t.string   "CK_TYPE",                   limit: 10
    t.decimal  "CK_GROSS",                             precision: 15, scale: 2
    t.decimal  "CK_DISC_AMT",                          precision: 15, scale: 2
    t.decimal  "CK_DISC_GL",                           precision: 15, scale: 2
    t.integer  "CK_OK",                     limit: 1
    t.decimal  "CK_PERIOD",                            precision: 9,  scale: 0
    t.integer  "CK_1099"
    t.string   "CK_TAX_ID",                 limit: 15
    t.decimal  "CK_EMP_ADV_EXP",                       precision: 9,  scale: 2
    t.decimal  "CK_EMPL_ADV_CK",                       precision: 9,  scale: 0
    t.string   "CK_EDITED_BY",              limit: 4
    t.datetime "CK_EDITED_WHEN"
    t.string   "CK_POSTED_BY",              limit: 4
    t.datetime "CK_POSTED_WHEN"
    t.string   "CK_ONLINE_PMT_CONFIRM_NUM", limit: 50
  end

  add_index "checks", ["CK_1099"], name: "CK_1099", using: :btree
  add_index "checks", ["CK_ADDED_BY"], name: "CK_ADDED_BY", using: :btree
  add_index "checks", ["CK_CLEARED"], name: "CK_CLEARED", using: :btree
  add_index "checks", ["CK_DATE"], name: "CK_DATE", using: :btree
  add_index "checks", ["CK_EMPL_ADV_CK"], name: "CK_EMPL_ADV_CK", using: :btree
  add_index "checks", ["CK_NUM"], name: "CK_NUM", using: :btree
  add_index "checks", ["CK_OK"], name: "CK_OK", using: :btree
  add_index "checks", ["CK_PAY"], name: "CK_PAY", using: :btree
  add_index "checks", ["CK_PAYEE"], name: "CK_PAYEE", using: :btree
  add_index "checks", ["CK_PERIOD"], name: "CK_PERIOD", using: :btree
  add_index "checks", ["CK_POSTED"], name: "CK_POSTED", using: :btree
  add_index "checks", ["CK_SEQ"], name: "CK_SEQ", unique: true, using: :btree
  add_index "checks", ["CK_TYPE"], name: "CK_TYPE", using: :btree
  add_index "checks", ["CK_VENDOR_NUM"], name: "CK_VENDOR_NUM", using: :btree

  create_table "claven_sales", id: false, force: true do |t|
    t.string  "S_NUM",           limit: 10
    t.string  "S_PR_JOB_NUM",    limit: 10
    t.string  "S_PR_TASK",       limit: 4
    t.string  "S_CLIENT",        limit: 10
    t.float   "S_HOW_PAID"
    t.string  "S_TERMS",         limit: 40
    t.date    "S_INVOICE_DATE"
    t.string  "S_SHIP_ORG",      limit: 40
    t.decimal "S_PRICE",                    precision: 9,  scale: 2
    t.string  "S_PRODUCT_NAME",  limit: 60
    t.decimal "S_TS_CREDIT_AMT",            precision: 15, scale: 2
    t.string  "S_DISC_DESC",     limit: 40
    t.decimal "S_ADDL_QTY",                 precision: 9,  scale: 0
    t.decimal "S_ADDL_USER_AMT",            precision: 15, scale: 2
    t.string  "S_OPTIONS_DESC",  limit: 40
    t.decimal "S_AMT_OPTIONS",              precision: 9,  scale: 2
    t.decimal "S_TAX_RATE",                 precision: 9,  scale: 2
    t.decimal "S_SUPPORT_AMT",              precision: 9,  scale: 2
    t.decimal "S_SHIP_AMT",                 precision: 9,  scale: 2
    t.decimal "S_INVOICE_TOTAL",            precision: 9,  scale: 2
    t.decimal "S_DISCOUNT",                 precision: 9,  scale: 2
    t.decimal "S_SALES_TAX",                precision: 9,  scale: 2
  end

  create_table "clients", primary_key: "C_SEQ", force: true do |t|
    t.string   "C_NUM",               limit: 10
    t.string   "C_ORG",               limit: 40
    t.string   "C_ADDRESS1",          limit: 50
    t.string   "C_ADDRESS2",          limit: 50
    t.string   "C_ADDRESS3",          limit: 50
    t.string   "C_ADDRESS4",          limit: 50
    t.string   "C_CONTACT1",          limit: 75
    t.string   "C_CONTACT2",          limit: 75
    t.string   "C_CONTACT3",          limit: 75
    t.string   "C_CONTACT4",          limit: 75
    t.string   "C_PHONE1",            limit: 20
    t.string   "C_PHONE2",            limit: 20
    t.string   "C_PHONE3",            limit: 20
    t.string   "C_PHONE4",            limit: 20
    t.string   "C_TERMS",             limit: 20
    t.string   "C_TYPE",              limit: 10
    t.decimal  "C_JOB_NUM",                       precision: 15, scale: 0
    t.text     "C_NOTE"
    t.decimal  "C1",                              precision: 15, scale: 2
    t.decimal  "C2",                              precision: 15, scale: 2
    t.decimal  "C3",                              precision: 15, scale: 2
    t.decimal  "C4",                              precision: 15, scale: 2
    t.decimal  "C5",                              precision: 15, scale: 2
    t.decimal  "C6",                              precision: 15, scale: 2
    t.decimal  "C7",                              precision: 15, scale: 2
    t.decimal  "C8",                              precision: 15, scale: 2
    t.decimal  "C9",                              precision: 15, scale: 2
    t.decimal  "C10",                             precision: 15, scale: 2
    t.decimal  "C11",                             precision: 15, scale: 2
    t.decimal  "C12",                             precision: 15, scale: 2
    t.string   "C_ADDRESS5",          limit: 50
    t.string   "C_ADDRESS6",          limit: 50
    t.text     "C_JOB_ALERT"
    t.text     "C_AR_ALERT"
    t.text     "C_PAY_ALERT"
    t.decimal  "C_YTD",                           precision: 15, scale: 2
    t.text     "C_NOTES"
    t.decimal  "C_CURR",                          precision: 9,  scale: 2
    t.decimal  "C_30",                            precision: 9,  scale: 2
    t.decimal  "C_60",                            precision: 9,  scale: 2
    t.decimal  "C_90",                            precision: 9,  scale: 2
    t.decimal  "C_CREDIT_LIMIT",                  precision: 15, scale: 2
    t.date     "C_LAST_AGING"
    t.decimal  "C_MARKUP",                        precision: 9,  scale: 2
    t.decimal  "C_RETAINER_BAL",                  precision: 15, scale: 2
    t.decimal  "C_RETAINER_CGL",                  precision: 15, scale: 2
    t.decimal  "C_TAX_RATE1",                     precision: 15, scale: 4
    t.decimal  "C_TAX_RATE2",                     precision: 15, scale: 4
    t.string   "C_TAX_AREA",          limit: 20
    t.decimal  "C_TAX_GL1",                       precision: 15, scale: 2
    t.decimal  "C_TAX_GL2",                       precision: 15, scale: 2
    t.decimal  "C_BUDGET_1",                      precision: 9,  scale: 2
    t.decimal  "C_BUDGET_2",                      precision: 9,  scale: 2
    t.decimal  "C_BUDGET_3",                      precision: 9,  scale: 2
    t.decimal  "C_BUDGET_4",                      precision: 9,  scale: 2
    t.decimal  "C_BUDGET_5",                      precision: 9,  scale: 2
    t.decimal  "C_BUDGET_6",                      precision: 9,  scale: 2
    t.decimal  "C_BUDGET_7",                      precision: 9,  scale: 2
    t.decimal  "C_BUDGET_8",                      precision: 9,  scale: 2
    t.decimal  "C_BUDGET_9",                      precision: 9,  scale: 2
    t.decimal  "C_BUDGET_10",                     precision: 9,  scale: 2
    t.decimal  "C_BUDGET_11",                     precision: 9,  scale: 2
    t.decimal  "C_BUDGET_12",                     precision: 9,  scale: 2
    t.decimal  "C_BUDGET_YTD",                    precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR1",                    precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR2",                    precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR3",                    precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR4",                    precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR5",                    precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR6",                    precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR7",                    precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR8",                    precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR9",                    precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR10",                   precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR11",                   precision: 9,  scale: 2
    t.decimal  "C_LAST_YEAR12",                   precision: 9,  scale: 2
    t.integer  "C_IN_HOUSE",          limit: 1
    t.string   "C_AE",                limit: 10
    t.decimal  "C_BALN",                          precision: 15, scale: 2
    t.decimal  "C_BILL_RATE",                     precision: 15, scale: 2
    t.decimal  "C_FINANCE_CHG",                   precision: 15, scale: 2
    t.string   "C_FAX",               limit: 20
    t.integer  "C_LOGO",              limit: 1
    t.string   "C_DIVISION",          limit: 10
    t.string   "C_TO1",               limit: 10
    t.string   "C_TO2",               limit: 10
    t.string   "C_TO3",               limit: 10
    t.string   "C_TO4",               limit: 10
    t.string   "C_TO5",               limit: 10
    t.string   "C_COST_CENTER",       limit: 20
    t.decimal  "C_RETAINER_DGL",                  precision: 15, scale: 2
    t.decimal  "C_RETAINER_PMTS",                 precision: 15, scale: 2
    t.decimal  "C_MEDIA_PLAN",                    precision: 9,  scale: 0
    t.string   "C_PO",                limit: 15
    t.string   "C_BILL_ADDRESS1",     limit: 50
    t.string   "C_BILL_ADDRESS2",     limit: 50
    t.string   "C_BILL_ADDRESS3",     limit: 50
    t.string   "C_BILL_ADDRESS4",     limit: 50
    t.string   "C_BILL_ADDRESS5",     limit: 50
    t.string   "C_BILL_ADDRESS6",     limit: 50
    t.decimal  "C_ACTIVE",                        precision: 9,  scale: 0
    t.string   "C_MEDIA_JNUM",        limit: 10
    t.string   "C_MEDIA_TASK",        limit: 4
    t.decimal  "C_MEDIA_COMM",                    precision: 9,  scale: 2
    t.decimal  "C_MEDIA_EST_NUM",                 precision: 15, scale: 0
    t.integer  "C_TEAM_ACCESS",       limit: 1
    t.string   "C_TEAM",              limit: 10
    t.text     "C_MAIL_JOB_TO"
    t.text     "C_MAIL_JOB_MSG"
    t.string   "C_MAIL_JOB_CC",       limit: 40
    t.string   "C_MAIL_JOB_BCC",      limit: 40
    t.text     "C_MAIL_AR_TO"
    t.text     "C_MAIL_AR_MSG"
    t.string   "C_MAIL_AR_CC",        limit: 40
    t.string   "C_MAIL_AR_BCC",       limit: 40
    t.text     "C_MAIL_PMT_TO"
    t.text     "C_MAIL_PMT_MSG"
    t.string   "C_MAIL_PMT_CC",       limit: 40
    t.string   "C_MAIL_PMT_BCC",      limit: 40
    t.integer  "C_UNBILLABLE",        limit: 1
    t.string   "C_PC",                limit: 10
    t.integer  "C_OA_PERIOD",         limit: 1
    t.decimal  "C_OA_MTD",                        precision: 15, scale: 2
    t.decimal  "C_OA_YTD",                        precision: 15, scale: 2
    t.decimal  "C_OA_LABOR",                      precision: 15, scale: 2
    t.string   "C_URL",               limit: 50
    t.string   "C_EMAIL",             limit: 100
    t.decimal  "C_MEDIA_DGL",                     precision: 15, scale: 2
    t.decimal  "C_MEDIA_DISC",                    precision: 15, scale: 2
    t.string   "C_SHIP_ADDRESS1",     limit: 50
    t.string   "C_SHIP_ADDRESS2",     limit: 50
    t.string   "C_SHIP_ADDRESS3",     limit: 50
    t.string   "C_SHIP_ADDRESS4",     limit: 50
    t.string   "C_SHIP_ADDRESS5",     limit: 50
    t.string   "C_SHIP_ADDRESS6",     limit: 50
    t.string   "C_CORP_ID",           limit: 100
    t.date     "C_FIRST_CALL"
    t.datetime "C_LAST_CALL"
    t.integer  "C_CREDIT_HOLD",       limit: 1
    t.string   "C_BIZDEV_AE",         limit: 10
    t.integer  "C_COMMISSIONABLE",    limit: 1
    t.integer  "C_SHOW_HOURS",        limit: 1
    t.string   "C_EDITED_BY",         limit: 4
    t.datetime "C_EDITED_WHEN"
    t.decimal  "C_TERMS1",                        precision: 9,  scale: 0
    t.decimal  "C_TERMS2",                        precision: 9,  scale: 0
    t.decimal  "C_TERMS3",                        precision: 9,  scale: 0
    t.decimal  "C_DGL",                           precision: 15, scale: 2
    t.string   "C_NCF_PREFIX",        limit: 19
    t.string   "C_CTC_COL1",          limit: 25
    t.string   "C_CTC_COL2",          limit: 25
    t.string   "C_CTC_COL4",          limit: 25
    t.string   "C_CTC_COL6",          limit: 25
    t.string   "C_CTC_COL7",          limit: 25
    t.string   "C_CTC_COL8",          limit: 25
    t.string   "C_CTC_COL9",          limit: 25
    t.integer  "C_FAST_FIN_GRADE_A",  limit: 1
    t.integer  "C_FAST_FIN_GRADE_B",  limit: 1
    t.integer  "C_FAST_FIN_GRADE_C",  limit: 1
    t.integer  "C_FAST_FIN_GRADE_D",  limit: 1
    t.integer  "C_FAST_TIME_GRADE_C", limit: 1
    t.integer  "C_FAST_TIME_GRADE_D", limit: 1
    t.decimal  "C_TAX_RATE3",                     precision: 15, scale: 4
    t.decimal  "C_TAX_GL3",                       precision: 15, scale: 2
    t.decimal  "C_AR_SHOW_TOTALS",                precision: 15, scale: 0
    t.decimal  "C_AR_ROLL_UP",                    precision: 15, scale: 0
    t.decimal  "C_AR_SHOW_SPECS",                 precision: 15, scale: 0
    t.decimal  "C_AR_SHOW_HOURS",                 precision: 15, scale: 0
    t.decimal  "C_AR_PRINT_EST",                  precision: 15, scale: 0
    t.string   "C_AR_ZERO_AS",        limit: 10
    t.integer  "C_OT_WEEKEND",        limit: 1
    t.integer  "C_OT_HOLIDAY",        limit: 1
    t.string   "C_PIPELINE_COL1",     limit: 20
    t.string   "C_PIPELINE_COL2",     limit: 20
    t.string   "C_PIPELINE_COL3",     limit: 20
    t.string   "C_PIPELINE_COL4",     limit: 20
    t.string   "C_PIPELINE_COL5",     limit: 20
    t.string   "C_PIPELINE_COL6",     limit: 20
    t.string   "C_PIPELINE_COL7",     limit: 20
    t.string   "C_PIPELINE_COL8",     limit: 20
    t.string   "C_PIPELINE_COL9",     limit: 20
  end

  add_index "clients", ["C_ACTIVE"], name: "C_ACTIVE", using: :btree
  add_index "clients", ["C_AE"], name: "C_AE", using: :btree
  add_index "clients", ["C_CORP_ID"], name: "C_CORP_ID", using: :btree
  add_index "clients", ["C_COST_CENTER"], name: "C_COST_CENTER", using: :btree
  add_index "clients", ["C_DIVISION"], name: "C_DIVISION", using: :btree
  add_index "clients", ["C_NUM"], name: "C_NUM", using: :btree
  add_index "clients", ["C_ORG"], name: "C_ORG", using: :btree
  add_index "clients", ["C_SEQ"], name: "C_SEQ", unique: true, using: :btree
  add_index "clients", ["C_TEAM"], name: "C_TEAM", using: :btree
  add_index "clients", ["C_TYPE"], name: "C_TYPE", using: :btree

  create_table "contacts", primary_key: "CON_SEQ", force: true do |t|
    t.string   "CON_C_NUM",          limit: 10
    t.string   "CON_V_NUM",          limit: 10
    t.integer  "CON_KIND",           limit: 1
    t.string   "CON_FIRST_NAME",     limit: 25
    t.string   "CON_LAST_NAME",      limit: 40
    t.string   "CON_MID_INITIAL",    limit: 5
    t.string   "CON_SAL",            limit: 20
    t.string   "CON_TITLE",          limit: 25
    t.integer  "CON_DECISION_MAKER", limit: 1
    t.string   "CON_PHONE_WORK",     limit: 20
    t.string   "CON_PHONE_HOME",     limit: 20
    t.string   "CON_PHONE_MOBILE",   limit: 20
    t.string   "CON_FAX_WORK",       limit: 20
    t.string   "CON_PAGER",          limit: 20
    t.text     "CON_NOTE"
    t.string   "CON_EMAIL_WORK",     limit: 40
    t.string   "CON_EMAIL_HOME",     limit: 40
    t.date     "CON_DATE_ADDED"
    t.string   "CON_ADDED_BY",       limit: 4
    t.datetime "CON_LAST_CALL"
    t.string   "CON_LAST_BY",        limit: 4
    t.string   "CON_FAX_HOME",       limit: 20
    t.integer  "CON_SALES_EMAIL",    limit: 1
    t.string   "CON_ORG",            limit: 100
    t.string   "CON_FULL_NAME",      limit: 66
    t.string   "CON_ADDRESS1",       limit: 60
    t.string   "CON_ADDRESS2",       limit: 60
    t.string   "CON_ADDRESS3",       limit: 60
    t.string   "CON_ADDRESS4",       limit: 60
    t.string   "CON_ADDRESS5",       limit: 60
    t.string   "CON_ADDRESS6",       limit: 60
    t.integer  "CON_APPROVE_JOBS",   limit: 1
    t.string   "CON_EDITED_BY",      limit: 4
    t.datetime "CON_EDITED_WHEN"
  end

  add_index "contacts", ["CON_C_NUM"], name: "CON_C_NUM", using: :btree
  add_index "contacts", ["CON_DECISION_MAKER"], name: "CON_DECISION_MAKER", using: :btree
  add_index "contacts", ["CON_FULL_NAME"], name: "CON_FULL_NAME", using: :btree
  add_index "contacts", ["CON_KIND"], name: "CON_KIND", using: :btree
  add_index "contacts", ["CON_PHONE_WORK"], name: "CON_PHONE_WORK", using: :btree
  add_index "contacts", ["CON_SEQ"], name: "CON_SEQ", unique: true, using: :btree
  add_index "contacts", ["CON_V_NUM"], name: "CON_V_NUM", using: :btree

  create_table "costs", primary_key: "COST_SEQ", force: true do |t|
    t.string   "COST_NUM",              limit: 20
    t.string   "COST_JOB_NUM",          limit: 10
    t.string   "COST_TASK",             limit: 4
    t.text     "COST_NOTE"
    t.decimal  "COST_NET_AMT",                     precision: 9,  scale: 2
    t.decimal  "COST_GROSS_AMT",                   precision: 9,  scale: 2
    t.decimal  "COST_HOURS",                       precision: 9,  scale: 2
    t.integer  "COST_KIND",             limit: 1
    t.date     "COST_DATE"
    t.decimal  "COST_BILL_RATE",                   precision: 9,  scale: 2
    t.decimal  "COST_COST_RATE",                   precision: 9,  scale: 2
    t.string   "COST_PO_NUM",           limit: 15
    t.integer  "COST_BILLABLE",         limit: 1
    t.string   "COST_VENDOR",           limit: 10
    t.integer  "COST_PERIOD",           limit: 1
    t.string   "COST_CLIENT_NUM",       limit: 10
    t.decimal  "COST_DGL",                         precision: 15, scale: 2
    t.date     "COST_POSTED"
    t.string   "COST_KEY",              limit: 15
    t.integer  "COST_FINISHED",         limit: 1
    t.decimal  "COST_MARKUP",                      precision: 9,  scale: 2
    t.decimal  "COST_BILL_AMT",                    precision: 15, scale: 2
    t.date     "COST_AR_DATE"
    t.string   "COST_AR_NUM",           limit: 12
    t.decimal  "COST_BILLED_AMT",                  precision: 15, scale: 2
    t.string   "COST_STATUS",           limit: 10
    t.date     "COST_AR_PAID"
    t.string   "COST_CK_NUM",           limit: 10
    t.string   "COST_REF",              limit: 18
    t.decimal  "COST_HOURS_BILLED",                precision: 9,  scale: 2
    t.decimal  "COST_OT",                          precision: 9,  scale: 0
    t.integer  "COST_POX_LINE"
    t.string   "COST_GL",               limit: 20
    t.decimal  "COST_J_PROD_STATUS",               precision: 9,  scale: 0
    t.decimal  "COST_J_BILL_STATUS",               precision: 9,  scale: 0
    t.string   "COST_PC",               limit: 10
    t.decimal  "COST_QTY",                         precision: 9,  scale: 2
    t.decimal  "COST_DAYS",                        precision: 9,  scale: 2
    t.decimal  "COST_COST_EA",                     precision: 9,  scale: 2
    t.string   "COST_SIZE",             limit: 6
    t.string   "COST_ADDED_BY",         limit: 4
    t.decimal  "COST_GROSS_EA",                    precision: 9,  scale: 2
    t.decimal  "COST_ADV_CK",                      precision: 9,  scale: 0
    t.date     "COST_EXPORTED"
    t.date     "COST_WIP_EXPORTED"
    t.date     "COST_WIP_REV_EXPORTED"
    t.integer  "COST_SALES_TAX",        limit: 1
    t.string   "COST_APPROVED_BY",      limit: 10
    t.datetime "COST_APPROVED_DATE"
    t.string   "COST_REIMBURSE_AP_NUM", limit: 10
    t.string   "COST_EXP_ADDED_BY",     limit: 4
    t.string   "COST_EDITED_BY",        limit: 4
    t.datetime "COST_EDITED_WHEN"
    t.string   "COST_POSTED_BY",        limit: 4
    t.datetime "COST_POSTED_WHEN"
  end

  add_index "costs", ["COST_AR_DATE"], name: "COST_AR_DATE", using: :btree
  add_index "costs", ["COST_AR_NUM"], name: "COST_AR_NUM", using: :btree
  add_index "costs", ["COST_CLIENT_NUM"], name: "COST_CLIENT_NUM", using: :btree
  add_index "costs", ["COST_DATE"], name: "COST_DATE", using: :btree
  add_index "costs", ["COST_JOB_NUM"], name: "COST_JOB_NUM", using: :btree
  add_index "costs", ["COST_KIND"], name: "COST_KIND", using: :btree
  add_index "costs", ["COST_NUM"], name: "COST_NUM", using: :btree
  add_index "costs", ["COST_OT"], name: "COST_OT", using: :btree
  add_index "costs", ["COST_PERIOD"], name: "COST_PERIOD", using: :btree
  add_index "costs", ["COST_POSTED"], name: "COST_POSTED", using: :btree
  add_index "costs", ["COST_PO_NUM"], name: "COST_PO_NUM", using: :btree
  add_index "costs", ["COST_REF"], name: "COST_REF", using: :btree
  add_index "costs", ["COST_SEQ"], name: "COST_SEQ", unique: true, using: :btree
  add_index "costs", ["COST_STATUS"], name: "COST_STATUS", using: :btree
  add_index "costs", ["COST_TASK"], name: "COST_TASK", using: :btree
  add_index "costs", ["COST_VENDOR"], name: "COST_VENDOR", using: :btree

  create_table "credit_card_prefs", primary_key: "CC_SEQ", force: true do |t|
    t.integer "CC_KIND",       limit: 1
    t.string  "CC_VENDOR_NUM", limit: 10
    t.decimal "CC_CGL",                   precision: 9, scale: 0
    t.string  "CC_PAYEE",      limit: 40
    t.string  "CC_JOB_NUM",    limit: 10
    t.string  "CC_TASK",       limit: 4
    t.decimal "CC_DGL",                   precision: 9, scale: 0
    t.string  "CC_ACCT_NUM",   limit: 4
  end

  add_index "credit_card_prefs", ["CC_KIND"], name: "CC_KIND", using: :btree
  add_index "credit_card_prefs", ["CC_PAYEE"], name: "CC_PAYEE", using: :btree
  add_index "credit_card_prefs", ["CC_SEQ"], name: "CC_SEQ", unique: true, using: :btree
  add_index "credit_card_prefs", ["CC_VENDOR_NUM"], name: "CC_VENDOR_NUM", using: :btree

  create_table "data_count", primary_key: "DATA_SEQ", force: true do |t|
    t.date    "DATA_DATE"
    t.decimal "DATA_AP",       precision: 15, scale: 0
    t.decimal "DATA_AR",       precision: 15, scale: 0
    t.decimal "DATA_JOBS",     precision: 15, scale: 0
    t.decimal "DATA_CHECKS",   precision: 15, scale: 0
    t.decimal "DATA_CLIENTS",  precision: 15, scale: 0
    t.decimal "DATA_GL",       precision: 15, scale: 0
    t.decimal "DATA_PAYMENTS", precision: 15, scale: 0
    t.decimal "DATA_PO",       precision: 15, scale: 0
    t.decimal "DATA_VENDORS",  precision: 15, scale: 0
    t.decimal "DATA_TOTAL",    precision: 15, scale: 0
  end

  add_index "data_count", ["DATA_DATE"], name: "DATA_DATE", using: :btree
  add_index "data_count", ["DATA_SEQ"], name: "DATA_SEQ", unique: true, using: :btree

  create_table "depts", primary_key: "DEPT_SEQ", force: true do |t|
    t.string   "DEPT_OFFICE",      limit: 10
    t.string   "DEPT_NAME",        limit: 15
    t.string   "DEPT_DESC",        limit: 40
    t.string   "DEPT_MGR",         limit: 10
    t.decimal  "DEPT_NUM",                    precision: 9, scale: 0
    t.string   "DEPT_ADDED_BY",    limit: 4
    t.datetime "DEPT_ADDED_WHEN"
    t.string   "DEPT_EDITED_BY",   limit: 4
    t.datetime "DEPT_EDITED_WHEN"
  end

  add_index "depts", ["DEPT_MGR"], name: "DEPT_MGR", using: :btree
  add_index "depts", ["DEPT_NAME"], name: "DEPT_NAME", using: :btree
  add_index "depts", ["DEPT_NUM"], name: "DEPT_NUM", using: :btree
  add_index "depts", ["DEPT_SEQ"], name: "DEPT_SEQ", unique: true, using: :btree

  create_table "dictionary", primary_key: "DICT_SEQ", force: true do |t|
    t.string  "DICT_NAME",    limit: 12
    t.integer "DICT_LANG_ID"
  end

  add_index "dictionary", ["DICT_NAME"], name: "DICT_NAME", using: :btree
  add_index "dictionary", ["DICT_SEQ"], name: "DICT_SEQ", unique: true, using: :btree

  create_table "dictionary_word", primary_key: "DWORD_SEQ", force: true do |t|
    t.string "DWORD_DICT_NAME", limit: 12
    t.string "DWORD_WORD",      limit: 40
  end

  add_index "dictionary_word", ["DWORD_DICT_NAME"], name: "DWORD_DICT_NAME", using: :btree
  add_index "dictionary_word", ["DWORD_SEQ"], name: "DWORD_SEQ", unique: true, using: :btree

  create_table "est_revs", primary_key: "RV_SEQ", force: true do |t|
    t.string   "RV_JOB_NUM",        limit: 10
    t.string   "RV_TASK",           limit: 4
    t.decimal  "RV_EST1",                      precision: 9, scale: 2
    t.decimal  "RV_EST2",                      precision: 9, scale: 2
    t.decimal  "RV_EST3",                      precision: 9, scale: 2
    t.string   "RV_NAME",           limit: 40
    t.decimal  "RV_GROUP",                     precision: 9, scale: 0
    t.decimal  "RV_SORT",                      precision: 9, scale: 0
    t.integer  "RV_FINAL",          limit: 1
    t.decimal  "RV_REVISION",                  precision: 9, scale: 0
    t.string   "RV_EST_HEAD1",      limit: 15
    t.string   "RV_EST_HEAD2",      limit: 15
    t.string   "RV_EST_HEAD3",      limit: 15
    t.decimal  "RV_EST_HRS1",                  precision: 9, scale: 2
    t.decimal  "RV_EST_HRS2",                  precision: 9, scale: 2
    t.decimal  "RV_EST_HRS3",                  precision: 9, scale: 2
    t.decimal  "RV_BUDGET",                    precision: 9, scale: 2
    t.string   "RV_REVISED_BY",     limit: 4
    t.date     "RV_REVISION_DATE"
    t.text     "RV_REVISION_NOTES"
    t.text     "RV_REASON"
    t.string   "RV_REV_OKD_BY",     limit: 4
    t.datetime "RV_REV_OKD_DATE"
    t.string   "RV_ADDED_BY",       limit: 4
    t.datetime "RV_ADDED_WHEN"
    t.string   "RV_EDITED_BY",      limit: 4
    t.datetime "RV_EDITED_WHEN"
  end

  add_index "est_revs", ["RV_JOB_NUM"], name: "RV_JOB_NUM", using: :btree
  add_index "est_revs", ["RV_REVISION"], name: "RV_REVISION", using: :btree
  add_index "est_revs", ["RV_SEQ"], name: "RV_SEQ", unique: true, using: :btree
  add_index "est_revs", ["RV_TASK"], name: "RV_TASK", using: :btree

  create_table "f_preference", primary_key: "PR_RSN", force: true do |t|
    t.integer "prSQLConvFlag", limit: 1
  end

  add_index "f_preference", ["PR_RSN"], name: "PR_RSN", unique: true, using: :btree

  create_table "finance", primary_key: "FI_SEQ", force: true do |t|
    t.string  "FI_AC_NUM",        limit: 15
    t.integer "FI_CATEGORY",      limit: 1
    t.integer "FI_CLASS",         limit: 1
    t.decimal "FI_MTD",                      precision: 15, scale: 2
    t.float   "FI_MTD_PERCENT"
    t.decimal "FI_YTD",                      precision: 15, scale: 2
    t.float   "FI_YTD_PERCENT"
    t.decimal "FI_MONTH",                    precision: 15, scale: 2
    t.decimal "FI_YEAR",                     precision: 15, scale: 2
    t.decimal "FI_1",                        precision: 15, scale: 2
    t.decimal "FI_2",                        precision: 15, scale: 2
    t.decimal "FI_3",                        precision: 15, scale: 2
    t.decimal "FI_4",                        precision: 15, scale: 2
    t.decimal "FI_5",                        precision: 15, scale: 2
    t.decimal "FI_6",                        precision: 15, scale: 2
    t.decimal "FI_7",                        precision: 15, scale: 2
    t.decimal "FI_8",                        precision: 15, scale: 2
    t.text    "FI_NAME"
    t.text    "FI_NOTE"
    t.decimal "FI_SUB_CLASS",                precision: 15, scale: 0
    t.decimal "FI_ROLL_UP",                  precision: 15, scale: 2
    t.float   "FI_PCT1"
    t.float   "FI_PCT2"
    t.float   "FI_PCT3"
    t.float   "FI_PCT4"
    t.decimal "FI_L_MONTH",                  precision: 15, scale: 2
    t.decimal "FI_L_MTD",                    precision: 15, scale: 2
    t.decimal "FI_L_YEAR",                   precision: 15, scale: 2
    t.decimal "FI_L_YTD",                    precision: 15, scale: 2
    t.float   "FI_L_MTD_PERCENT"
    t.float   "FI_L_YTD_PERCENT"
    t.float   "FI_L_PCT1"
    t.float   "FI_L_PCT2"
    t.float   "FI_L_PCT3"
    t.float   "FI_L_PCT4"
    t.string  "FI_CLIENT_NUM",    limit: 10
    t.decimal "FI_GROUP",                    precision: 9,  scale: 0
    t.float   "FI_PCT5"
    t.float   "FI_L_PCT5"
  end

  add_index "finance", ["FI_AC_NUM"], name: "FI_AC_NUM", using: :btree
  add_index "finance", ["FI_SEQ"], name: "FI_SEQ", unique: true, using: :btree

  create_table "groups", primary_key: "GROUP_SEQ", force: true do |t|
    t.decimal  "GROUP_NUM",                    precision: 9, scale: 0
    t.string   "GROUP_DESC",        limit: 40
    t.integer  "GROUP_CAT",         limit: 1
    t.string   "GROUP_ADDED_BY",    limit: 4
    t.datetime "GROUP_ADDED_WHEN"
    t.string   "GROUP_EDITED_BY",   limit: 4
    t.datetime "GROUP_EDITED_WHEN"
  end

  add_index "groups", ["GROUP_NUM"], name: "GROUP_NUM", using: :btree
  add_index "groups", ["GROUP_SEQ"], name: "GROUP_SEQ", unique: true, using: :btree

  create_table "history", primary_key: "H_SEQ", force: true do |t|
    t.string   "H_JOB_NUM",     limit: 10
    t.decimal  "H_NUM",                    precision: 9, scale: 0
    t.string   "H_WHO",         limit: 4
    t.datetime "H_DATE"
    t.text     "H_DESC"
    t.integer  "H_RESOLVED",    limit: 1
    t.string   "H_FOR",         limit: 4
    t.text     "H_USER_NOTE"
    t.text     "H_MAIL_TO"
    t.integer  "H_MANUAL",      limit: 1
    t.string   "H_ADDED_BY",    limit: 4
    t.datetime "H_ADDED_WHEN"
    t.string   "H_EDITED_BY",   limit: 4
    t.datetime "H_EDITED_WHEN"
  end

  add_index "history", ["H_JOB_NUM"], name: "H_JOB_NUM", using: :btree
  add_index "history", ["H_RESOLVED"], name: "H_RESOLVED", using: :btree
  add_index "history", ["H_SEQ"], name: "H_SEQ", unique: true, using: :btree
  add_index "history", ["H_WHO"], name: "H_WHO", using: :btree

  create_table "history_client", primary_key: "HC_SEQ", force: true do |t|
    t.string   "HC_CLIENT_NUM",  limit: 10
    t.decimal  "HC_NUM",                    precision: 9, scale: 0
    t.string   "HC_ADDED_BY",    limit: 4
    t.datetime "HC_DATE"
    t.string   "HC_SUBJECT",     limit: 80
    t.integer  "HC_OK",          limit: 1
    t.string   "HC_FOR",         limit: 4
    t.text     "HC_DESC"
    t.text     "HC_MAIL_TO"
    t.string   "HC_CC",          limit: 80
    t.string   "HC_BCC",         limit: 80
    t.integer  "HC_NOTIFIED",    limit: 1
    t.string   "HC_INV_NUM",     limit: 10
    t.integer  "HC_KIND",        limit: 1
    t.integer  "HC_AUTO_DIARY",  limit: 1
    t.string   "HC_EDITED_BY",   limit: 4
    t.datetime "HC_EDITED_WHEN"
  end

  add_index "history_client", ["HC_ADDED_BY"], name: "HC_ADDED_BY", using: :btree
  add_index "history_client", ["HC_CLIENT_NUM"], name: "HC_CLIENT_NUM", using: :btree
  add_index "history_client", ["HC_DATE"], name: "HC_DATE", using: :btree
  add_index "history_client", ["HC_KIND"], name: "HC_KIND", using: :btree
  add_index "history_client", ["HC_OK"], name: "HC_OK", using: :btree
  add_index "history_client", ["HC_SEQ"], name: "HC_SEQ", unique: true, using: :btree

  create_table "history_vendor", primary_key: "HV_SEQ", force: true do |t|
    t.string   "HV_VENDOR_NUM",  limit: 10
    t.decimal  "HV_NUM",                    precision: 9, scale: 0
    t.string   "HV_ADDED_BY",    limit: 4
    t.datetime "HV_DATE"
    t.string   "HV_SUBJECT",     limit: 80
    t.integer  "HV_OK",          limit: 1
    t.string   "HV_FOR",         limit: 4
    t.text     "HV_DESC"
    t.text     "HV_MAIL_TO"
    t.string   "HV_CC",          limit: 80
    t.string   "HV_BCC",         limit: 80
    t.integer  "HV_NOTIFIED",    limit: 1
    t.string   "HV_INV_NUM",     limit: 20
    t.string   "HV_EDITED_BY",   limit: 4
    t.datetime "HV_EDITED_WHEN"
  end

  add_index "history_vendor", ["HV_ADDED_BY"], name: "HV_ADDED_BY", using: :btree
  add_index "history_vendor", ["HV_DATE"], name: "HV_DATE", using: :btree
  add_index "history_vendor", ["HV_OK"], name: "HV_OK", using: :btree
  add_index "history_vendor", ["HV_SEQ"], name: "HV_SEQ", unique: true, using: :btree
  add_index "history_vendor", ["HV_VENDOR_NUM"], name: "HV_VENDOR_NUM", using: :btree

  create_table "home_comments", primary_key: "COMMENT_SEQ", force: true do |t|
    t.integer  "COMMENT_HOME_SEQ"
    t.string   "COMMENT_JOB_NUM",     limit: 15
    t.string   "COMMENT_TASK",        limit: 4
    t.string   "COMMENT_ADDED_BY",    limit: 10
    t.datetime "COMMENT_DATE_ADDED"
    t.integer  "COMMENT_KIND",        limit: 1
    t.integer  "COMMENT_REPLY",       limit: 1
    t.integer  "COMMENT_PRIVATE1",    limit: 1
    t.integer  "COMMENT_PRIVATE2",    limit: 1
    t.integer  "COMMENT_PRIORITY",    limit: 1
    t.decimal  "COMMENT_SORT",                         precision: 15, scale: 0
    t.integer  "COMMENT_CHOICE",      limit: 1
    t.text     "COMMENT_MESSAGE",     limit: 16777215
    t.integer  "COMMENT_LOCKED",      limit: 1
    t.integer  "COMMENT_ADDED_KIND",  limit: 1
    t.integer  "COMMENT_RATING",      limit: 1
    t.decimal  "COMMENT_PROD_STATUS",                  precision: 15, scale: 0
    t.text     "COMMENT_FILE_NAME"
    t.string   "COMMENT_X_PHASE",     limit: 20
    t.string   "COMMENT_PING",        limit: 10
    t.integer  "COMMENT_FINAL",       limit: 1
    t.integer  "COMMENT_STAR",        limit: 1
  end

  add_index "home_comments", ["COMMENT_HOME_SEQ"], name: "COMMENT_HOME_SEQ", using: :btree
  add_index "home_comments", ["COMMENT_SEQ"], name: "COMMENT_SEQ", unique: true, using: :btree

  create_table "homebase", primary_key: "HOME_SEQ", force: true do |t|
    t.string   "HOME_JOB_NUM",        limit: 15
    t.string   "HOME_TASK",           limit: 4
    t.integer  "HOME_STATUS",         limit: 1
    t.string   "HOME_S_INITIALS",     limit: 10
    t.string   "HOME_ADDED_BY",       limit: 4
    t.datetime "HOME_DATE_ADDED"
    t.datetime "HOME_DUE_DATE"
    t.string   "HOME_SUBJECT",        limit: 200
    t.integer  "HOME_KIND",           limit: 1
    t.integer  "HOME_REPLY",          limit: 1
    t.integer  "HOME_PRIVATE1",       limit: 1
    t.integer  "HOME_PRIVATE2",       limit: 1
    t.integer  "HOME_PRIORITY",       limit: 1
    t.decimal  "HOME_SORT",                       precision: 15, scale: 0
    t.string   "HOME_CHOICE1",        limit: 100
    t.string   "HOME_CHOICE2",        limit: 100
    t.string   "HOME_CHOICE3",        limit: 100
    t.string   "HOME_CHOICE4",        limit: 100
    t.string   "HOME_CHOICE5",        limit: 100
    t.string   "HOME_CHOICE6",        limit: 100
    t.datetime "HOME_LAST_REPLY"
    t.text     "HOME_MESSAGE"
    t.integer  "HOME_LOCKED",         limit: 1
    t.integer  "HOME_ADDED_KIND",     limit: 1
    t.text     "HOME_COMMENT"
    t.decimal  "HOME_RATING",                     precision: 15, scale: 1
    t.decimal  "HOME_PROD_STATUS",                precision: 15, scale: 0
    t.decimal  "HOME_ORIG_SEQ",                   precision: 15, scale: 0
    t.text     "HOME_FILE_NAME"
    t.string   "HOME_X_PHASE",        limit: 20
    t.integer  "HOME_AVAIL_CREATIVE", limit: 1
    t.integer  "HOME_AVAIL_PROD",     limit: 1
    t.integer  "HOME_AVAIL_STAFF",    limit: 1
    t.integer  "HOME_AVAIL_CLIENTS",  limit: 1
    t.integer  "HOME_AVAIL_VENDORS",  limit: 1
    t.integer  "HOME_EMAIL_IT",       limit: 1
  end

  add_index "homebase", ["HOME_JOB_NUM"], name: "HOME_JOB_NUM", using: :btree
  add_index "homebase", ["HOME_SEQ"], name: "HOME_SEQ", unique: true, using: :btree

  create_table "int_items", primary_key: "INT_SEQ", force: true do |t|
    t.string   "INT_ITEM",        limit: 10
    t.string   "INT_SIZE",        limit: 6
    t.string   "INT_KEY",         limit: 16
    t.string   "INT_DESC",        limit: 40
    t.string   "INT_TASK",        limit: 4
    t.decimal  "INT_COST_EA",                precision: 9, scale: 2
    t.string   "INT_UNIT",        limit: 8
    t.decimal  "INT_GROSS_EA",               precision: 9, scale: 2
    t.string   "INT_ADDED_BY",    limit: 4
    t.datetime "INT_ADDED_WHEN"
    t.string   "INT_EDITED_BY",   limit: 4
    t.datetime "INT_EDITED_WHEN"
  end

  add_index "int_items", ["INT_ITEM"], name: "INT_ITEM", using: :btree
  add_index "int_items", ["INT_KEY"], name: "INT_KEY", using: :btree
  add_index "int_items", ["INT_SEQ"], name: "INT_SEQ", unique: true, using: :btree
  add_index "int_items", ["INT_SIZE"], name: "INT_SIZE", using: :btree

  create_table "je", primary_key: "JE_SEQ", force: true do |t|
    t.date     "JE_DATE"
    t.string   "JE_REF",         limit: 30
    t.date     "JE_POSTED"
    t.text     "JE_DESC"
    t.decimal  "JE_DEBIT",                  precision: 15, scale: 2
    t.decimal  "JE_CREDIT",                 precision: 15, scale: 2
    t.decimal  "JE_AC_NUM",                 precision: 15, scale: 2
    t.decimal  "JE_PERIOD",                 precision: 9,  scale: 0
    t.string   "JE_JOB_NUM",     limit: 10
    t.string   "JE_CLIENT_NUM",  limit: 10
    t.decimal  "JE_RECONCILE",              precision: 9,  scale: 2
    t.integer  "JE_SOURCE",      limit: 1
    t.string   "JE_ADDED_BY",    limit: 4
    t.datetime "JE_ADDED_WHEN"
    t.string   "JE_VENDOR_NUM",  limit: 10
    t.integer  "JE_AUTO_REV",    limit: 1
    t.integer  "JE_AUTO_ACC",    limit: 1
    t.integer  "JE_TEMP_REC",    limit: 1
    t.integer  "JE_KIND",        limit: 1
    t.string   "JE_PAY_BATCH",   limit: 10
    t.integer  "JE_GL_REC",      limit: 1
    t.date     "JE_EXPORTED"
    t.string   "JE_EDITED_BY",   limit: 4
    t.datetime "JE_EDITED_WHEN"
    t.string   "JE_POSTED_BY",   limit: 4
    t.datetime "JE_POSTED_WHEN"
  end

  add_index "je", ["JE_AC_NUM"], name: "JE_AC_NUM", using: :btree
  add_index "je", ["JE_ADDED_BY"], name: "JE_ADDED_BY", using: :btree
  add_index "je", ["JE_CLIENT_NUM"], name: "JE_CLIENT_NUM", using: :btree
  add_index "je", ["JE_DATE"], name: "JE_DATE", using: :btree
  add_index "je", ["JE_GL_REC"], name: "JE_GL_REC", using: :btree
  add_index "je", ["JE_JOB_NUM"], name: "JE_JOB_NUM", using: :btree
  add_index "je", ["JE_KIND"], name: "JE_KIND", using: :btree
  add_index "je", ["JE_PERIOD"], name: "JE_PERIOD", using: :btree
  add_index "je", ["JE_POSTED"], name: "JE_POSTED", using: :btree
  add_index "je", ["JE_RECONCILE"], name: "JE_RECONCILE", using: :btree
  add_index "je", ["JE_REF"], name: "JE_REF", using: :btree
  add_index "je", ["JE_SEQ"], name: "JE_SEQ", unique: true, using: :btree
  add_index "je", ["JE_SOURCE"], name: "JE_SOURCE", using: :btree
  add_index "je", ["JE_VENDOR_NUM"], name: "JE_VENDOR_NUM", using: :btree

  create_table "je2", primary_key: "JE2_SEQ", force: true do |t|
    t.date     "JE2_DATE"
    t.string   "JE2_REF",              limit: 30
    t.date     "JE2_POSTED"
    t.text     "JE2_DESC"
    t.decimal  "JE2_DEBIT",                       precision: 15, scale: 2
    t.decimal  "JE2_CREDIT",                      precision: 15, scale: 1
    t.decimal  "JE2_AC_NUM",                      precision: 15, scale: 2
    t.integer  "JE2_PERIOD",           limit: 1
    t.string   "JE2_JOB_NUM",          limit: 15
    t.string   "JE2_CLIENT_NUM",       limit: 10
    t.decimal  "JE2_RECONCILE",                   precision: 9,  scale: 2
    t.integer  "JE2_SOURCE",           limit: 1
    t.string   "JE2_ADDED_BY",         limit: 4
    t.datetime "JE2_ADDED_WHEN"
    t.string   "JE2_VENDOR_NUM",       limit: 10
    t.integer  "JE2_AUTO_REV",         limit: 1
    t.integer  "JE2_AUTO_ACC",         limit: 1
    t.integer  "JE2_TEMP_REC",         limit: 1
    t.integer  "JE2_KIND",             limit: 1
    t.string   "JE2_PAY_BATCH",        limit: 10
    t.integer  "JE2_GL_REC",           limit: 1
    t.date     "JE2_EXPORTED"
    t.string   "JE2_EDITED_BY",        limit: 4
    t.datetime "JE2_EDITED_WHEN"
    t.string   "JE2_POSTED_BY",        limit: 4
    t.datetime "JE2_POSTED_WHEN"
    t.string   "JE2_FISCAL_YEAR",      limit: 15
    t.date     "JE2_PERIOD_FIRST_DAY"
  end

  add_index "je2", ["JE2_REF"], name: "JE2_REF", using: :btree
  add_index "je2", ["JE2_SEQ"], name: "JE2_SEQ", unique: true, using: :btree

  create_table "job_order", primary_key: "CB_SEQ", force: true do |t|
    t.string   "CB_JOB_NUM",       limit: 10
    t.string   "CB_CLIENT_NUM",    limit: 10
    t.text     "CB_1_LABEL"
    t.text     "CB_1"
    t.text     "CB_2_LABEL"
    t.text     "CB_2"
    t.text     "CB_3_LABEL"
    t.text     "CB_3"
    t.text     "CB_4_LABEL"
    t.text     "CB_4"
    t.text     "CB_5_LABEL"
    t.text     "CB_5"
    t.text     "CB_6_LABEL"
    t.text     "CB_6"
    t.text     "CB_7_LABEL"
    t.text     "CB_7"
    t.text     "CB_8_LABEL"
    t.text     "CB_8"
    t.decimal  "CB_REV",                      precision: 9, scale: 0
    t.text     "CB_9_LABEL"
    t.text     "CB_9"
    t.text     "CB_10_LABEL"
    t.text     "CB_10"
    t.text     "CB_11_LABEL"
    t.text     "CB_11"
    t.text     "CB_12_LABEL"
    t.text     "CB_12"
    t.text     "CB_13_LABEL"
    t.text     "CB_13"
    t.text     "CB_14_LABEL"
    t.text     "CB_14"
    t.text     "CB_15_LABEL"
    t.text     "CB_15"
    t.string   "CB_ADDED_BY",      limit: 4
    t.string   "CB_REV_BY",        limit: 4
    t.datetime "CB_REV_DATE"
    t.integer  "CB_OK",            limit: 1
    t.string   "CB_OK_BY",         limit: 4
    t.datetime "CB_OK_DATE"
    t.integer  "CB_APPROVED",      limit: 1
    t.datetime "CB_APPROVED_DATE"
    t.string   "CB_APPROVED_BY",   limit: 4
    t.string   "CB_EDITED_BY",     limit: 4
    t.datetime "CB_EDITED_WHEN"
  end

  add_index "job_order", ["CB_CLIENT_NUM"], name: "CB_CLIENT_NUM", using: :btree
  add_index "job_order", ["CB_JOB_NUM"], name: "CB_JOB_NUM", using: :btree
  add_index "job_order", ["CB_SEQ"], name: "CB_SEQ", unique: true, using: :btree

  create_table "job_task", primary_key: "X_SEQ", force: true do |t|
    t.string   "X_JOB_NUM",           limit: 15
    t.string   "X_TASK",              limit: 4
    t.text     "X_DESC"
    t.decimal  "X_ESTIMATE",                     precision: 15, scale: 2
    t.decimal  "X_BUDGET",                       precision: 15, scale: 2
    t.decimal  "X_HOURS_EST",                    precision: 15, scale: 2
    t.decimal  "X_HOURS_ACT",                    precision: 15, scale: 2
    t.decimal  "X_LABOR",                        precision: 15, scale: 2
    t.decimal  "X_COST",                         precision: 15, scale: 2
    t.decimal  "X_EXPENSES",                     precision: 15, scale: 2
    t.decimal  "X_PO_NET",                       precision: 15, scale: 2
    t.decimal  "X_PO_GROSS",                     precision: 15, scale: 2
    t.decimal  "X_UNBILLED",                     precision: 15, scale: 2
    t.decimal  "X_BILL_RATE",                    precision: 15, scale: 2
    t.decimal  "X_MARKUP",                       precision: 15, scale: 2
    t.decimal  "X_STATUS",                       precision: 15, scale: 0
    t.text     "X_NOTE"
    t.integer  "X_TAXABLE1",          limit: 1
    t.integer  "X_TAXABLE2",          limit: 1
    t.integer  "X_FINISHED",          limit: 1
    t.date     "X_DUE_DATE"
    t.date     "X_START_DATE"
    t.integer  "X_KIND",              limit: 1
    t.string   "X_RESOURCE",          limit: 10
    t.decimal  "X_LEAD_TIME",                    precision: 9,  scale: 0
    t.string   "X_KEY",               limit: 19
    t.decimal  "X_SORT",                         precision: 9,  scale: 0
    t.decimal  "X_GROUP",                        precision: 9,  scale: 0
    t.decimal  "X_CGL",                          precision: 15, scale: 2
    t.decimal  "X_DGL",                          precision: 15, scale: 2
    t.date     "X_LAST_WORK"
    t.integer  "X_SHOW_DESC",         limit: 1
    t.integer  "X_PC",                limit: 1
    t.string   "X_NAME",              limit: 50
    t.decimal  "X_TAX1_RATE",                    precision: 15, scale: 4
    t.decimal  "X_TAX2_RATE",                    precision: 15, scale: 4
    t.decimal  "X_EST1",                         precision: 15, scale: 2
    t.decimal  "X_EST2",                         precision: 15, scale: 2
    t.decimal  "X_EST3",                         precision: 15, scale: 2
    t.decimal  "X_BILLED",                       precision: 15, scale: 2
    t.string   "X_ROLL_UP",           limit: 4
    t.decimal  "X_CHANGE_AMT",                   precision: 15, scale: 2
    t.string   "X_CHAR30",            limit: 30
    t.string   "X_CHAR20",            limit: 20
    t.decimal  "X_MEDIA_COMM",                   precision: 15, scale: 2
    t.decimal  "X_CHANGE_HRS",                   precision: 15, scale: 2
    t.decimal  "X_CHANGE_BUDGET",                precision: 15, scale: 2
    t.decimal  "X_AMT4",                         precision: 15, scale: 2
    t.string   "X_KEY_RESOURCE",      limit: 29
    t.string   "X_GROUP_PROD",        limit: 10
    t.string   "X_CHAR10_2",          limit: 10
    t.string   "X_CHAR10_3",          limit: 10
    t.decimal  "X_SORT_PROD",                    precision: 15, scale: 0
    t.decimal  "X_RATE_KIND",                    precision: 15, scale: 0
    t.decimal  "X_SUB_EST_HRS",                  precision: 15, scale: 2
    t.decimal  "X_SUB_ACT_HRS",                  precision: 15, scale: 2
    t.decimal  "X_NUM2D_5",                      precision: 15, scale: 2
    t.decimal  "X_NUM2D_6",                      precision: 15, scale: 2
    t.decimal  "X_NUM2D_7",                      precision: 15, scale: 2
    t.decimal  "X_HRS_UNBILLED",                 precision: 15, scale: 2
    t.integer  "X_UNBILLABLE",        limit: 1
    t.decimal  "X_GROSS_COSTS",                  precision: 15, scale: 2
    t.decimal  "X_GROSS_LABOR",                  precision: 15, scale: 2
    t.decimal  "X_GROSS_EXP",                    precision: 15, scale: 2
    t.decimal  "X_MU_AMT",                       precision: 15, scale: 2
    t.text     "X_SPECS"
    t.date     "X_DATE_FINISHED"
    t.time     "X_DUE_WHEN"
    t.decimal  "X_HOURS_BILLED",                 precision: 15, scale: 2
    t.decimal  "X_EST_HRS1",                     precision: 9,  scale: 2
    t.decimal  "X_EST_HRS2",                     precision: 9,  scale: 2
    t.decimal  "X_EST_HRS3",                     precision: 9,  scale: 2
    t.integer  "X_COMMISSIONABLE",    limit: 1
    t.string   "X_ADDED_BY",          limit: 4
    t.datetime "X_ADDED_WHEN"
    t.string   "X_EDITED_BY",         limit: 4
    t.datetime "X_EDITED_WHEN"
    t.text     "X_TAGS"
    t.decimal  "X_COMPLETED",                    precision: 15, scale: 0
    t.integer  "X_RELATION"
    t.integer  "X_RELATION_TYPE",     limit: 1
    t.decimal  "X_COLOR",                        precision: 15, scale: 0
    t.integer  "X_CLIENT_SCHED",      limit: 1
    t.string   "X_PHASE",             limit: 20
    t.decimal  "X_HOURS_WK1_1",                  precision: 15, scale: 2
    t.decimal  "X_HOURS_WK1_2",                  precision: 15, scale: 2
    t.decimal  "X_HOURS_WK1_3",                  precision: 15, scale: 2
    t.decimal  "X_HOURS_WK1_4",                  precision: 15, scale: 2
    t.decimal  "X_HOURS_WK1_5",                  precision: 15, scale: 2
    t.decimal  "X_HOURS_WK2_1",                  precision: 15, scale: 2
    t.decimal  "X_HOURS_WK2_2",                  precision: 15, scale: 2
    t.decimal  "X_HOURS_WK2_3",                  precision: 15, scale: 2
    t.decimal  "X_HOURS_WK2_4",                  precision: 15, scale: 2
    t.decimal  "X_HOURS_WK2_5",                  precision: 15, scale: 2
    t.decimal  "X_TAXABLE3",                     precision: 15, scale: 0
    t.decimal  "X_TAX3_RATE",                    precision: 15, scale: 4
    t.decimal  "X_NEXT_BILL_AMT",                precision: 15, scale: 2
    t.decimal  "X_NEXT_BILL_HRS",                precision: 15, scale: 2
    t.date     "X_NEXT_BILL_DATE"
    t.integer  "X_NO_TIME",           limit: 1
    t.integer  "X_MILESTONE",         limit: 1
    t.integer  "X_REQ_APPROVAL",      limit: 1
    t.datetime "X_REQ_APPROVED_DATE"
    t.decimal  "X_PRIORITY",                     precision: 9,  scale: 0
  end

  add_index "job_task", ["X_DATE_FINISHED"], name: "X_DATE_FINISHED", using: :btree
  add_index "job_task", ["X_DUE_DATE"], name: "X_DUE_DATE", using: :btree
  add_index "job_task", ["X_FINISHED"], name: "X_FINISHED", using: :btree
  add_index "job_task", ["X_JOB_NUM"], name: "X_JOB_NUM", using: :btree
  add_index "job_task", ["X_KEY"], name: "X_KEY", using: :btree
  add_index "job_task", ["X_KEY_RESOURCE"], name: "X_KEY_RESOURCE", using: :btree
  add_index "job_task", ["X_KIND"], name: "X_KIND", using: :btree
  add_index "job_task", ["X_RESOURCE"], name: "X_RESOURCE", using: :btree
  add_index "job_task", ["X_SEQ"], name: "X_SEQ", unique: true, using: :btree
  add_index "job_task", ["X_START_DATE"], name: "X_START_DATE", using: :btree
  add_index "job_task", ["X_TASK"], name: "X_TASK", using: :btree

  create_table "job_types", primary_key: "TYPE_SEQ", force: true do |t|
    t.string   "TYPE_CODE",           limit: 15
    t.string   "TYPE_NAME",           limit: 40
    t.text     "TYPE_DISCLAIMER"
    t.string   "TYPE_TRAFFIC1",       limit: 7
    t.string   "TYPE_TRAFFIC2",       limit: 7
    t.string   "TYPE_TRAFFIC3",       limit: 7
    t.string   "TYPE_TRAFFIC4",       limit: 7
    t.string   "TYPE_TRAFFIC5",       limit: 7
    t.string   "TYPE_TRAFFIC6",       limit: 7
    t.string   "TYPE_TRAFFIC7",       limit: 7
    t.string   "TYPE_TRAFFIC8",       limit: 7
    t.string   "TYPE_TRAFFIC9",       limit: 7
    t.string   "TYPE_TRAFFIC10",      limit: 7
    t.decimal  "TYPE_MARKUP",                          precision: 9, scale: 2
    t.decimal  "TYPE_RATE",                            precision: 9, scale: 2
    t.binary   "TYPE_TASK_LIST",      limit: 16777215
    t.string   "TYPE_HEADING",        limit: 20
    t.string   "TYPE_EST_COL1",       limit: 15
    t.string   "TYPE_EST_COL2",       limit: 15
    t.string   "TYPE_EST_COL3",       limit: 15
    t.string   "TYPE_TRAFFIC11",      limit: 7
    t.string   "TYPE_TRAFFIC12",      limit: 7
    t.string   "TYPE_FIELD1",         limit: 20
    t.string   "TYPE_FIELD2",         limit: 20
    t.string   "TYPE_FIELD3",         limit: 20
    t.string   "TYPE_FIELD4",         limit: 20
    t.string   "TYPE_FIELD5",         limit: 20
    t.string   "TYPE_FIELD6",         limit: 20
    t.integer  "TYPE_CONTING",        limit: 1
    t.decimal  "TYPE_CON_PC",                          precision: 9, scale: 2
    t.decimal  "TYPE_CON_AMT",                         precision: 9, scale: 2
    t.text     "TYPE_CON_NOTE"
    t.integer  "TYPE_SHOW_HRS",       limit: 1
    t.string   "TYPE_AE_TITLE",       limit: 20
    t.text     "TYPE_JOB_SPECS"
    t.integer  "TYPE_RATE_KIND",      limit: 1
    t.integer  "TYPE_TAX",            limit: 1
    t.text     "TYPE_CB_1_LABEL"
    t.text     "TYPE_CB_2_LABEL"
    t.text     "TYPE_CB_3_LABEL"
    t.text     "TYPE_CB_4_LABEL"
    t.text     "TYPE_CB_5_LABEL"
    t.text     "TYPE_CB_6_LABEL"
    t.text     "TYPE_CB_7_LABEL"
    t.text     "TYPE_CB_8_LABEL"
    t.text     "TYPE_CB_9_LABEL"
    t.text     "TYPE_CB_10_LABEL"
    t.text     "TYPE_CB_11_LABEL"
    t.text     "TYPE_CB_12_LABEL"
    t.text     "TYPE_CB_13_LABEL"
    t.text     "TYPE_CB_14_LABEL"
    t.text     "TYPE_CB_15_LABEL"
    t.integer  "TYPE_COMMISSIONABLE", limit: 1
    t.decimal  "TYPE_COMM_RATE",                       precision: 9, scale: 2
    t.decimal  "TYPE_COMM_SPIFF",                      precision: 9, scale: 2
    t.integer  "TYPE_COMM_TYPE_AE",   limit: 1
    t.decimal  "TYPE_COMM_RATE_BIZ",                   precision: 9, scale: 2
    t.integer  "TYPE_ACTIVE",         limit: 1
    t.string   "TYPE_ADDED_BY",       limit: 4
    t.datetime "TYPE_ADDED_WHEN"
    t.string   "TYPE_EDITED_BY",      limit: 4
    t.datetime "TYPE_EDITED_WHEN"
    t.text     "TYPE_WO_1_LABEL"
    t.text     "TYPE_WO_2_LABEL"
    t.text     "TYPE_WO_3_LABEL"
    t.text     "TYPE_WO_4_LABEL"
    t.text     "TYPE_WO_5_LABEL"
    t.text     "TYPE_WO_6_LABEL"
    t.text     "TYPE_WO_7_LABEL"
    t.text     "TYPE_WO_8_LABEL"
    t.text     "TYPE_WO_9_LABEL"
    t.text     "TYPE_WO_10_LABEL"
    t.text     "TYPE_WO_11_LABEL"
    t.text     "TYPE_WO_12_LABEL"
    t.text     "TYPE_WO_13_LABEL"
    t.text     "TYPE_WO_14_LABEL"
    t.text     "TYPE_WO_15_LABEL"
    t.string   "TYPE_PC",             limit: 10
    t.integer  "TYPE_CHECKLIST1",     limit: 1
    t.integer  "TYPE_CHECKLIST2",     limit: 1
    t.integer  "TYPE_CHECKLIST3",     limit: 1
    t.integer  "TYPE_CHECKLIST4",     limit: 1
    t.integer  "TYPE_CHECKLIST5",     limit: 1
    t.integer  "TYPE_CHECKLIST6",     limit: 1
    t.integer  "TYPE_CHECKLIST7",     limit: 1
    t.integer  "TYPE_CHECKLIST8",     limit: 1
    t.string   "TYPE_CHECK1_NAME",    limit: 40
    t.string   "TYPE_CHECK2_NAME",    limit: 40
    t.string   "TYPE_CHECK3_NAME",    limit: 40
    t.string   "TYPE_CHECK4_NAME",    limit: 40
    t.string   "TYPE_CHECK5_NAME",    limit: 40
    t.string   "TYPE_CHECK6_NAME",    limit: 40
    t.string   "TYPE_CHECK7_NAME",    limit: 40
    t.string   "TYPE_CHECK8_NAME",    limit: 40
    t.decimal  "TYPE_FORECAST_COSTS",                  precision: 9, scale: 0
    t.decimal  "TYPE_FORECAST_LABOR",                  precision: 9, scale: 0
    t.string   "TYPE_USER_DATE1",     limit: 40
    t.string   "TYPE_USER_DATE2",     limit: 40
    t.string   "TYPE_REVIEWER",       limit: 10
    t.integer  "TYPE_REQUESTABLE",    limit: 1
    t.string   "TYPE_J_FIELD1_LABEL", limit: 20
    t.string   "TYPE_J_FIELD2_LABEL", limit: 20
    t.string   "TYPE_J_FIELD3_LABEL", limit: 20
    t.string   "TYPE_J_FIELD4_LABEL", limit: 20
    t.string   "TYPE_J_FIELD5_LABEL", limit: 20
    t.string   "TYPE_J_FIELD6_LABEL", limit: 20
    t.integer  "TYPE_REQ_J_FIELD1",   limit: 1
    t.integer  "TYPE_REQ_J_FIELD2",   limit: 1
    t.integer  "TYPE_REQ_J_FIELD3",   limit: 1
    t.integer  "TYPE_REQ_J_FIELD4",   limit: 1
    t.integer  "TYPE_REQ_J_FIELD5",   limit: 1
    t.integer  "TYPE_REQ_J_FIELD6",   limit: 1
    t.string   "TYPE_CATEGORY",       limit: 25
    t.string   "TYPE_JOB_OPTION1",    limit: 25
    t.string   "TYPE_JOB_OPTION2",    limit: 25
    t.string   "TYPE_JOB_OPTION3",    limit: 25
    t.string   "TYPE_JOB_OPTION4",    limit: 25
    t.string   "TYPE_JOB_OPTION5",    limit: 25
    t.string   "TYPE_JOB_OPTION6",    limit: 25
    t.string   "TYPE_JOB_OPTION7",    limit: 25
    t.string   "TYPE_JOB_OPTION8",    limit: 25
    t.integer  "TYPE_HOME_CB1",       limit: 1
    t.integer  "TYPE_HOME_CB2",       limit: 1
    t.integer  "TYPE_HOME_CB3",       limit: 1
    t.integer  "TYPE_HOME_CB4",       limit: 1
    t.integer  "TYPE_HOME_CB5",       limit: 1
    t.integer  "TYPE_HOME_CB6",       limit: 1
    t.integer  "TYPE_HOME_CB7",       limit: 1
    t.integer  "TYPE_HOME_CB8",       limit: 1
    t.integer  "TYPE_HOME_CB9",       limit: 1
    t.integer  "TYPE_HOME_CB10",      limit: 1
    t.integer  "TYPE_HOME_CB11",      limit: 1
    t.integer  "TYPE_HOME_CB12",      limit: 1
    t.integer  "TYPE_HOME_CB13",      limit: 1
    t.integer  "TYPE_HOME_CB14",      limit: 1
    t.integer  "TYPE_HOME_CB15",      limit: 1
    t.integer  "TYPE_HOME_WO1",       limit: 1
    t.integer  "TYPE_HOME_WO2",       limit: 1
    t.integer  "TYPE_HOME_WO3",       limit: 1
    t.integer  "TYPE_HOME_WO4",       limit: 1
    t.integer  "TYPE_HOME_WO5",       limit: 1
    t.integer  "TYPE_HOME_WO6",       limit: 1
    t.integer  "TYPE_HOME_WO7",       limit: 1
    t.integer  "TYPE_HOME_WO8",       limit: 1
    t.integer  "TYPE_HOME_WO9",       limit: 1
    t.integer  "TYPE_HOME_WO10",      limit: 1
    t.integer  "TYPE_HOME_WO11",      limit: 1
    t.integer  "TYPE_HOME_WO12",      limit: 1
    t.integer  "TYPE_HOME_WO13",      limit: 1
    t.integer  "TYPE_HOME_WO14",      limit: 1
    t.integer  "TYPE_HOME_WO15",      limit: 1
    t.integer  "TYPE_CHECK_RULE1",    limit: 1
    t.integer  "TYPE_CHECK_RULE2",    limit: 1
    t.integer  "TYPE_CHECK_RULE3",    limit: 1
    t.integer  "TYPE_CHECK_RULE4",    limit: 1
    t.integer  "TYPE_JOB_REQUESTS",   limit: 1
    t.string   "TYPE_REVIEWER2",      limit: 10
    t.string   "TYPE_REVIEWER3",      limit: 10
  end

  add_index "job_types", ["TYPE_CODE"], name: "TYPE_CODE", using: :btree
  add_index "job_types", ["TYPE_SEQ"], name: "TYPE_SEQ", unique: true, using: :btree

  create_table "job_user_fields", primary_key: "JU_SEQ", force: true do |t|
    t.string "JU_FIELD", limit: 20
    t.string "JU_VALUE", limit: 20
  end

  add_index "job_user_fields", ["JU_FIELD"], name: "JU_FIELD", using: :btree
  add_index "job_user_fields", ["JU_SEQ"], name: "JU_SEQ", unique: true, using: :btree

  create_table "jobs", primary_key: "J_SEQ", force: true do |t|
    t.string   "J_NUM",                  limit: 15
    t.date     "J_START_DATE"
    t.string   "J_NAME",                 limit: 60
    t.string   "J_CLIENT_NUM",           limit: 10
    t.integer  "J_CLOSED",               limit: 1
    t.date     "J_DUE_DATE"
    t.string   "J_USER_FIELD2",          limit: 15
    t.decimal  "J_CONT_AMT",                        precision: 15, scale: 2
    t.decimal  "J_REVISION",                        precision: 9,  scale: 0
    t.string   "J_USER_FIELD1",          limit: 20
    t.decimal  "J_PROD_STATUS",                     precision: 9,  scale: 0
    t.text     "J_DESC"
    t.string   "J_WHO",                  limit: 4
    t.string   "J_CLIENT_CONTACT",       limit: 30
    t.string   "J_AGENCY_CONTACT",       limit: 30
    t.string   "J_AE_TEAM",              limit: 10
    t.string   "J_TYPE",                 limit: 15
    t.decimal  "J_AMT1",                            precision: 9,  scale: 2
    t.decimal  "J_AMT2",                            precision: 9,  scale: 2
    t.decimal  "J_AMT3",                            precision: 9,  scale: 2
    t.decimal  "J_AMT4",                            precision: 9,  scale: 2
    t.decimal  "J_AMT5",                            precision: 9,  scale: 2
    t.decimal  "J_AMT6",                            precision: 9,  scale: 2
    t.text     "J_NEXT_STEPS"
    t.datetime "J_DATE_ADDED"
    t.string   "J_PC",                   limit: 10
    t.text     "J_CONT_NOTE"
    t.decimal  "J_BILL_STATUS",                     precision: 9,  scale: 0
    t.string   "J_MILE1",                limit: 6
    t.string   "J_MILE2",                limit: 6
    t.string   "J_MILE3",                limit: 6
    t.string   "J_MILE4",                limit: 6
    t.string   "J_MILE5",                limit: 6
    t.string   "J_MILE6",                limit: 6
    t.string   "J_MILE7",                limit: 6
    t.string   "J_MILE8",                limit: 6
    t.string   "J_MILE9",                limit: 6
    t.string   "J_MILE10",               limit: 6
    t.string   "J_MILE11",               limit: 6
    t.string   "J_MILE12",               limit: 6
    t.decimal  "J_HISTORY_COUNT",                   precision: 9,  scale: 0
    t.integer  "J_CONTINGENCY",          limit: 1
    t.decimal  "J_CONT_PC",                         precision: 9,  scale: 2
    t.string   "J_EST_FORM",             limit: 20
    t.string   "J_APPROVAL1",            limit: 40
    t.string   "J_APPROVAL2",            limit: 40
    t.string   "J_APPROVAL3",            limit: 40
    t.string   "J_SHOW_ZERO_AS",         limit: 15
    t.string   "J_HEADING",              limit: 25
    t.integer  "J_SHOW_HOURS",           limit: 1
    t.integer  "J_SHOW_DATES",           limit: 1
    t.integer  "J_SHOW_TOTALS",          limit: 1
    t.text     "J_DISCLAIMER"
    t.string   "J_EST_CUSTOM",           limit: 12
    t.string   "J_EST_COLUMN1",          limit: 15
    t.string   "J_EST_COLUMN2",          limit: 15
    t.string   "J_EST_COLUMN3",          limit: 15
    t.decimal  "J_FINAL_EST",                       precision: 9,  scale: 0
    t.string   "J_TO1",                  limit: 10
    t.string   "J_TO2",                  limit: 10
    t.string   "J_TO3",                  limit: 10
    t.string   "J_TO4",                  limit: 10
    t.string   "J_TO5",                  limit: 10
    t.string   "J_AE_TITLE",             limit: 20
    t.decimal  "J_ADV_BILLED",                      precision: 15, scale: 2
    t.decimal  "J_EST_TO_GO",                       precision: 15, scale: 2
    t.decimal  "J_HOURS_TO_GO",                     precision: 15, scale: 2
    t.date     "J_SNAP_UPDATED"
    t.decimal  "J_COSTS_TO_GO",                     precision: 15, scale: 2
    t.decimal  "J_NEXT_BILL_AMT",                   precision: 15, scale: 2
    t.date     "J_NEXT_BILL_DATE"
    t.decimal  "J_HIDE_EST_TASKS",                  precision: 15, scale: 2
    t.decimal  "J_CLIENT_BILLED",                   precision: 15, scale: 2
    t.decimal  "J_CLIENT_PAID",                     precision: 15, scale: 2
    t.integer  "J_UNBILLABLE",           limit: 1
    t.string   "J_CLIENT_PHONE",         limit: 15
    t.string   "J_CLIENT_TITLE",         limit: 20
    t.string   "J_AE_PHONE",             limit: 15
    t.string   "J_FIELD1_LABEL",         limit: 20
    t.string   "J_FIELD2_LABEL",         limit: 20
    t.string   "J_FIELD3_LABEL",         limit: 20
    t.string   "J_USER_FIELD3",          limit: 20
    t.string   "J_CHARGE_NUM",           limit: 20
    t.string   "J_FIELD4_LABEL",         limit: 20
    t.string   "J_FIELD5_LABEL",         limit: 20
    t.string   "J_FIELD6_LABEL",         limit: 20
    t.string   "J_USER_FIELD4",          limit: 20
    t.string   "J_USER_FIELD5",          limit: 20
    t.string   "J_USER_FIELD6",          limit: 20
    t.date     "J_LAST_BILLED"
    t.date     "J_DATE_CLOSED"
    t.date     "J_DATE3"
    t.string   "J_STATUS_NOTE",          limit: 40
    t.integer  "J_RATE_KIND",            limit: 1
    t.text     "J_WORK_ORDER"
    t.string   "J_TRAF1",                limit: 4
    t.string   "J_TRAF2",                limit: 4
    t.string   "J_TRAF3",                limit: 4
    t.string   "J_TRAF4",                limit: 4
    t.string   "J_TRAF5",                limit: 4
    t.string   "J_TRAF6",                limit: 4
    t.string   "J_ADDRESS1",             limit: 50
    t.string   "J_ADDRESS2",             limit: 50
    t.string   "J_ADDRESS3",             limit: 50
    t.string   "J_ADDRESS4",             limit: 50
    t.string   "J_ADDRESS5",             limit: 50
    t.string   "J_ADDRESS6",             limit: 50
    t.decimal  "J_BUDGET",                          precision: 9,  scale: 2
    t.string   "J_SHIP_TO1",             limit: 50
    t.string   "J_SHIP_TO2",             limit: 50
    t.string   "J_SHIP_TO3",             limit: 50
    t.string   "J_SHIP_TO4",             limit: 50
    t.string   "J_ARCHIVED_ON",          limit: 15
    t.string   "J_BILL_TO",              limit: 10
    t.integer  "J_EST_OK",               limit: 1
    t.string   "J_EST_OK_BY",            limit: 4
    t.datetime "J_EST_OK_WHEN"
    t.date     "J_EXPORTED"
    t.string   "J_CLOSED_BY",            limit: 4
    t.decimal  "J_PRIORITY",                        precision: 9,  scale: 0
    t.decimal  "J_ALL_REVS",                        precision: 9,  scale: 0
    t.decimal  "J_SCHED_REVS",                      precision: 9,  scale: 0
    t.decimal  "J_ALL_SCH_REVS",                    precision: 9,  scale: 0
    t.integer  "J_COMMISSIONABLE",       limit: 1
    t.string   "J_BIZDEV_AE",            limit: 10
    t.integer  "J_SCHED_OK",             limit: 1
    t.string   "J_SCHED_OK_BY",          limit: 4
    t.datetime "J_SCHED_OK_WHEN"
    t.string   "J_EDITED_BY",            limit: 4
    t.datetime "J_EDITED_WHEN"
    t.string   "J_ADR_NAME",             limit: 20
    t.string   "J_PROJECT",              limit: 20
    t.text     "J_TAGS"
    t.text     "J_DISCUSSION_MEMBERS"
    t.integer  "J_CHECKLIST1",           limit: 1
    t.integer  "J_CHECKLIST2",           limit: 1
    t.integer  "J_CHECKLIST3",           limit: 1
    t.integer  "J_CHECKLIST4",           limit: 1
    t.integer  "J_CHECKLIST5",           limit: 1
    t.integer  "J_CHECKLIST6",           limit: 1
    t.integer  "J_CHECKLIST7",           limit: 1
    t.integer  "J_CHECKLIST8",           limit: 1
    t.string   "J_USER_DATE1",           limit: 10
    t.string   "J_USER_DATE2",           limit: 10
    t.string   "J_HILITE",               limit: 1
    t.string   "J_PO",                   limit: 15
    t.integer  "J_FINISHED",             limit: 1
    t.datetime "J_FINISHED_DATE"
    t.string   "J_FAST_SCORE_F",         limit: 2
    t.string   "J_FAST_SCORE_A",         limit: 2
    t.string   "J_FAST_SCORE_S",         limit: 2
    t.string   "J_FAST_SCORE_T",         limit: 2
    t.decimal  "J_FORECAST_JAN",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_FEB",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_MAR",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_APR",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_MAY",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_JUN",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_JUL",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_AUG",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_SEP",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_OCT",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_NOV",                    precision: 15, scale: 2
    t.decimal  "J_FORECAST_DEC",                    precision: 15, scale: 2
    t.integer  "J_ADDED_HOW",            limit: 1
    t.integer  "J_OPTION1",              limit: 1
    t.integer  "J_OPTION2",              limit: 1
    t.integer  "J_OPTION3",              limit: 1
    t.integer  "J_OPTION4",              limit: 1
    t.integer  "J_OPTION5",              limit: 1
    t.integer  "J_OPTION6",              limit: 1
    t.integer  "J_OPTION7",              limit: 1
    t.integer  "J_OPTION8",              limit: 1
    t.integer  "J_BILLING_STEP1",        limit: 1
    t.integer  "J_BILLING_STEP2",        limit: 1
    t.integer  "J_BILLING_STEP3",        limit: 1
    t.integer  "J_BILLING_STEP4",        limit: 1
    t.integer  "J_BILLING_STEP5",        limit: 1
    t.integer  "J_BILLING_STEP6",        limit: 1
    t.integer  "J_BILLING_STEP7",        limit: 1
    t.integer  "J_BILLING_STEP8",        limit: 1
    t.decimal  "J_CLIENT_RATING",                   precision: 15, scale: 1
    t.integer  "J_EST_OK_CLIENT",        limit: 1
    t.string   "J_EST_OK_CLIENT_BY",     limit: 10
    t.datetime "J_EST_OK_CLIENT_WHEN"
    t.integer  "J_SCHED_OK_CLIENT",      limit: 1
    t.string   "J_SCHED_OK_CLIENT_BY",   limit: 10
    t.datetime "J_SCHED_OK_CLIENT_WHEN"
    t.string   "J_AD_ID",                limit: 20
  end

  add_index "jobs", ["J_AE_TEAM"], name: "J_AE_TEAM", using: :btree
  add_index "jobs", ["J_BILL_STATUS"], name: "J_BILL_STATUS", using: :btree
  add_index "jobs", ["J_CHARGE_NUM"], name: "J_CHARGE_NUM", using: :btree
  add_index "jobs", ["J_CLIENT_CONTACT"], name: "J_CLIENT_CONTACT", using: :btree
  add_index "jobs", ["J_CLIENT_NUM"], name: "J_CLIENT_NUM", using: :btree
  add_index "jobs", ["J_CLOSED"], name: "J_CLOSED", using: :btree
  add_index "jobs", ["J_DATE_ADDED"], name: "J_DATE_ADDED", using: :btree
  add_index "jobs", ["J_DUE_DATE"], name: "J_DUE_DATE", using: :btree
  add_index "jobs", ["J_NAME"], name: "J_NAME", using: :btree
  add_index "jobs", ["J_NEXT_BILL_DATE"], name: "J_NEXT_BILL_DATE", using: :btree
  add_index "jobs", ["J_NUM"], name: "J_NUM", using: :btree
  add_index "jobs", ["J_PC"], name: "J_PC", using: :btree
  add_index "jobs", ["J_PRIORITY"], name: "J_PRIORITY", using: :btree
  add_index "jobs", ["J_PROD_STATUS"], name: "J_PROD_STATUS", using: :btree
  add_index "jobs", ["J_PROJECT"], name: "J_PROJECT", using: :btree
  add_index "jobs", ["J_SEQ"], name: "J_SEQ", unique: true, using: :btree
  add_index "jobs", ["J_START_DATE"], name: "J_START_DATE", using: :btree
  add_index "jobs", ["J_TYPE"], name: "J_TYPE", using: :btree
  add_index "jobs", ["J_USER_FIELD1"], name: "J_USER_FIELD1", using: :btree
  add_index "jobs", ["J_USER_FIELD2"], name: "J_USER_FIELD2", using: :btree
  add_index "jobs", ["J_WHO"], name: "J_WHO", using: :btree

  create_table "log", primary_key: "LOG_SEQ", force: true do |t|
    t.date     "LOG_DATE"
    t.datetime "LOG_TIME"
    t.string   "LOG_USER",  limit: 4
    t.text     "LOG_NOTES"
  end

  add_index "log", ["LOG_DATE"], name: "LOG_DATE", using: :btree
  add_index "log", ["LOG_SEQ"], name: "LOG_SEQ", unique: true, using: :btree

  create_table "media_briefs", primary_key: "BR_SEQ", force: true do |t|
    t.string   "BR_CAMPAIGN",          limit: 10
    t.string   "BR_NAME",              limit: 40
    t.text     "BR_DESC"
    t.decimal  "BR_BUDGET_AMT",                    precision: 9, scale: 2
    t.decimal  "BR_COST_AMT",                      precision: 9, scale: 2
    t.date     "BR_CAMP_START"
    t.date     "BR_CAMP_END"
    t.decimal  "BR_SPOTS",                         precision: 9, scale: 0
    t.decimal  "BR_RATINGS",                       precision: 9, scale: 2
    t.decimal  "BR_COST",                          precision: 9, scale: 2
    t.decimal  "BR_CPP",                           precision: 9, scale: 2
    t.decimal  "BR_CPS",                           precision: 9, scale: 2
    t.decimal  "BR_RF",                            precision: 9, scale: 2
    t.string   "BR_CLIENT_NUM",        limit: 10
    t.date     "BR_DUE_DATE"
    t.text     "BR_OBJECTIVE"
    t.text     "BR_TARGET_AGE"
    t.text     "BR_TARGET_GENDER"
    t.text     "BR_TARGET_OCCUPATION"
    t.text     "BR_TARGET_LIFESTYLE"
    t.text     "BR_MEDIA_REC"
    t.text     "BR_MEDIA_SCHED"
    t.text     "BR_EXHIBITS"
    t.decimal  "BR_BUD_BCAST",                     precision: 9, scale: 0
    t.decimal  "BR_BUD_CABLE",                     precision: 9, scale: 0
    t.decimal  "BR_BUD_RADIO",                     precision: 9, scale: 0
    t.decimal  "BR_BUD_NEWS",                      precision: 9, scale: 0
    t.decimal  "BR_BUD_MAG",                       precision: 9, scale: 0
    t.decimal  "BR_BUD_OUT",                       precision: 9, scale: 0
    t.decimal  "BR_BUD_INTER",                     precision: 9, scale: 0
    t.decimal  "BR_BUD_OTHER",                     precision: 9, scale: 0
    t.string   "BR_ADDED_BY",          limit: 4
    t.string   "BR_AE",                limit: 4
    t.string   "BR_REP",               limit: 40
    t.string   "BR_STATUS",            limit: 200
    t.integer  "BR_STATUS_NUM",        limit: 1
    t.string   "BR_EDITED_BY",         limit: 4
    t.datetime "BR_EDITED_WHEN"
    t.integer  "BR_APPROVED",          limit: 1
    t.string   "BR_APPROVED_BY",       limit: 4
    t.datetime "BR_APPROVED_DATE"
  end

  add_index "media_briefs", ["BR_BUD_CABLE"], name: "BR_BUD_CABLE", using: :btree
  add_index "media_briefs", ["BR_CAMPAIGN"], name: "BR_CAMPAIGN", using: :btree
  add_index "media_briefs", ["BR_CLIENT_NUM"], name: "BR_CLIENT_NUM", using: :btree
  add_index "media_briefs", ["BR_SEQ"], name: "BR_SEQ", unique: true, using: :btree

  create_table "media_est", primary_key: "ME_SEQ", force: true do |t|
    t.string   "ME_NUM",           limit: 10
    t.string   "ME_CLIENT_NUM",    limit: 10
    t.string   "ME_CAMPAIGN",      limit: 20
    t.date     "ME_DATE"
    t.text     "ME_DESC"
    t.string   "ME_BUYER",         limit: 3
    t.decimal  "ME_GROSS",                    precision: 15, scale: 2
    t.string   "ME_LABEL1",        limit: 20
    t.string   "ME_LABEL2",        limit: 20
    t.string   "ME_LABEL3",        limit: 20
    t.string   "ME_LABEL4",        limit: 20
    t.string   "ME_LABEL5",        limit: 20
    t.string   "ME_STATUS",        limit: 60
    t.decimal  "ME_COST",                     precision: 15, scale: 2
    t.integer  "ME_CLOSED",        limit: 1
    t.integer  "ME_SHOW_DESC",     limit: 1
    t.text     "ME_DISCLAIMER"
    t.string   "ME_APPROVAL1",     limit: 30
    t.string   "ME_APPROVAL2",     limit: 30
    t.string   "ME_APPROVAL3",     limit: 30
    t.decimal  "ME_COMM",                     precision: 9,  scale: 2
    t.string   "ME_JOB_NUM",       limit: 10
    t.string   "ME_TASK",          limit: 4
    t.string   "ME_BRAND",         limit: 20
    t.integer  "ME_INACTIVE",      limit: 1
    t.integer  "ME_TYPE",          limit: 1
    t.integer  "ME_APPROVED",      limit: 1
    t.string   "ME_APPROVED_BY",   limit: 4
    t.datetime "ME_APPROVED_DATE"
    t.string   "ME_EDITED_BY",     limit: 4
    t.datetime "ME_EDITED_WHEN"
  end

  add_index "media_est", ["ME_BUYER"], name: "ME_BUYER", using: :btree
  add_index "media_est", ["ME_CAMPAIGN"], name: "ME_CAMPAIGN", using: :btree
  add_index "media_est", ["ME_CLIENT_NUM"], name: "ME_CLIENT_NUM", using: :btree
  add_index "media_est", ["ME_DATE"], name: "ME_DATE", using: :btree
  add_index "media_est", ["ME_NUM"], name: "ME_NUM", using: :btree
  add_index "media_est", ["ME_SEQ"], name: "ME_SEQ", unique: true, using: :btree
  add_index "media_est", ["ME_TYPE"], name: "ME_TYPE", using: :btree

  create_table "media_est_items", primary_key: "MI_SEQ", force: true do |t|
    t.string   "MI_ME_NUM",        limit: 10
    t.string   "MI_PUB",           limit: 20
    t.string   "MI_ISSUE_DATE",    limit: 12
    t.date     "MI_CLOSE_DATE"
    t.string   "MI_AD_NAME",       limit: 25
    t.string   "MI_AD_SIZE",       limit: 30
    t.decimal  "MI_GROSS",                    precision: 15, scale: 2
    t.decimal  "MI_COST",                     precision: 15, scale: 2
    t.decimal  "MI_COMM",                     precision: 15, scale: 2
    t.string   "MI_VENDOR_NUM",    limit: 5
    t.string   "MI_PO_NUM",        limit: 10
    t.decimal  "MI_PO_AMT",                   precision: 15, scale: 2
    t.date     "MI_PO_DATE"
    t.string   "MI_JOB_NUM",       limit: 10
    t.string   "MI_TASK",          limit: 4
    t.string   "MI_STATUS",        limit: 30
    t.text     "MI_NOTES"
    t.integer  "MI_SHOW_NOTES",    limit: 1
    t.date     "MI_MATERIALS_DUE"
    t.integer  "MI_PERIOD",        limit: 1
    t.integer  "MI_BILL_NET",      limit: 1
    t.date     "MI_RUN_DATE"
    t.string   "MI_ADDED_BY",      limit: 4
    t.datetime "MI_ADDED_WHEN"
    t.string   "MI_EDITED_BY",     limit: 4
    t.datetime "MI_EDITED_WHEN"
  end

  add_index "media_est_items", ["MI_CLOSE_DATE"], name: "MI_CLOSE_DATE", using: :btree
  add_index "media_est_items", ["MI_MATERIALS_DUE"], name: "MI_MATERIALS_DUE", using: :btree
  add_index "media_est_items", ["MI_ME_NUM"], name: "MI_ME_NUM", using: :btree
  add_index "media_est_items", ["MI_PUB"], name: "MI_PUB", using: :btree
  add_index "media_est_items", ["MI_RUN_DATE"], name: "MI_RUN_DATE", using: :btree
  add_index "media_est_items", ["MI_SEQ"], name: "MI_SEQ", unique: true, using: :btree

  create_table "media_items", primary_key: "MX_SEQ", force: true do |t|
    t.string   "MX_CAMPAIGN_NUM",  limit: 10
    t.datetime "MX_DATE"
    t.string   "MX_STATION",       limit: 20
    t.string   "MX_GROUP",         limit: 6
    t.string   "MX_TIME_PGM",      limit: 30
    t.decimal  "MX_GROSS_EA",                 precision: 15, scale: 2
    t.decimal  "MX_F1",                       precision: 15, scale: 0
    t.decimal  "MX_SA1",                      precision: 15, scale: 0
    t.decimal  "MX_SU1",                      precision: 15, scale: 0
    t.decimal  "MX_M1",                       precision: 15, scale: 0
    t.decimal  "MX_T1",                       precision: 15, scale: 0
    t.decimal  "MX_W1",                       precision: 15, scale: 0
    t.decimal  "MX_TH1",                      precision: 15, scale: 0
    t.decimal  "MX_F2",                       precision: 15, scale: 0
    t.decimal  "MX_SA2",                      precision: 15, scale: 0
    t.decimal  "MX_SU2",                      precision: 15, scale: 0
    t.decimal  "MX_M2",                       precision: 15, scale: 0
    t.decimal  "MX_T2",                       precision: 15, scale: 0
    t.decimal  "MX_W2",                       precision: 15, scale: 0
    t.decimal  "MX_TH2",                      precision: 15, scale: 0
    t.decimal  "MX_F3",                       precision: 15, scale: 0
    t.decimal  "MX_RATING_EA",                precision: 15, scale: 1
    t.decimal  "MX_RATING",                   precision: 15, scale: 1
    t.decimal  "MX_GROSS_AMT",                precision: 15, scale: 2
    t.decimal  "MX_SPOTS",                    precision: 15, scale: 0
    t.string   "MX_WEEK1_1",       limit: 30
    t.string   "MX_WEEK1_2",       limit: 25
    t.decimal  "MX_WEEK1_COST",               precision: 15, scale: 2
    t.string   "MX_WEEK2_1",       limit: 30
    t.string   "MX_WEEK2_2",       limit: 25
    t.decimal  "MX_WEEK2_COST",               precision: 15, scale: 2
    t.string   "MX_WEEK3_1",       limit: 30
    t.string   "MX_WEEK3_2",       limit: 25
    t.decimal  "MX_WEEK3_COST",               precision: 15, scale: 2
    t.string   "MX_WEEK4_1",       limit: 30
    t.string   "MX_WEEK4_2",       limit: 25
    t.decimal  "MX_WEEK4_COST",               precision: 15, scale: 2
    t.string   "MX_WEEK5_1",       limit: 30
    t.string   "MX_WEEK5_2",       limit: 25
    t.decimal  "MX_WEEK5_COST",               precision: 15, scale: 2
    t.text     "MX_NOTES"
    t.string   "MX_M_NUM",         limit: 10
    t.string   "MX_MEDIA1",        limit: 40
    t.string   "MX_MEDIA2",        limit: 40
    t.string   "MX_MEDIA3",        limit: 40
    t.string   "MX_PO_NUM",        limit: 10
    t.date     "MX_DATE_ORDERED"
    t.string   "MX_ORDERED",       limit: 1
    t.string   "MX_WEEK6_1",       limit: 30
    t.string   "MX_WEEK6_2",       limit: 25
    t.decimal  "MX_WEEK6_COST",               precision: 15, scale: 2
    t.string   "MX_WEEK7_1",       limit: 30
    t.string   "MX_WEEK7_2",       limit: 25
    t.decimal  "MX_WEEK7_COST",               precision: 15, scale: 2
    t.string   "MX_WEEK8_1",       limit: 30
    t.string   "MX_WEEK8_2",       limit: 25
    t.decimal  "MX_WEEK8_COST",               precision: 15, scale: 2
    t.string   "MX_WEEK9_1",       limit: 30
    t.string   "MX_WEEK9_2",       limit: 25
    t.decimal  "MX_WEEK9_COST",               precision: 15, scale: 2
    t.string   "MX_WEEK10_1",      limit: 30
    t.string   "MX_WEEK10_2",      limit: 25
    t.decimal  "MX_WEEK10_COST",              precision: 15, scale: 2
    t.string   "MX_WEEK11_1",      limit: 30
    t.string   "MX_WEEK11_2",      limit: 25
    t.decimal  "MX_WEEK11_COST",              precision: 15, scale: 2
    t.string   "MX_WEEK12_1",      limit: 30
    t.string   "MX_WEEK12_2",      limit: 25
    t.decimal  "MX_WEEK12_COST",              precision: 15, scale: 2
    t.decimal  "MX_AMT_ORDERED",              precision: 15, scale: 2
    t.string   "MX_WEEK1_PO",      limit: 12
    t.string   "MX_WEEK2_PO",      limit: 12
    t.string   "MX_WEEK3_PO",      limit: 12
    t.string   "MX_WEEK4_PO",      limit: 12
    t.string   "MX_WEEK5_PO",      limit: 12
    t.string   "MX_WEEK6_PO",      limit: 12
    t.string   "MX_WEEK7_PO",      limit: 12
    t.string   "MX_WEEK8_PO",      limit: 12
    t.string   "MX_WEEK9_PO",      limit: 12
    t.string   "MX_WEEK10_PO",     limit: 12
    t.string   "MX_WEEK11_PO",     limit: 12
    t.string   "MX_WEEK12_PO",     limit: 12
    t.string   "MX_AD_CAPTION",    limit: 50
    t.string   "MX_WEEK1_3",       limit: 25
    t.string   "MX_WEEK2_3",       limit: 25
    t.string   "MX_WEEK3_3",       limit: 25
    t.string   "MX_WEEK4_3",       limit: 25
    t.string   "MX_WEEK5_3",       limit: 25
    t.string   "MX_WEEK6_3",       limit: 25
    t.string   "MX_WEEK7_3",       limit: 25
    t.string   "MX_WEEK8_3",       limit: 25
    t.string   "MX_WEEK9_3",       limit: 25
    t.string   "MX_WEEK10_3",      limit: 25
    t.string   "MX_WEEK11_3",      limit: 25
    t.string   "MX_WEEK12_3",      limit: 25
    t.string   "MX_RATE_BASIS",    limit: 5
    t.date     "MX_SPACE_CLOSE1"
    t.date     "MX_SPACE_CLOSE2"
    t.date     "MX_SPACE_CLOSE3"
    t.date     "MX_SPACE_CLOSE4"
    t.date     "MX_SPACE_CLOSE5"
    t.date     "MX_SPACE_CLOSE6"
    t.date     "MX_SPACE_CLOSE7"
    t.date     "MX_SPACE_CLOSE8"
    t.date     "MX_SPACE_CLOSE9"
    t.date     "MX_SPACE_CLOSE10"
    t.date     "MX_SPACE_CLOSE11"
    t.date     "MX_SPACE_CLOSE12"
    t.date     "MX_MAT_DUE1"
    t.date     "MX_MAT_DUE2"
    t.date     "MX_MAT_DUE3"
    t.date     "MX_MAT_DUE4"
    t.date     "MX_MAT_DUE5"
    t.date     "MX_MAT_DUE6"
    t.date     "MX_MAT_DUE7"
    t.date     "MX_MAT_DUE8"
    t.date     "MX_MAT_DUE9"
    t.date     "MX_MAT_DUE10"
    t.date     "MX_MAT_DUE11"
    t.date     "MX_MAT_DUE12"
    t.string   "MX_LENGTH",        limit: 6
    t.string   "MX_DAY",           limit: 12
    t.string   "MX_DATES",         limit: 25
    t.string   "MX_TIME",          limit: 25
    t.decimal  "MX_QTY",                      precision: 9,  scale: 0
    t.date     "MX_START_DATE"
    t.date     "MX_RUN_DATE1"
    t.date     "MX_RUN_DATE2"
    t.date     "MX_RUN_DATE3"
    t.date     "MX_RUN_DATE4"
    t.date     "MX_RUN_DATE5"
    t.date     "MX_RUN_DATE6"
    t.date     "MX_RUN_DATE7"
    t.date     "MX_RUN_DATE8"
    t.date     "MX_RUN_DATE9"
    t.date     "MX_RUN_DATE10"
    t.date     "MX_RUN_DATE11"
    t.date     "MX_RUN_DATE12"
    t.string   "MX_ADDED_BY",      limit: 4
    t.datetime "MX_ADDED_WHEN"
    t.string   "MX_EDITED_BY",     limit: 4
    t.datetime "MX_EDITED_WHEN"
  end

  add_index "media_items", ["MX_CAMPAIGN_NUM"], name: "MX_CAMPAIGN_NUM", using: :btree
  add_index "media_items", ["MX_MEDIA1"], name: "MX_MEDIA1", using: :btree
  add_index "media_items", ["MX_M_NUM"], name: "MX_M_NUM", using: :btree
  add_index "media_items", ["MX_SEQ"], name: "MX_SEQ", unique: true, using: :btree
  add_index "media_items", ["MX_SPACE_CLOSE3"], name: "MX_SPACE_CLOSE3", using: :btree
  add_index "media_items", ["MX_STATION"], name: "MX_STATION", using: :btree

  create_table "media_plans", primary_key: "M_SEQ", force: true do |t|
    t.string   "M_CAMPAIGN",      limit: 10
    t.string   "M_NAME",          limit: 100
    t.text     "M_DESC"
    t.decimal  "M_BUDGET",                    precision: 15, scale: 2
    t.decimal  "M_COST",                      precision: 15, scale: 2
    t.date     "M_START_DATE"
    t.date     "M_END_START"
    t.decimal  "M_SPOTS_TOTAL",               precision: 15, scale: 0
    t.decimal  "M_RATING_TOTAL",              precision: 15, scale: 2
    t.decimal  "M_COST_TOTAL",                precision: 15, scale: 2
    t.decimal  "M_CPP_TOTAL",                 precision: 15, scale: 2
    t.decimal  "M_CPS_TOTAL",                 precision: 15, scale: 2
    t.decimal  "M_RF_TOTAL",                  precision: 15, scale: 2
    t.string   "M_CLIENT_NUM",    limit: 10
    t.datetime "M_DATE_ADDED"
    t.string   "M_ADDED_BY",      limit: 4
    t.decimal  "M_REVISION",                  precision: 9,  scale: 0
    t.string   "M_REV_NOTE",      limit: 40
    t.string   "M_STATUS_NOTE",   limit: 40
    t.decimal  "M_PO_COST",                   precision: 15, scale: 2
    t.decimal  "M_PO_GROSS",                  precision: 15, scale: 2
    t.decimal  "M_BILLED",                    precision: 15, scale: 2
    t.string   "M_PERIOD1",       limit: 10
    t.string   "M_PERIOD2",       limit: 10
    t.string   "M_PERIOD3",       limit: 10
    t.string   "M_PERIOD4",       limit: 10
    t.string   "M_PERIOD5",       limit: 10
    t.decimal  "M_TYPE",                      precision: 15, scale: 0
    t.text     "M_MEMO"
    t.string   "M_NUM",           limit: 10
    t.string   "M_FIELD_LABEL1",  limit: 20
    t.string   "M_FIELD_LABEL2",  limit: 20
    t.string   "M_FIELD_LABEL3",  limit: 20
    t.string   "M_FIELD_LABEL4",  limit: 20
    t.string   "M_FIELD_LABEL5",  limit: 20
    t.string   "M_FIELD_LABEL6",  limit: 20
    t.string   "M_FIELD1",        limit: 20
    t.string   "M_FIELD2",        limit: 20
    t.string   "M_FIELD3",        limit: 20
    t.string   "M_FIELD4",        limit: 20
    t.string   "M_FIELD5",        limit: 20
    t.string   "M_FIELD6",        limit: 20
    t.string   "M_AE_TEAM",       limit: 10
    t.string   "M_CLIENT_CONT",   limit: 40
    t.string   "M_CLIENT_PHONE",  limit: 20
    t.string   "M_F1",            limit: 2
    t.string   "M_SA1",           limit: 2
    t.string   "M_SU1",           limit: 2
    t.string   "M_M1",            limit: 2
    t.string   "M_TU1",           limit: 2
    t.string   "M_W1",            limit: 2
    t.string   "M_TH1",           limit: 2
    t.string   "M_F2",            limit: 2
    t.string   "M_SA2",           limit: 2
    t.string   "M_SU2",           limit: 2
    t.string   "M_M2",            limit: 2
    t.string   "M_TU2",           limit: 2
    t.string   "M_W2",            limit: 2
    t.string   "M_TH2",           limit: 2
    t.string   "M_F3",            limit: 2
    t.string   "M_PER_LABEL1",    limit: 10
    t.string   "M_PER_LABEL2",    limit: 10
    t.string   "M_PER_LABEL3",    limit: 10
    t.string   "M_PER_LABEL4",    limit: 10
    t.string   "M_PER_LABEL5",    limit: 10
    t.string   "M_PER_LABEL6",    limit: 10
    t.string   "M_PER_LABEL7",    limit: 10
    t.string   "M_PER_LABEL8",    limit: 10
    t.string   "M_PER_LABEL9",    limit: 10
    t.string   "M_PER_LABEL10",   limit: 10
    t.string   "M_PER_LABEL11",   limit: 10
    t.string   "M_PER_LABEL12",   limit: 10
    t.string   "M_PERIOD6",       limit: 10
    t.string   "M_PERIOD7",       limit: 10
    t.string   "M_PERIOD8",       limit: 10
    t.string   "M_PERIOD9",       limit: 10
    t.string   "M_PERIOD10",      limit: 10
    t.string   "M_PERIOD11",      limit: 10
    t.string   "M_PERIOD12",      limit: 10
    t.string   "M_JOB_NUM",       limit: 10
    t.string   "M_TASK",          limit: 4
    t.string   "M_APPROVAL1",     limit: 30
    t.string   "M_APPROVAL2",     limit: 30
    t.string   "M_APPROVAL3",     limit: 30
    t.string   "M_FLIGHT",        limit: 100
    t.integer  "M_KIND",          limit: 1
    t.decimal  "M_COMMISSION",                precision: 9,  scale: 2
    t.decimal  "M_STATUS",                    precision: 9,  scale: 0
    t.string   "M_BRAND",         limit: 20
    t.integer  "M_CLOSED",        limit: 1
    t.integer  "M_INACTIVE",      limit: 1
    t.integer  "M_APPROVED",      limit: 1
    t.string   "M_APPROVED_BY",   limit: 4
    t.datetime "M_APPROVED_DATE"
    t.string   "M_EDITED_BY",     limit: 4
    t.datetime "M_EDITED_WHEN"
  end

  add_index "media_plans", ["M_AE_TEAM"], name: "M_AE_TEAM", using: :btree
  add_index "media_plans", ["M_APPROVED_DATE"], name: "M_APPROVED_DATE", using: :btree
  add_index "media_plans", ["M_CAMPAIGN"], name: "M_CAMPAIGN", using: :btree
  add_index "media_plans", ["M_CLIENT_NUM"], name: "M_CLIENT_NUM", using: :btree
  add_index "media_plans", ["M_JOB_NUM"], name: "M_JOB_NUM", using: :btree
  add_index "media_plans", ["M_NAME"], name: "M_NAME", using: :btree
  add_index "media_plans", ["M_NUM"], name: "M_NUM", using: :btree
  add_index "media_plans", ["M_SEQ"], name: "M_SEQ", unique: true, using: :btree
  add_index "media_plans", ["M_START_DATE"], name: "M_START_DATE", using: :btree
  add_index "media_plans", ["M_TYPE"], name: "M_TYPE", using: :btree

  create_table "media_prefs", primary_key: "MPF_SEQ", force: true do |t|
    t.decimal  "MPF_NUM",                          precision: 15, scale: 0
    t.string   "MPF_PREFIX",      limit: 3
    t.text     "MPF_DISCLAIMER"
    t.string   "MPF_ORG",         limit: 50
    t.string   "MPF_ADDRESS1",    limit: 50
    t.string   "MPF_ADDRESS2",    limit: 50
    t.string   "MPF_ADDRESS3",    limit: 50
    t.string   "MPF_PHONE",       limit: 50
    t.decimal  "MPF_COMM",                         precision: 15, scale: 2
    t.string   "MPF_TO1",         limit: 10
    t.string   "MPF_TO2",         limit: 10
    t.string   "MPF_TO3",         limit: 10
    t.string   "MPF_TO4",         limit: 10
    t.string   "MPF_TO5",         limit: 10
    t.string   "MPF_TO6",         limit: 10
    t.string   "MPF_FIELD1",      limit: 15
    t.string   "MPF_FIELD2",      limit: 15
    t.string   "MPF_FIELD3",      limit: 15
    t.string   "MPF_FIELD4",      limit: 15
    t.string   "MPF_FIELD5",      limit: 15
    t.integer  "MPF_AUTO_NUM",    limit: 1
    t.binary   "MPF_LOGO",        limit: 16777215
    t.integer  "MPF_SHOW_CL",     limit: 1
    t.decimal  "MPF_RADIO_1Q",                     precision: 15, scale: 0
    t.decimal  "MPF_RADIO_2Q",                     precision: 15, scale: 0
    t.decimal  "MPF_RADIO_3Q",                     precision: 15, scale: 0
    t.decimal  "MPF_RADIO_4Q",                     precision: 15, scale: 0
    t.decimal  "MPF_TV_1Q",                        precision: 15, scale: 0
    t.decimal  "MPF_TV_2Q",                        precision: 15, scale: 0
    t.decimal  "MPF_TV_3Q",                        precision: 15, scale: 0
    t.decimal  "MPF_TV_4Q",                        precision: 15, scale: 0
    t.decimal  "MPF_CABLE_1Q",                     precision: 15, scale: 0
    t.decimal  "MPF_CABLE_2Q",                     precision: 15, scale: 0
    t.decimal  "MPF_CABLE_3Q",                     precision: 15, scale: 0
    t.decimal  "MPF_CABLE_4Q",                     precision: 15, scale: 0
    t.decimal  "MPF_NEWS_1Q",                      precision: 15, scale: 0
    t.decimal  "MPF_NEWS_2Q",                      precision: 15, scale: 0
    t.decimal  "MPF_NEWS_3Q",                      precision: 15, scale: 0
    t.decimal  "MPF_NEWS_4Q",                      precision: 15, scale: 0
    t.decimal  "MPF_MAG_1Q",                       precision: 15, scale: 0
    t.decimal  "MPF_MAG_2Q",                       precision: 15, scale: 0
    t.decimal  "MPF_MAG_3Q",                       precision: 15, scale: 0
    t.decimal  "MPF_MAG_4Q",                       precision: 15, scale: 0
    t.decimal  "MPF_OUT_1Q",                       precision: 15, scale: 0
    t.decimal  "MPF_OUT_2Q",                       precision: 15, scale: 0
    t.decimal  "MPF_OUT_3Q",                       precision: 15, scale: 0
    t.decimal  "MPF_OUT_4Q",                       precision: 15, scale: 0
    t.decimal  "MPF_INT_1Q",                       precision: 15, scale: 0
    t.decimal  "MPF_INT_2Q",                       precision: 15, scale: 0
    t.decimal  "MPF_INT_3Q",                       precision: 15, scale: 0
    t.decimal  "MPF_INT_4Q",                       precision: 15, scale: 0
    t.decimal  "MPF_OTHER_1Q",                     precision: 15, scale: 0
    t.decimal  "MPF_OTHER_2Q",                     precision: 15, scale: 0
    t.decimal  "MPF_OTHER_3Q",                     precision: 15, scale: 0
    t.decimal  "MPF_OTHER_4Q",                     precision: 15, scale: 0
    t.integer  "MPF_KIND",        limit: 1
    t.string   "MPF_EDITED_BY",   limit: 4
    t.datetime "MPF_EDITED_WHEN"
  end

  add_index "media_prefs", ["MPF_KIND"], name: "MPF_KIND", using: :btree
  add_index "media_prefs", ["MPF_SEQ"], name: "MPF_SEQ", unique: true, using: :btree

  create_table "meetings", primary_key: "MEET_SEQ", force: true do |t|
    t.date     "MEET_DATE"
    t.datetime "MEET_TIME"
    t.string   "MEET_ADDED_BY",     limit: 4
    t.decimal  "MEET_DURATION",                 precision: 9, scale: 0
    t.string   "MEET_TOPIC",        limit: 100
    t.text     "MEET_OBJECTIVE"
    t.text     "MEET_DISCUSSION"
    t.string   "MEET_LOCATION",     limit: 40
    t.text     "MEET_DIRECTIONS"
    t.text     "MEET_ATTENDEES"
    t.string   "MEET_JOB_NUM",      limit: 10
    t.text     "MEET_ACTION_ITEMS"
    t.integer  "MEET_FWD_SUM",      limit: 1
    t.string   "MEET_CC",           limit: 100
    t.string   "MEET_COORD",        limit: 4
    t.string   "MEET_CLIENT_NUM",   limit: 10
    t.text     "MEET_EMAIL_TO"
    t.integer  "MEET_NOTIFY",       limit: 1
    t.integer  "MEET_STATUS",       limit: 1
    t.datetime "MEET_NEXT_DATE"
    t.string   "MEET_EDITED_BY",    limit: 4
    t.datetime "MEET_EDITED_WHEN"
  end

  add_index "meetings", ["MEET_CLIENT_NUM"], name: "MEET_CLIENT_NUM", using: :btree
  add_index "meetings", ["MEET_DATE"], name: "MEET_DATE", using: :btree
  add_index "meetings", ["MEET_JOB_NUM"], name: "MEET_JOB_NUM", using: :btree
  add_index "meetings", ["MEET_SEQ"], name: "MEET_SEQ", unique: true, using: :btree

  create_table "mlink_log", primary_key: "MLOG_SEQ", force: true do |t|
    t.datetime "MLOG_DATE"
    t.string   "MLOG_BUYID",    limit: 15
    t.text     "MLOG_STATUS"
    t.string   "MLOG_ADDED_BY", limit: 10
  end

  add_index "mlink_log", ["MLOG_DATE"], name: "MLOG_DATE", using: :btree
  add_index "mlink_log", ["MLOG_SEQ"], name: "MLOG_SEQ", unique: true, using: :btree

  create_table "mlink_prefs", primary_key: "MLINK_SEQ", force: true do |t|
    t.integer  "MLINK_ENABLE_LOG",      limit: 1
    t.text     "MLINK_PATH"
    t.integer  "MLINK_AUTO_IMPORT",     limit: 1
    t.integer  "MLINK_IMPORT_EVERY",    limit: 1
    t.time     "MLINK_IMPORT_TIME"
    t.decimal  "MLINK_IMPORT_MINUTES",              precision: 9,  scale: 0
    t.integer  "MLINK_CLIENTS_PREF",    limit: 1
    t.integer  "MLINK_AFTER_PREF",      limit: 1
    t.text     "MLINK_MOVE_PATH"
    t.string   "MLINK_SYSTEM",          limit: 30
    t.string   "MLINK_STATUS",          limit: 100
    t.datetime "MLINK_LAST_IMPORT"
    t.decimal  "MLINK_COUNT_TODAY",                 precision: 9,  scale: 0
    t.decimal  "MLINK_COUNT_TOTAL",                 precision: 9,  scale: 0
    t.decimal  "MLINK_AMT",                         precision: 15, scale: 2
    t.string   "MLINK_IMPORT_INTERVAL", limit: 40
    t.date     "MLINK_DATE"
    t.integer  "MLINK_VENDORS_PREF",    limit: 1
    t.integer  "MLINK_BELL",            limit: 1
    t.integer  "MLINK_NOTIFY",          limit: 1
    t.string   "MLINK_EMAIL_NAME",      limit: 50
    t.string   "MLINK_EMAIL_ADDRESS",   limit: 50
    t.integer  "MLINK_TV_BILL_NET",     limit: 1
    t.integer  "MLINK_PRINT_BILL_NET",  limit: 1
    t.integer  "MLINK_BROAD_COMM",      limit: 1
    t.integer  "MLINK_PRINT_COMM",      limit: 1
    t.string   "MLINK_EDITED_BY",       limit: 4
    t.datetime "MLINK_EDITED_WHEN"
  end

  add_index "mlink_prefs", ["MLINK_SEQ"], name: "MLINK_SEQ", unique: true, using: :btree

  create_table "odbcusers", id: false, force: true do |t|
    t.string  "ODBCUSERNAME",   limit: 32
    t.string  "ODBCPASSWORD",   limit: 64
    t.integer "ODBCACCESSMASK"
  end

  add_index "odbcusers", ["ODBCUSERNAME"], name: "ODBCUSERNAME", using: :btree

  create_table "outbox", primary_key: "OUT_SEQ", force: true do |t|
    t.string   "OUT_FROM_EMAIL", limit: 40
    t.string   "OUT_TO_EMAIL",   limit: 40
    t.string   "OUT_SUBJECT",    limit: 120
    t.text     "OUT_BODY"
    t.string   "OUT_CC",         limit: 40
    t.string   "OUT_BCC",        limit: 40
    t.string   "OUT_REAL_NAME",  limit: 60
    t.string   "OUT_ATTACHMENT", limit: 40
    t.datetime "OUT_DATE_ADDED"
    t.string   "OUT_ADDED_BY",   limit: 4
    t.datetime "OUT_SEND_DATE"
    t.integer  "OUT_OK",         limit: 1
  end

  add_index "outbox", ["OUT_OK"], name: "OUT_OK", using: :btree
  add_index "outbox", ["OUT_SEND_DATE"], name: "OUT_SEND_DATE", using: :btree
  add_index "outbox", ["OUT_SEQ"], name: "OUT_SEQ", unique: true, using: :btree

  create_table "palm_cats", primary_key: "PALM_CAT_SEQ", force: true do |t|
    t.string  "PALM_CAT_NAME", limit: 15
    t.integer "PALM_CAT_ID",   limit: 1
    t.string  "PALM_CAT_USER", limit: 10
  end

  add_index "palm_cats", ["PALM_CAT_ID"], name: "PALM_CAT_ID", using: :btree
  add_index "palm_cats", ["PALM_CAT_SEQ"], name: "PALM_CAT_SEQ", unique: true, using: :btree
  add_index "palm_cats", ["PALM_CAT_USER"], name: "PALM_CAT_USER", using: :btree

  create_table "palm_jobs", primary_key: "PALM_JOB_SEQ", force: true do |t|
    t.integer "PALM_JOB_ID"
    t.string  "PALM_JOB_ATTRIBS",  limit: 4
    t.integer "PALM_JOB_CATEGORY", limit: 1
    t.string  "PALM_JOB_NUM",      limit: 10
    t.string  "PALM_JOB_NAME",     limit: 73
    t.string  "PALM_JOB_USER",     limit: 10
    t.integer "PALM_JOB_PLUS",     limit: 1
  end

  add_index "palm_jobs", ["PALM_JOB_NUM"], name: "PALM_JOB_NUM", using: :btree
  add_index "palm_jobs", ["PALM_JOB_SEQ"], name: "PALM_JOB_SEQ", unique: true, using: :btree
  add_index "palm_jobs", ["PALM_JOB_USER"], name: "PALM_JOB_USER", using: :btree

  create_table "palm_tasks", primary_key: "PALM_TASK_SEQ", force: true do |t|
    t.string  "PALM_TASK_CODE",    limit: 4
    t.string  "PALM_TASK_NAME",    limit: 57
    t.string  "PALM_TASK_USER",    limit: 10
    t.integer "PALM_TASK_ID"
    t.integer "PALM_TASK_CAT",     limit: 1
    t.string  "PALM_TASK_ATTRIBS", limit: 4
  end

  add_index "palm_tasks", ["PALM_TASK_CODE"], name: "PALM_TASK_CODE", using: :btree
  add_index "palm_tasks", ["PALM_TASK_ID"], name: "PALM_TASK_ID", using: :btree
  add_index "palm_tasks", ["PALM_TASK_SEQ"], name: "PALM_TASK_SEQ", unique: true, using: :btree
  add_index "palm_tasks", ["PALM_TASK_USER"], name: "PALM_TASK_USER", using: :btree

  create_table "payment_items", primary_key: "PX_SEQ", force: true do |t|
    t.string   "PX_AR_NUM",      limit: 10
    t.decimal  "PX_AMT",                    precision: 15, scale: 2
    t.decimal  "PX_CGL",                    precision: 15, scale: 2
    t.date     "PX_POSTED"
    t.decimal  "PX_PERIOD",                 precision: 9,  scale: 0
    t.string   "PX_CHECK_NUM",   limit: 12
    t.string   "PX_CLIENT_NUM",  limit: 10
    t.decimal  "PX_DISC_AMT",               precision: 15, scale: 2
    t.decimal  "PX_DISC_GL",                precision: 15, scale: 2
    t.string   "PX_ADDED_BY",    limit: 4
    t.datetime "PX_ADDED_WHEN"
    t.string   "PX_EDITED_BY",   limit: 4
    t.datetime "PX_EDITED_WHEN"
  end

  add_index "payment_items", ["PX_AR_NUM"], name: "PX_AR_NUM", using: :btree
  add_index "payment_items", ["PX_CHECK_NUM"], name: "PX_CHECK_NUM", using: :btree
  add_index "payment_items", ["PX_CLIENT_NUM"], name: "PX_CLIENT_NUM", using: :btree
  add_index "payment_items", ["PX_PERIOD"], name: "PX_PERIOD", using: :btree
  add_index "payment_items", ["PX_POSTED"], name: "PX_POSTED", using: :btree
  add_index "payment_items", ["PX_SEQ"], name: "PX_SEQ", unique: true, using: :btree

  create_table "payments", primary_key: "PAY_SEQ", force: true do |t|
    t.string   "PAY_CLIENT_NUM",  limit: 10
    t.string   "PAY_CHECK_NUM",   limit: 10
    t.decimal  "PAY_AMT",                    precision: 15, scale: 2
    t.date     "PAY_CHECK_DATE"
    t.string   "PAY_TYPE",        limit: 10
    t.date     "PAY_DATE"
    t.text     "PAY_DESC"
    t.decimal  "PAY_DGL",                    precision: 15, scale: 2
    t.boolean  "PAY_BOOLEAN"
    t.date     "PAY_POSTED"
    t.string   "PAY_ADDED_BY",    limit: 4
    t.date     "PAY_ADDED_WHEN"
    t.integer  "PAY_OK",          limit: 1
    t.decimal  "PAY_PERIOD",                 precision: 9,  scale: 0
    t.string   "PAY_BANK",        limit: 10
    t.integer  "PAY_KIND",        limit: 1
    t.string   "PAY_BATCH",       limit: 10
    t.string   "PAY_BANK_ID",     limit: 10
    t.string   "PAY_EDITED_BY",   limit: 4
    t.datetime "PAY_EDITED_WHEN"
    t.string   "PAY_POSTED_BY",   limit: 4
    t.datetime "PAY_POSTED_WHEN"
  end

  add_index "payments", ["PAY_ADDED_BY"], name: "PAY_ADDED_BY", using: :btree
  add_index "payments", ["PAY_ADDED_WHEN"], name: "PAY_ADDED_WHEN", using: :btree
  add_index "payments", ["PAY_BATCH"], name: "PAY_BATCH", using: :btree
  add_index "payments", ["PAY_CHECK_DATE"], name: "PAY_CHECK_DATE", using: :btree
  add_index "payments", ["PAY_CHECK_NUM"], name: "PAY_CHECK_NUM", using: :btree
  add_index "payments", ["PAY_CLIENT_NUM"], name: "PAY_CLIENT_NUM", using: :btree
  add_index "payments", ["PAY_DATE"], name: "PAY_DATE", using: :btree
  add_index "payments", ["PAY_OK"], name: "PAY_OK", using: :btree
  add_index "payments", ["PAY_PERIOD"], name: "PAY_PERIOD", using: :btree
  add_index "payments", ["PAY_POSTED"], name: "PAY_POSTED", using: :btree
  add_index "payments", ["PAY_SEQ"], name: "PAY_SEQ", unique: true, using: :btree

  create_table "pc", primary_key: "PC_SEQ", force: true do |t|
    t.string   "PC_NUM",           limit: 10
    t.string   "PC_NAME",          limit: 40
    t.text     "PC_DESC"
    t.string   "PC_CORP_ID",       limit: 100
    t.string   "PC_ADDED_BY",      limit: 4
    t.datetime "PC_ADDED_WHEN"
    t.string   "PC_EDITED_BY",     limit: 4
    t.datetime "PC_EDITED_WHEN"
    t.string   "PC_BUS_UNIT",      limit: 20
    t.integer  "PC_OUTDATED",      limit: 1
    t.integer  "PC_AR_SHOW",       limit: 1
    t.string   "PC_BILL_ORG",      limit: 60
    t.string   "PC_BILL_ADDRESS1", limit: 60
    t.string   "PC_BILL_ADDRESS2", limit: 60
    t.string   "PC_BILL_ADDRESS3", limit: 60
  end

  add_index "pc", ["PC_NUM"], name: "PC_NUM", using: :btree
  add_index "pc", ["PC_SEQ"], name: "PC_SEQ", unique: true, using: :btree

  create_table "pictures", primary_key: "PICTURE_SEQ", force: true do |t|
    t.string   "PICTURE_NUM",         limit: 10
    t.binary   "PICTURE_PHOTO",       limit: 16777215
    t.text     "PICTURE_TEXT"
    t.string   "PICTURE_ADDED_BY",    limit: 4
    t.datetime "PICTURE_ADDED_WHEN"
    t.string   "PICTURE_EDITED_BY",   limit: 4
    t.datetime "PICTURE_EDITED_WHEN"
  end

  add_index "pictures", ["PICTURE_NUM"], name: "PICTURE_NUM", using: :btree
  add_index "pictures", ["PICTURE_SEQ"], name: "PICTURE_SEQ", unique: true, using: :btree

  create_table "po_items", primary_key: "POX_SEQ", force: true do |t|
    t.integer  "POX_LINE_NUMBER"
    t.string   "POX_JOB_NUM",     limit: 10
    t.string   "POX_TASK",        limit: 4
    t.text     "POX_DESC"
    t.string   "POX_PROGRAM",     limit: 30
    t.decimal  "POX_QTY",                    precision: 9,  scale: 0
    t.decimal  "POX_COST_EACH",              precision: 15, scale: 4
    t.decimal  "POX_COST",                   precision: 15, scale: 2
    t.decimal  "POX_MARKUP",                 precision: 9,  scale: 2
    t.decimal  "POX_GROSS",                  precision: 15, scale: 2
    t.decimal  "POX_COST_PAID",              precision: 15, scale: 2
    t.decimal  "POX_GROSS_PAID",             precision: 15, scale: 2
    t.string   "POX_PO_NUM",      limit: 12
    t.integer  "POX_BILLABLE",    limit: 1
    t.string   "POX_UNIT",        limit: 6
    t.string   "POX_NAME",        limit: 40
    t.string   "POX_KEY",         limit: 15
    t.decimal  "POX_BUYDETID",               precision: 9,  scale: 0
    t.date     "POX_DUE_DATE"
    t.date     "POX_DUE_DATE2"
    t.string   "POX_ISSUE_DATE",  limit: 12
    t.string   "POX_REVISION",    limit: 10
    t.string   "POX_AP_OK",       limit: 10
    t.string   "POX_AD_SIZE",     limit: 25
    t.string   "POX_AD_NAME",     limit: 25
    t.string   "POX_AR_NUM",      limit: 12
    t.string   "POX_PUB",         limit: 25
    t.string   "POX_CLIENT_NUM",  limit: 10
    t.integer  "POX_BILL_NET",    limit: 1
    t.decimal  "POX_TYPE",                   precision: 9,  scale: 0
    t.decimal  "POX_RATING",                 precision: 9,  scale: 2
    t.decimal  "POX_CPP",                    precision: 9,  scale: 2
    t.decimal  "POX_CPM",                    precision: 9,  scale: 2
    t.integer  "POX_MAKEGOOD",    limit: 1
    t.decimal  "POX_AR_AMT",                 precision: 9,  scale: 2
    t.string   "POX_COST_NUM",    limit: 20
    t.date     "POX_BILL_DATE"
    t.integer  "POX_SALES_TAX",   limit: 1
    t.date     "POX_ISSUE_DATE2"
    t.integer  "POX_TRADE",       limit: 1
    t.date     "POX_RUN_DATE"
    t.string   "POX_ADDED_BY",    limit: 5
    t.datetime "POX_ADDED_WHEN"
    t.string   "POX_EDITED_BY",   limit: 4
    t.datetime "POX_EDITED_WHEN"
    t.integer  "POX_TAXABLE1",    limit: 1
    t.integer  "POX_TAXABLE2",    limit: 1
  end

  add_index "po_items", ["POX_AR_NUM"], name: "POX_AR_NUM", using: :btree
  add_index "po_items", ["POX_BILL_DATE"], name: "POX_BILL_DATE", using: :btree
  add_index "po_items", ["POX_CLIENT_NUM"], name: "POX_CLIENT_NUM", using: :btree
  add_index "po_items", ["POX_DUE_DATE"], name: "POX_DUE_DATE", using: :btree
  add_index "po_items", ["POX_DUE_DATE2"], name: "POX_DUE_DATE2", using: :btree
  add_index "po_items", ["POX_ISSUE_DATE2"], name: "POX_ISSUE_DATE2", using: :btree
  add_index "po_items", ["POX_JOB_NUM"], name: "POX_JOB_NUM", using: :btree
  add_index "po_items", ["POX_KEY"], name: "POX_KEY", using: :btree
  add_index "po_items", ["POX_PO_NUM"], name: "POX_PO_NUM", using: :btree
  add_index "po_items", ["POX_PROGRAM"], name: "POX_PROGRAM", using: :btree
  add_index "po_items", ["POX_RUN_DATE"], name: "POX_RUN_DATE", using: :btree
  add_index "po_items", ["POX_SEQ"], name: "POX_SEQ", unique: true, using: :btree
  add_index "po_items", ["POX_TRADE"], name: "POX_TRADE", using: :btree
  add_index "po_items", ["POX_TYPE"], name: "POX_TYPE", using: :btree

  create_table "po_template", primary_key: "PT_SEQ", force: true do |t|
    t.string   "PT_TEMPLATE",         limit: 20
    t.string   "PT_JOB_NUM",          limit: 10
    t.string   "PT_TASK",             limit: 4
    t.string   "PT_DESC_LABEL",       limit: 15
    t.text     "PT_DESC"
    t.string   "PT_VENDOR_NUM",       limit: 10
    t.decimal  "PT_COST",                        precision: 15, scale: 2
    t.decimal  "PT_MARKUP",                      precision: 9,  scale: 2
    t.decimal  "PT_TAX",                         precision: 9,  scale: 2
    t.decimal  "PT_GROSS",                       precision: 15, scale: 2
    t.integer  "PT_TYPE",             limit: 1
    t.text     "PT_SHIP_NOTE"
    t.string   "PT_SHIP1",            limit: 40
    t.string   "PT_SHIP2",            limit: 40
    t.string   "PT_SHIP3",            limit: 40
    t.string   "PT_SHIP4",            limit: 40
    t.string   "PT_QTY_LABEL",        limit: 15
    t.string   "PT_QTY",              limit: 20
    t.string   "PT_APPROVAL1",        limit: 30
    t.string   "PT_APPROVAL2",        limit: 30
    t.string   "PT_APPROVAL3",        limit: 30
    t.decimal  "PT_TERMS1",                      precision: 9,  scale: 2
    t.decimal  "PT_TERMS2",                      precision: 9,  scale: 0
    t.decimal  "PT_TERMS3",                      precision: 9,  scale: 0
    t.string   "PT_PC",               limit: 10
    t.string   "PT_TO1",              limit: 10
    t.string   "PT_TO2",              limit: 10
    t.string   "PT_TO3",              limit: 10
    t.string   "PT_TO4",              limit: 10
    t.string   "PT_TO5",              limit: 10
    t.string   "PT_VENDOR1",          limit: 40
    t.string   "PT_VENDOR2",          limit: 40
    t.string   "PT_VENDOR3",          limit: 40
    t.string   "PT_VENDOR4",          limit: 40
    t.string   "PT_VENDOR5",          limit: 40
    t.string   "PT_FIELD_LABEL1",     limit: 15
    t.string   "PT_FIELD_LABEL2",     limit: 15
    t.string   "PT_FIELD_LABEL3",     limit: 15
    t.string   "PT_FIELD_LABEL4",     limit: 15
    t.string   "PT_FIELD_LABEL5",     limit: 15
    t.string   "PT_FIELD1",           limit: 15
    t.string   "PT_FIELD2",           limit: 15
    t.string   "PT_FIELD3",           limit: 15
    t.string   "PT_FIELD4",           limit: 15
    t.string   "PT_FIELD5",           limit: 15
    t.integer  "PT_TAX_EXEMPT",       limit: 1
    t.text     "PT_DISCLAIMER"
    t.string   "PT_ITEM_DESC",        limit: 50
    t.integer  "PT_KIND",             limit: 1
    t.string   "PT_ADDED_BY",         limit: 4
    t.datetime "PT_ADDED_WHEN"
    t.string   "PT_EDITED_BY",        limit: 4
    t.datetime "PT_EDITED_WHEN"
    t.text     "PT_TERMS_CONDITIONS"
    t.text     "PT_TERMS_HEADER"
    t.integer  "PT_TERMS_PRINT1",     limit: 1
    t.integer  "PT_TERMS_PRINT2",     limit: 1
    t.integer  "PT_TERMS_PRINT3",     limit: 1
    t.integer  "PT_TERMS_PRINT4",     limit: 1
    t.integer  "PT_TERMS_PRINT5",     limit: 1
  end

  add_index "po_template", ["PT_KIND"], name: "PT_KIND", using: :btree
  add_index "po_template", ["PT_SEQ"], name: "PT_SEQ", unique: true, using: :btree
  add_index "po_template", ["PT_TEMPLATE"], name: "PT_TEMPLATE", using: :btree

  create_table "prefs", primary_key: "PREF_SEQ", force: true do |t|
    t.integer  "PREF_GL",                   limit: 1
    t.integer  "PREF_AP_AGING",             limit: 1
    t.integer  "PREF_AR_AGING",             limit: 1
    t.integer  "PREF_DIARY",                limit: 1
    t.integer  "PREF_CHARGE_NUM",           limit: 1
    t.integer  "PREF_JOB_TYPE",             limit: 1
    t.integer  "PREF_CLOSE_JOB_COSTS",      limit: 1
    t.integer  "PREF_RATE_KIND",            limit: 1
    t.integer  "PREF_SHARED_PICTS",         limit: 1
    t.integer  "PREF_DATES",                limit: 1
    t.integer  "PREF_FIND_TIME",            limit: 1
    t.integer  "PREF_MAIL",                 limit: 1
    t.integer  "PREF_CK_COPIES",            limit: 1
    t.integer  "PREF_WIP",                  limit: 1
    t.integer  "PREF_PROOF_PRINTER",        limit: 1
    t.integer  "PREF_CLOSE_JOB_TASKS",      limit: 1
    t.integer  "PREF_OVERDUE_EMAIL",        limit: 1
    t.string   "PREF_CODE",                 limit: 4
    t.string   "PREF_TRAFFIC1",             limit: 25
    t.string   "PREF_TRAFFIC2",             limit: 25
    t.string   "PREF_TRAFFIC3",             limit: 25
    t.string   "PREF_TRAFFIC4",             limit: 25
    t.string   "PREF_TRAFFIC5",             limit: 25
    t.string   "PREF_TRAFFIC6",             limit: 25
    t.string   "PREF_TRAF1_INIT",           limit: 2
    t.string   "PREF_TRAF2_INIT",           limit: 2
    t.string   "PREF_TRAF3_INIT",           limit: 2
    t.string   "PREF_TRAF4_INIT",           limit: 2
    t.string   "PREF_TRAF5_INIT",           limit: 2
    t.string   "PREF_TRAF6_INIT",           limit: 2
    t.string   "PREF_TAX_ID1",              limit: 20
    t.string   "PREF_TAX_ID2",              limit: 20
    t.string   "PREF_ADDRESS1",             limit: 60
    t.string   "PREF_ADDRESS2",             limit: 60
    t.string   "PREF_ADDRESS3",             limit: 60
    t.string   "PREF_BILL_ORG",             limit: 60
    t.string   "PREF_BILL_ADDRESS1",        limit: 60
    t.string   "PREF_BILL_ADDRESS2",        limit: 60
    t.string   "PREF_BILL_ADDRESS3",        limit: 60
    t.string   "PREF_ORG",                  limit: 60
    t.string   "PREF_CURRENCY",             limit: 5
    t.decimal  "PREF_STD_MARKUP",                            precision: 9,  scale: 2
    t.string   "PREF_SYS_MGR",              limit: 40
    t.date     "PREF_DATE_STARTED"
    t.string   "PREF_SMTP_SERVER",          limit: 40
    t.string   "PREF_SYS_MGR_EMAIL",        limit: 100
    t.decimal  "PREF_JE_REF",                                precision: 9,  scale: 0
    t.decimal  "PREF_AR_NUM",                                precision: 9,  scale: 0
    t.string   "PREF_OFFICE_NUM",           limit: 10
    t.text     "PREF_HELP_SYS_TEXT"
    t.date     "PREF_TIME_CHECKED"
    t.text     "PREF_TIME_MSG"
    t.decimal  "PREF_EST_T_MARGIN",                          precision: 9,  scale: 2
    t.decimal  "PREF_EST_B_MARGIN",                          precision: 9,  scale: 2
    t.decimal  "PREF_EST_L_MARGIN",                          precision: 9,  scale: 2
    t.decimal  "PREF_INV_T_MARGIN",                          precision: 9,  scale: 2
    t.decimal  "PREF_INV_B_MARGIN",                          precision: 9,  scale: 2
    t.decimal  "PREF_INV_L_MARGIN",                          precision: 9,  scale: 2
    t.decimal  "PREF_PO_T_MARGIN",                           precision: 9,  scale: 2
    t.decimal  "PREF_PO_B_MARGIN",                           precision: 9,  scale: 2
    t.decimal  "PREF_PO_L_MARGIN",                           precision: 9,  scale: 2
    t.decimal  "PREF_STMT_T_MARGIN",                         precision: 9,  scale: 2
    t.decimal  "PREF_STMT_B_MARGIN",                         precision: 9,  scale: 2
    t.decimal  "PREF_STMT_L_MARGIN",                         precision: 9,  scale: 2
    t.integer  "PREF_AR_SHOW_ADDR",         limit: 1
    t.string   "PREF_BILL1",                limit: 30
    t.string   "PREF_BILL2",                limit: 30
    t.string   "PREF_BILL3",                limit: 30
    t.string   "PREF_BILL4",                limit: 30
    t.string   "PREF_BILL5",                limit: 30
    t.string   "PREF_BILL6",                limit: 30
    t.string   "PREF_BILL7",                limit: 30
    t.string   "PREF_BILL8",                limit: 30
    t.integer  "PREF_OVERBUDGET_EMAIL",     limit: 1
    t.integer  "PREF_CLOSE_WRITE_OFF",      limit: 1
    t.integer  "PREF_SPELL",                limit: 1
    t.string   "PREF_CURR_NAME",            limit: 12
    t.integer  "PREF_APPROVE_AR",           limit: 1
    t.string   "PREF_AR_APPROVAL1",         limit: 40
    t.string   "PREF_AR_APPROVAL2",         limit: 40
    t.string   "PREF_AR_APPROVAL3",         limit: 40
    t.integer  "PREF_AR_SHOW_EST",          limit: 1
    t.integer  "PREF_AR_SHOW_JOB",          limit: 1
    t.text     "PREF_BILL_INSTRUCTIONS"
    t.integer  "PREF_AR_RETURN_DAYS",       limit: 1
    t.string   "PREF_HELP_EMAIL",           limit: 100
    t.string   "PREF_WISH_EMAIL",           limit: 100
    t.integer  "PREF_USER_FIELD1",          limit: 1
    t.integer  "PREF_USER_FIELD2",          limit: 1
    t.integer  "PREF_USER_FIELD3",          limit: 1
    t.integer  "PREF_USER_FIELD4",          limit: 1
    t.integer  "PREF_USER_FIELD5",          limit: 1
    t.integer  "PREF_USER_FIELD6",          limit: 1
    t.integer  "PREF_PC",                   limit: 1
    t.integer  "PREF_BILL_EMAIL",           limit: 1
    t.integer  "PREF_BILL_EMAIL_AE",        limit: 1
    t.integer  "PREF_BILL_EMAIL_TRAF1",     limit: 1
    t.integer  "PREF_BILL_EMAIL_TRAF2",     limit: 1
    t.integer  "PREF_BILL_EMAIL_TRAF3",     limit: 1
    t.integer  "PREF_BILL_EMAIL_TRAF4",     limit: 1
    t.integer  "PREF_BILL_EMAIL_TRAF5",     limit: 1
    t.integer  "PREF_BILL_EMAIL_TRAF6",     limit: 1
    t.integer  "PREF_PING_SERVER",          limit: 1
    t.integer  "PREF_EXPORT_FORMAT",        limit: 1
    t.integer  "PREF_JOB_COMPLETE",         limit: 1
    t.integer  "PREF_STATUS_AMIN",          limit: 1
    t.string   "PREF_CLIENT_KIND1",         limit: 20
    t.string   "PREF_CLIENT_KIND2",         limit: 20
    t.string   "PREF_CLIENT_KIND3",         limit: 20
    t.string   "PREF_CLIENT_KIND4",         limit: 20
    t.string   "PREF_CLIENT_KIND5",         limit: 20
    t.string   "PREF_CLIENT_KIND6",         limit: 20
    t.integer  "PREF_PDF_DRIVER",           limit: 1
    t.integer  "PREF_USER_GUIDE",           limit: 1
    t.text     "PREF_EMAIL_BODY_INV"
    t.text     "PREF_EMAIL_BODY_EST"
    t.string   "PREF_PRIORITY1",            limit: 20
    t.string   "PREF_PRIORITY2",            limit: 20
    t.string   "PREF_PRIORITY3",            limit: 20
    t.string   "PREF_PRIORITY4",            limit: 20
    t.string   "PREF_PRIORITY5",            limit: 20
    t.string   "PREF_PRIORITY6",            limit: 20
    t.integer  "PREF_TIME_APPROVE",         limit: 1
    t.date     "PREF_VERIFY"
    t.integer  "PREF_NO_MERCHANT_IMP",      limit: 1
    t.integer  "PREF_NO_GRAPHS_JOBS",       limit: 1
    t.integer  "PREF_NO_GRAPHS_CLIENTS",    limit: 1
    t.decimal  "PREF_LNUM",                                  precision: 9,  scale: 0
    t.decimal  "PREF_LSERIAL",                               precision: 9,  scale: 0
    t.date     "PREF_LAST_UPDATE"
    t.integer  "PREF_WEB_RUNNING",          limit: 1
    t.text     "PREF_APPR_FTP_PATH"
    t.string   "PREF_APPR_FTP_LOGIN",       limit: 200
    t.string   "PREF_APPR_FTP_PW",          limit: 200
    t.decimal  "PREF_APPR_EXPIRES",                          precision: 9,  scale: 0
    t.text     "PREF_APPR_HEADER"
    t.string   "PREF_SUPPORT_EXP",          limit: 200
    t.integer  "PREF_REQ_J_FIELD1",         limit: 1
    t.integer  "PREF_REQ_J_FIELD2",         limit: 1
    t.integer  "PREF_REQ_J_FIELD3",         limit: 1
    t.integer  "PREF_REQ_J_FIELD4",         limit: 1
    t.integer  "PREF_REQ_J_FIELD5",         limit: 1
    t.integer  "PREF_REQ_J_FIELD6",         limit: 1
    t.string   "PREF_J_FIELD1_LABEL",       limit: 20
    t.string   "PREF_J_FIELD2_LABEL",       limit: 20
    t.string   "PREF_J_FIELD3_LABEL",       limit: 20
    t.string   "PREF_J_FIELD4_LABEL",       limit: 20
    t.string   "PREF_J_FIELD5_LABEL",       limit: 20
    t.string   "PREF_J_FIELD6_LABEL",       limit: 20
    t.text     "PREF_PSX_STD_TERMS"
    t.text     "PREF_PSX_WIN_EMAIL"
    t.text     "PREF_PSX_LOSER_EMAIL"
    t.integer  "PREF_PSX_NOTIFY_WINNER",    limit: 1
    t.integer  "PREF_PSX_NOTIFY_LOSERS",    limit: 1
    t.integer  "PREF_REQ_APPR_PROPS",       limit: 1
    t.integer  "PREF_REQ_APPR_CB",          limit: 1
    t.integer  "PREF_REQ_APPR_EST",         limit: 1
    t.integer  "PREF_REQ_APPR_SCHED",       limit: 1
    t.integer  "PREF_REQ_APPR_JOB",         limit: 1
    t.integer  "PREF_REQ_APPR_PO",          limit: 1
    t.integer  "PREF_REQ_APPR_AP",          limit: 1
    t.integer  "PREF_REQ_APPR_AR",          limit: 1
    t.integer  "PREF_REQ_APPR_MO",          limit: 1
    t.integer  "PREF_REQ_APPR_MEDIA",       limit: 1
    t.text     "PREF_APPR_EMAIL"
    t.integer  "PREF_APPR_ONLINE_OKS",      limit: 1
    t.string   "PREF_REQ_CB_BY",            limit: 4
    t.string   "PREF_REQ_PROPS_BY",         limit: 4
    t.string   "PREF_REQ_EST_BY",           limit: 4
    t.string   "PREF_REQ_SCHED_BY",         limit: 4
    t.string   "PREF_REQ_JOB_BY",           limit: 4
    t.string   "PREF_REQ_PO_BY",            limit: 4
    t.string   "PREF_REQ_AP_BY",            limit: 4
    t.string   "PREF_REQ_AR_BY",            limit: 4
    t.string   "PREF_REQ_MO_BY",            limit: 4
    t.string   "PREF_REQ_MEDIA_BY",         limit: 4
    t.integer  "PREF_OVERHOURS_EMAIL",      limit: 1
    t.integer  "PREF_HIDE_TAX_ON_ESTS",     limit: 1
    t.text     "PREF_APPR_SERVER_URL"
    t.text     "PREF_APPR_MYX_URL"
    t.integer  "PREF_DISABLE_BAD_LOGIN",    limit: 1
    t.integer  "PREF_SKIP_SAT",             limit: 1
    t.integer  "PREF_SKIP_SUN",             limit: 1
    t.integer  "PREF_SKIP_HOLIDAYS",        limit: 1
    t.string   "PREF_EDITED_BY",            limit: 4
    t.datetime "PREF_EDITED_WHEN"
    t.string   "PREF_COUNTRY",              limit: 3
    t.decimal  "PREF_HOURS_OVERTIME",                        precision: 9,  scale: 2
    t.integer  "PREF_PAPER_SIZE",           limit: 1
    t.integer  "PREF_AR_NUMBERING",         limit: 1
    t.integer  "PREF_SHARE_PROJ_NUM",       limit: 1
    t.integer  "PREF_OUTBOX",               limit: 1
    t.binary   "PREF_OWRITE_STYLES",        limit: 16777215
    t.string   "PREF_DB_NICKNAME",          limit: 30
    t.integer  "PREF_DISABLE_SW_UPDATE",    limit: 1
    t.integer  "PREF_FAST_F_SCORE",         limit: 1
    t.integer  "PREF_FAST_A_SCORE",         limit: 1
    t.integer  "PREF_FAST_S_SCORE",         limit: 1
    t.integer  "PREF_FAST_T_SCORE",         limit: 1
    t.string   "PREF_GRADE_A",              limit: 25
    t.string   "PREF_GRADE_B",              limit: 25
    t.string   "PREF_GRADE_C",              limit: 25
    t.string   "PREF_GRADE_D",              limit: 25
    t.string   "PREF_GRADE_F",              limit: 25
    t.string   "PREF_LANGUAGE",             limit: 35
    t.integer  "PREF_WINNERS_DO_TIME",      limit: 1
    t.string   "PREF_WINNERS_NOTIFY_EMAIL", limit: 100
    t.date     "PREF_WINNERS_CHECKED"
    t.string   "PREF_JOB_USER_DATE1",       limit: 20
    t.string   "PREF_JOB_USER_DATE2",       limit: 20
    t.integer  "PREF_ICAL_SYNC",            limit: 1
    t.integer  "PREF_TAX3_OPTION1",         limit: 1
    t.integer  "PREF_TAX3_OPTION2",         limit: 1
    t.decimal  "PREF_TAX3_PERCENT",                          precision: 15, scale: 2
    t.string   "PREF_HOMEBASE_DROPBOX",     limit: 100
    t.text     "PREF_HOMEBASE_PW",          limit: 16777215
    t.decimal  "PREF_JOB_COMPLETE_PC",                       precision: 15, scale: 0
    t.decimal  "PREF_RUSH_CHG1",                             precision: 15, scale: 0
    t.decimal  "PREF_RUSH_CHG2",                             precision: 15, scale: 0
    t.decimal  "PREF_RUSH_CHG3",                             precision: 15, scale: 0
    t.integer  "PREF_EMAIL_PW",             limit: 1
    t.integer  "PREF_STRONG_PW",            limit: 1
    t.integer  "PREF_TIME_POINT1",          limit: 1
    t.integer  "PREF_TIME_POINT2",          limit: 1
    t.integer  "PREF_TIME_POINT3",          limit: 1
    t.integer  "PREF_WINDOW_LOGO",          limit: 1
    t.integer  "PREF_JOB_REQ_USER_FIELDS",  limit: 1
    t.integer  "PREF_EXPIRE_PW"
    t.integer  "PREF_REQ_PC_TASKS",         limit: 1
    t.integer  "PREF_PRJ_INVITE"
    t.integer  "PREF_SMTP_PORT"
    t.integer  "PREF_SMTP_SSL",             limit: 1
  end

  add_index "prefs", ["PREF_CODE"], name: "PREF_CODE", using: :btree
  add_index "prefs", ["PREF_SEQ"], name: "PREF_SEQ", unique: true, using: :btree

  create_table "print_spec_values", primary_key: "PSV_SEQ", force: true do |t|
    t.string   "PSV_CAT",         limit: 25
    t.text     "PSV_VALUE"
    t.string   "PSV_ADDED_BY",    limit: 4
    t.datetime "PSV_ADDED_WHEN"
    t.string   "PSV_EDITED_BY",   limit: 4
    t.datetime "PSV_EDITED_WHEN"
  end

  add_index "print_spec_values", ["PSV_CAT"], name: "PSV_CAT", using: :btree
  add_index "print_spec_values", ["PSV_SEQ"], name: "PSV_SEQ", unique: true, using: :btree

  create_table "print_specs", primary_key: "PSPEC_SEQ", force: true do |t|
    t.string   "PSPEC_JOB_NUM",          limit: 10
    t.string   "PSPEC_PROD_COORD",       limit: 10
    t.date     "PSPEC_DATE"
    t.date     "PSPEC_DATE_NEEDED"
    t.text     "PSPEC_DESCRIPTION"
    t.date     "PSPEC_ART_DUE"
    t.date     "PSPEC_FINAL_DUE"
    t.string   "PSPEC_QTY",              limit: 30
    t.string   "PSPEC_OVERRUN",          limit: 30
    t.string   "PSPEC_COV_FLATSIZE",     limit: 30
    t.string   "PSPEC_COV_FOLDSIZE",     limit: 30
    t.string   "PSPEC_COV_STOCK",        limit: 60
    t.string   "PSPEC_COV_OUTSIDE",      limit: 60
    t.string   "PSPEC_COV_INSIDE",       limit: 60
    t.string   "PSPEC_COV_O_BLEEDS",     limit: 30
    t.string   "PSPEC_COV_I_BLEEDS",     limit: 30
    t.string   "PSPEC_COV_PANTONE",      limit: 60
    t.string   "PSPEC_TX_FLATSIZE",      limit: 30
    t.string   "PSPEC_TX_FOLDSIZE",      limit: 30
    t.string   "PSPEC_TX_STOCK",         limit: 60
    t.string   "PSPEC_TX_COLORS",        limit: 60
    t.string   "PSPEC_TX_BLEEDS",        limit: 30
    t.string   "PSPEC_TX_PANTONE",       limit: 60
    t.string   "PSPEC_TX_PAGES",         limit: 30
    t.string   "PSPEC_IN_FLATSIZE",      limit: 30
    t.string   "PSPEC_IN_FOLDSIZE",      limit: 30
    t.string   "PSPEC_IN_STOCK",         limit: 60
    t.string   "PSPEC_IN_COLORS",        limit: 60
    t.string   "PSPEC_IN_PAGES",         limit: 30
    t.string   "PSPEC_IN_BLEEDS",        limit: 30
    t.string   "PSPEC_IN_PANTONE",       limit: 60
    t.boolean  "PSPEC_IN_COLLATE"
    t.boolean  "PSPEC_MECH"
    t.boolean  "PSPEC_ELEC"
    t.boolean  "PSPEC_FILM"
    t.string   "PSPEC_NO_IMAGES",        limit: 60
    t.string   "PSPEC_T1",               limit: 60
    t.string   "PSPEC_T2",               limit: 60
    t.string   "PSPEC_T3",               limit: 60
    t.string   "PSPEC_T4",               limit: 60
    t.string   "PSPEC_TRANS_SPEC",       limit: 60
    t.string   "PSPEC_R1",               limit: 60
    t.string   "PSPEC_R2",               limit: 60
    t.string   "PSPEC_R3",               limit: 60
    t.string   "PSPEC_R4",               limit: 60
    t.string   "PSPEC_REF_SPEC",         limit: 60
    t.text     "PSPEC_STRIPPING"
    t.text     "PSPEC_PROOFING"
    t.text     "PSPEC_BINDERY"
    t.text     "PSPEC_PACKAGE"
    t.string   "PSPEC_ADDED_BY",         limit: 4
    t.text     "PSPEC_STATUS"
    t.string   "PSX_PROD_CONTACT",       limit: 200
    t.string   "PSX_FORMAT",             limit: 40
    t.string   "PSX_FORMAT_OTHER",       limit: 200
    t.decimal  "PSX_QTY_EACH",                       precision: 9, scale: 0
    t.decimal  "PSX_QTY_TOTAL",                      precision: 9, scale: 0
    t.integer  "PSX_PREPRESS",           limit: 1
    t.text     "PSX_PREPRESS_OTHER"
    t.text     "PSX_STATUS"
    t.string   "PSX_TRIM",               limit: 50
    t.string   "PSX_FOLDS_TO",           limit: 20
    t.string   "PSX_FOLDS_OTHER",        limit: 50
    t.string   "PSX_WEIGHT",             limit: 10
    t.string   "PSX_FINISH",             limit: 40
    t.string   "PSX_TYPE",               limit: 40
    t.string   "PSX_SPECIAL_STOCK",      limit: 100
    t.string   "PSX_AVAILABLE_FROM",     limit: 40
    t.integer  "PSX_CLIENT_SUPPLIED",    limit: 1
    t.string   "PSX_DRILL",              limit: 40
    t.string   "PSX_FOLD_GLUE",          limit: 40
    t.integer  "PSX_CUT",                limit: 1
    t.integer  "PSX_COLLATE",            limit: 1
    t.string   "PSX_STITCHING",          limit: 200
    t.string   "PSX_WRAPPING",           limit: 40
    t.string   "PSX_TABS",               limit: 200
    t.integer  "PSX_SPECIAL_DIECUT",     limit: 1
    t.integer  "PSX_SPECIAL_FOIL",       limit: 1
    t.integer  "PSX_SPECIAL_LAM",        limit: 1
    t.integer  "PSX_SPECIAL_PRESSCHECK", limit: 1
    t.integer  "PSX_SPECIAL_SPOTUV",     limit: 1
    t.integer  "PSX_SPECIAL_BIND",       limit: 1
    t.integer  "PSX_SPECIAL_GLUE",       limit: 1
    t.text     "PSX_SPECIAL_OTHER"
    t.text     "PSX_SPECIAL_NOTES"
    t.string   "PSX_COLOR1_PROCESS",     limit: 20
    t.string   "PSX_COLOR2_PROCESS",     limit: 20
    t.decimal  "PSX_COVR1_PROCESS",                  precision: 9, scale: 0
    t.decimal  "PSX_COVR2_PROCESS",                  precision: 9, scale: 0
    t.string   "PSX_COLOR1_PMS",         limit: 20
    t.string   "PSX_COLOR2_PMS",         limit: 20
    t.decimal  "PSX_COVR1_PMS",                      precision: 9, scale: 0
    t.decimal  "PSX_COVR2_PMS",                      precision: 9, scale: 0
    t.string   "PSX_COLOR1_METAL",       limit: 20
    t.string   "PSX_COLOR2_METAL",       limit: 20
    t.decimal  "PSX_COVR1_METAL",                    precision: 9, scale: 0
    t.decimal  "PSX_COVR2_METAL",                    precision: 9, scale: 0
    t.string   "PSX_SIDE1_COATING",      limit: 40
    t.string   "PSX_SIDE2_COATING",      limit: 40
    t.integer  "PSX_SPECIAL_OPTION",     limit: 1
    t.date     "PSX_DEL_DATE"
    t.integer  "PSX_DELIVERY",           limit: 1
    t.string   "PSX_DELIVER1_TO1",       limit: 40
    t.string   "PSX_DELIVER1_TO2",       limit: 40
    t.string   "PSX_DELIVER1_TO3",       limit: 40
    t.string   "PSX_DELIVER1_TO4",       limit: 40
    t.string   "PSX_DELIVER1_QTY",       limit: 15
    t.string   "PSX_DELIVER2_TO1",       limit: 40
    t.string   "PSX_DELIVER2_TO2",       limit: 40
    t.string   "PSX_DELIVER2_TO3",       limit: 40
    t.string   "PSX_DELIVER2_TO4",       limit: 40
    t.string   "PSX_DELIVER2_QTY",       limit: 15
    t.string   "PSX_DELIVER3_TO1",       limit: 40
    t.string   "PSX_DELIVER3_TO2",       limit: 40
    t.string   "PSX_DELIVER3_TO3",       limit: 40
    t.string   "PSX_DELIVER3_TO4",       limit: 40
    t.string   "PSX_DELIVER3_QTY",       limit: 15
    t.text     "PSX_DEL_INSTRUCTIONS"
    t.text     "PSX_SPEC_INSTRUCTIONS"
    t.text     "PSX_INV_INSTRUCTIONS"
    t.string   "PSX_VENDOR1",            limit: 10
    t.string   "PSX_VENDOR2",            limit: 10
    t.string   "PSX_VENDOR3",            limit: 10
    t.string   "PSX_BID1_1",             limit: 40
    t.string   "PSX_BID1_2",             limit: 40
    t.string   "PSX_BID1_3",             limit: 40
    t.string   "PSX_BID1_4",             limit: 40
    t.string   "PSX_BID2_1",             limit: 40
    t.string   "PSX_BID2_2",             limit: 40
    t.string   "PSX_BID2_3",             limit: 40
    t.string   "PSX_BID2_4",             limit: 40
    t.string   "PSX_BID3_1",             limit: 40
    t.string   "PSX_BID3_2",             limit: 40
    t.string   "PSX_BID3_3",             limit: 40
    t.string   "PSX_BID3_4",             limit: 40
    t.decimal  "PSX_BID1_AMT",                       precision: 9, scale: 2
    t.decimal  "PSX_BID2_AMT",                       precision: 9, scale: 2
    t.decimal  "PSX_BID3_AMT",                       precision: 9, scale: 2
    t.decimal  "PSX_BID4_AMT",                       precision: 9, scale: 2
    t.text     "PSX_BID1_NOTES"
    t.text     "PSX_BID2_NOTES"
    t.text     "PSX_BID3_NOTES"
    t.integer  "PSX_BID_WINNER",         limit: 1
    t.date     "PSX_DATE_AWARDED"
    t.string   "PSX_AWARDED_BY",         limit: 4
    t.integer  "PSX_TAXABLE",            limit: 1
    t.string   "PSX_PROD_CONTACT_PH",    limit: 40
    t.string   "PSX_PROD_CONTACT_EMAIL", limit: 40
    t.string   "PSX_TASK",               limit: 4
    t.date     "PSX_NEED_QUOTE_BY"
    t.string   "PSX_DRILL_OTHER",        limit: 40
    t.string   "PSX_ADDED_BY",           limit: 4
    t.datetime "PSX_ADDED_WHEN"
    t.string   "PSX_EDITED_BY",          limit: 4
    t.datetime "PSX_EDITED_WHEN"
  end

  add_index "print_specs", ["PSPEC_JOB_NUM"], name: "PSPEC_JOB_NUM", using: :btree
  add_index "print_specs", ["PSPEC_SEQ"], name: "PSPEC_SEQ", unique: true, using: :btree
  add_index "print_specs", ["PSX_COVR2_PROCESS"], name: "PSX_COVR2_PROCESS", using: :btree

  create_table "programs", primary_key: "PGM_SEQ", force: true do |t|
    t.string   "PGM_CODE",        limit: 20
    t.string   "PGM_TIME_PGM",    limit: 30
    t.decimal  "PGM_RATING_EA",              precision: 9,  scale: 2
    t.decimal  "PGM_COST_EA",                precision: 9,  scale: 2
    t.string   "PGM_GROUP",       limit: 6
    t.text     "PGM_NOTE"
    t.string   "PGM_TYPE",        limit: 2
    t.string   "AD_NAME",         limit: 30
    t.string   "AD_POSITION",     limit: 30
    t.text     "AD_NOTES"
    t.decimal  "AD_GROSS_AMT",               precision: 15, scale: 2
    t.decimal  "AD_COMM",                    precision: 9,  scale: 2
    t.decimal  "AD_NET_AMT",                 precision: 15, scale: 2
    t.decimal  "AD_EXTRA_AMT",               precision: 15, scale: 2
    t.decimal  "AD_BILL_NET",                precision: 9,  scale: 0
    t.string   "AD_ISSUE_DATE",   limit: 30
    t.string   "AD_SPACE_CLOSE",  limit: 30
    t.decimal  "AD_MAT_CLOSE",               precision: 9,  scale: 0
    t.string   "PGM_KEY",         limit: 60
    t.string   "PGM_CLIENT_NUM",  limit: 10
    t.string   "AD_RATE_BASIS",   limit: 4
    t.string   "PGM_ADDED_BY",    limit: 4
    t.datetime "PGM_ADDED_WHEN"
    t.string   "PGM_EDITED_BY",   limit: 4
    t.datetime "PGM_EDITED_WHEN"
  end

  add_index "programs", ["PGM_CLIENT_NUM"], name: "PGM_CLIENT_NUM", using: :btree
  add_index "programs", ["PGM_CODE"], name: "PGM_CODE", using: :btree
  add_index "programs", ["PGM_KEY"], name: "PGM_KEY", using: :btree
  add_index "programs", ["PGM_SEQ"], name: "PGM_SEQ", unique: true, using: :btree
  add_index "programs", ["PGM_TIME_PGM"], name: "PGM_TIME_PGM", using: :btree
  add_index "programs", ["PGM_TYPE"], name: "PGM_TYPE", using: :btree

  create_table "projects", primary_key: "PROJ_SEQ", force: true do |t|
    t.string   "PROJ_CLIENT_NUM",  limit: 10
    t.string   "PROJ_NAME",        limit: 20
    t.text     "PROJ_DESC"
    t.decimal  "PROJ_BUDGET",                 precision: 15, scale: 2
    t.decimal  "PROJ_NUM1",                   precision: 15, scale: 2
    t.decimal  "PROJ_NUM2",                   precision: 15, scale: 2
    t.decimal  "PROJ_NUM3",                   precision: 15, scale: 2
    t.decimal  "PROJ_NUM4",                   precision: 15, scale: 2
    t.decimal  "PROJ_NUM5",                   precision: 15, scale: 2
    t.decimal  "PROJ_NUM6",                   precision: 15, scale: 2
    t.decimal  "PROJ_NUM7",                   precision: 15, scale: 2
    t.decimal  "PROJ_NUM8",                   precision: 15, scale: 2
    t.decimal  "PROJ_NUM9",                   precision: 15, scale: 2
    t.decimal  "PROJ_NUM10",                  precision: 15, scale: 2
    t.decimal  "PROJ_NUM11",                  precision: 15, scale: 2
    t.decimal  "PROJ_NUM12",                  precision: 15, scale: 2
    t.string   "PROJ_STATUS",      limit: 20
    t.string   "PROJ_ADDED_BY",    limit: 4
    t.datetime "PROJ_ADDED_WHEN"
    t.string   "PROJ_EDITED_BY",   limit: 4
    t.datetime "PROJ_EDITED_WHEN"
  end

  add_index "projects", ["PROJ_CLIENT_NUM"], name: "PROJ_CLIENT_NUM", using: :btree
  add_index "projects", ["PROJ_NAME"], name: "PROJ_NAME", using: :btree
  add_index "projects", ["PROJ_SEQ"], name: "PROJ_SEQ", unique: true, using: :btree

  create_table "proposals", primary_key: "PROPS_SEQ", force: true do |t|
    t.string   "PROPS_CLIENT_NUM",    limit: 10
    t.date     "PROPS_DATE_ADDED"
    t.string   "PROPS_REQUESTOR",     limit: 100
    t.string   "PROPS_TYPE",          limit: 15
    t.decimal  "PROPS_BUDGET",                    precision: 15, scale: 2
    t.date     "PROPS_START_DATE"
    t.date     "PROPS_DUE_DATE"
    t.string   "PROPS_OK_BY",         limit: 10
    t.text     "PROPS_CB1"
    t.text     "PROPS_CB2"
    t.text     "PROPS_CB3"
    t.text     "PROPS_CB4"
    t.text     "PROPS_CB5"
    t.text     "PROPS_CB6"
    t.text     "PROPS_CB7"
    t.text     "PROPS_CB8"
    t.text     "PROPS_CB9"
    t.text     "PROPS_CB10"
    t.text     "PROPS_CB11"
    t.text     "PROPS_CB12"
    t.text     "PROPS_CB13"
    t.text     "PROPS_CB14"
    t.text     "PROPS_CB15"
    t.string   "PROPS_NAME",          limit: 60
    t.date     "PROPS_OK_DATE"
    t.text     "PROPS_DESC"
    t.string   "PROPS_CHARGE_NUM",    limit: 20
    t.string   "PROPS_STATUS_DESC",   limit: 40
    t.integer  "PROPS_STATUS",        limit: 1
    t.string   "PROPS_ADDED_BY",      limit: 10
    t.integer  "PROPS_APPROVED",      limit: 1
    t.string   "PROPS_APPROVED_BY",   limit: 4
    t.datetime "PROPS_APPROVED_DATE"
    t.string   "PROPS_EDITED_BY",     limit: 4
    t.datetime "PROPS_EDITED_WHEN"
    t.string   "PROPS_REVIEWER",      limit: 10
  end

  add_index "proposals", ["PROPS_CLIENT_NUM"], name: "PROPS_CLIENT_NUM", using: :btree
  add_index "proposals", ["PROPS_DUE_DATE"], name: "PROPS_DUE_DATE", using: :btree
  add_index "proposals", ["PROPS_SEQ"], name: "PROPS_SEQ", unique: true, using: :btree
  add_index "proposals", ["PROPS_START_DATE"], name: "PROPS_START_DATE", using: :btree

  create_table "purchase_order", primary_key: "PO_SEQ", force: true do |t|
    t.string   "PO_NUM",           limit: 12
    t.string   "PO_JOB_NUM",       limit: 15
    t.string   "PO_TASK",          limit: 4
    t.string   "PO_DESC_LABEL",    limit: 15
    t.text     "PO_DESC"
    t.string   "PO_VENDOR_NUM",    limit: 10
    t.decimal  "PO_COST",                     precision: 9,  scale: 2
    t.decimal  "PO_MARKUP",                   precision: 9,  scale: 2
    t.decimal  "PO_COMM",                     precision: 9,  scale: 2
    t.decimal  "PO_TAX",                      precision: 9,  scale: 2
    t.decimal  "PO_GROSS",                    precision: 15, scale: 2
    t.decimal  "PO_AMT_PAID",                 precision: 9,  scale: 2
    t.decimal  "PO_TYPE",                     precision: 9,  scale: 0
    t.string   "PO_CLIENT_NUM",    limit: 10
    t.text     "PO_SHIP_NOTE"
    t.string   "PO_SHIP1",         limit: 40
    t.string   "PO_SHIP2",         limit: 40
    t.string   "PO_SHIP3",         limit: 40
    t.string   "PO_SHIP4",         limit: 40
    t.string   "PO_QTY_LABEL",     limit: 15
    t.string   "PO_QTY",           limit: 20
    t.string   "PO_APPROVAL1",     limit: 30
    t.string   "PO_APPROVAL2",     limit: 30
    t.string   "PO_APPROVAL3",     limit: 30
    t.string   "PO_ORDERED_BY",    limit: 4
    t.string   "PO_STATUS",        limit: 80
    t.date     "PO_DUE_DATE"
    t.decimal  "PO_TERMS1",                   precision: 9,  scale: 2
    t.decimal  "PO_TERMS2",                   precision: 9,  scale: 0
    t.decimal  "PO_TERMS3",                   precision: 9,  scale: 0
    t.date     "PO_DATE"
    t.decimal  "PO_PC",                       precision: 9,  scale: 0
    t.string   "PO_TO1",           limit: 10
    t.string   "PO_TO2",           limit: 10
    t.string   "PO_TO3",           limit: 10
    t.string   "PO_TO4",           limit: 10
    t.string   "PO_TO5",           limit: 10
    t.string   "PO_VENDOR1",       limit: 40
    t.string   "PO_VENDOR2",       limit: 40
    t.string   "PO_VENDOR3",       limit: 40
    t.string   "PO_VENDOR4",       limit: 40
    t.string   "PO_VENDOR5",       limit: 40
    t.string   "PO_FIELD_LABEL1",  limit: 20
    t.string   "PO_FIELD_LABEL2",  limit: 20
    t.string   "PO_FIELD_LABEL3",  limit: 20
    t.string   "PO_FIELD_LABEL4",  limit: 20
    t.string   "PO_FIELD_LABEL5",  limit: 20
    t.string   "PO_FIELD1",        limit: 30
    t.string   "PO_FIELD2",        limit: 30
    t.string   "PO_FIELD3",        limit: 30
    t.string   "PO_FIELD4",        limit: 30
    t.string   "PO_FIELD5",        limit: 30
    t.integer  "PO_HOLD",          limit: 1
    t.integer  "PO_APPROVED",      limit: 1
    t.datetime "PO_APPROVED_DAT"
    t.string   "PO_APPROVED_BY",   limit: 4
    t.string   "PO_AP_ALERT",      limit: 40
    t.integer  "PO_TAX_EXEMPT",    limit: 1
    t.integer  "PO_PERIOD",        limit: 1
    t.decimal  "PO_AR_BILLED",                precision: 15, scale: 2
    t.decimal  "PO_TO_BE_BILLED",             precision: 15, scale: 2
    t.string   "PO_AR_NUM",        limit: 10
    t.decimal  "PO_LINES",                    precision: 15, scale: 0
    t.text     "PO_DISCLAIMER"
    t.decimal  "PO_CLOSED",                   precision: 9,  scale: 0
    t.decimal  "PO_FORM",                     precision: 9,  scale: 0
    t.string   "PO_TOTAL_TITLE",   limit: 20
    t.string   "PO_MAT_DUE_LABEL", limit: 20
    t.string   "PO_IMPORT_FROM",   limit: 15
    t.text     "PO_TRAFFIC_INSTR"
    t.text     "PO_REP_INSTR"
    t.string   "PO_ADDED_BY",      limit: 3
    t.decimal  "PO_REV",                      precision: 9,  scale: 0
    t.string   "PO_FIELD6",        limit: 15
    t.string   "PO_FIELD_LABEL6",  limit: 20
    t.string   "PO_REP_NAME",      limit: 40
    t.string   "PO_REP_PHONE",     limit: 20
    t.string   "PO_REP_FAX",       limit: 20
    t.string   "PO_CAMPAIGN",      limit: 20
    t.string   "PO_BRAND",         limit: 20
    t.integer  "PO_BLANKET",       limit: 1
    t.string   "PO_EDITED_BY",     limit: 4
    t.datetime "PO_EDITED_WHEN"
    t.datetime "PO_ADDED_WHEN"
    t.integer  "PO_OWNERSHIP",     limit: 1
    t.string   "PO_PT_TEMPLATE",   limit: 20
  end

  add_index "purchase_order", ["PO_APPROVED"], name: "PO_APPROVED", using: :btree
  add_index "purchase_order", ["PO_CLIENT_NUM"], name: "PO_CLIENT_NUM", using: :btree
  add_index "purchase_order", ["PO_CLOSED"], name: "PO_CLOSED", using: :btree
  add_index "purchase_order", ["PO_DATE"], name: "PO_DATE", using: :btree
  add_index "purchase_order", ["PO_DUE_DATE"], name: "PO_DUE_DATE", using: :btree
  add_index "purchase_order", ["PO_FIELD1"], name: "PO_FIELD1", using: :btree
  add_index "purchase_order", ["PO_JOB_NUM"], name: "PO_JOB_NUM", using: :btree
  add_index "purchase_order", ["PO_NUM"], name: "PO_NUM", using: :btree
  add_index "purchase_order", ["PO_PERIOD"], name: "PO_PERIOD", using: :btree
  add_index "purchase_order", ["PO_SEQ"], name: "PO_SEQ", unique: true, using: :btree
  add_index "purchase_order", ["PO_TASK"], name: "PO_TASK", using: :btree
  add_index "purchase_order", ["PO_TYPE"], name: "PO_TYPE", using: :btree
  add_index "purchase_order", ["PO_VENDOR_NUM"], name: "PO_VENDOR_NUM", using: :btree

  create_table "rates", primary_key: "RATE_SEQ", force: true do |t|
    t.string   "RATE_STAFF",       limit: 10
    t.string   "RATE_CLIENT_NUM",  limit: 10
    t.string   "RATE_TASK",        limit: 4
    t.string   "RATE_KEY",         limit: 24
    t.text     "RATE_NOTE"
    t.decimal  "SPECIAL_RATE",                precision: 15, scale: 2
    t.string   "RATE_ADDED_BY",    limit: 4
    t.datetime "RATE_ADDED_WHEN"
    t.string   "RATE_EDITED_BY",   limit: 4
    t.datetime "RATE_EDITED_WHEN"
  end

  add_index "rates", ["RATE_KEY"], name: "RATE_KEY", using: :btree
  add_index "rates", ["RATE_SEQ"], name: "RATE_SEQ", unique: true, using: :btree
  add_index "rates", ["RATE_STAFF"], name: "RATE_STAFF", using: :btree

  create_table "recur_ap", primary_key: "RAP_SEQ", force: true do |t|
    t.string   "RAP_VENDOR",      limit: 10
    t.date     "RAP_DATE"
    t.decimal  "RAP_AMT1",                   precision: 9,  scale: 2
    t.text     "RAP_DESC"
    t.decimal  "RAP_CGL",                    precision: 15, scale: 2
    t.decimal  "RAP_DGL1",                   precision: 15, scale: 2
    t.string   "RAP_ADDED_BY",    limit: 3
    t.string   "RAP_INV_NUM",     limit: 20
    t.integer  "RAP_PERIOD",      limit: 1
    t.date     "RAP_INV_DATE"
    t.decimal  "RAP_DGL2",                   precision: 15, scale: 2
    t.decimal  "RAP_DGL3",                   precision: 15, scale: 2
    t.decimal  "RAP_DGL4",                   precision: 15, scale: 2
    t.decimal  "RAP_DGL5",                   precision: 15, scale: 2
    t.decimal  "RAP_DGL6",                   precision: 15, scale: 2
    t.decimal  "RAP_AMT2",                   precision: 9,  scale: 2
    t.decimal  "RAP_AMT3",                   precision: 9,  scale: 2
    t.decimal  "RAP_AMT4",                   precision: 9,  scale: 2
    t.decimal  "RAP_AMT5",                   precision: 9,  scale: 2
    t.decimal  "RAP_AMT6",                   precision: 9,  scale: 2
    t.datetime "RAP_ADDED_WHEN"
    t.string   "RAP_EDITED_BY",   limit: 4
    t.datetime "RAP_EDITED_WHEN"
  end

  add_index "recur_ap", ["RAP_DATE"], name: "RAP_DATE", using: :btree
  add_index "recur_ap", ["RAP_SEQ"], name: "RAP_SEQ", unique: true, using: :btree
  add_index "recur_ap", ["RAP_VENDOR"], name: "RAP_VENDOR", using: :btree

  create_table "recur_ar", primary_key: "RAR_SEQ", force: true do |t|
    t.string   "RAR_CLIENT_NUM",  limit: 10
    t.date     "RAR_DATE"
    t.decimal  "RAR_AMT1",                   precision: 9, scale: 2
    t.text     "RAR_DESC"
    t.decimal  "RAR_DGL",                    precision: 9, scale: 2
    t.string   "RAR_ADDED_BY",    limit: 4
    t.string   "RAR_INV_NUM",     limit: 10
    t.integer  "RAR_PERIOD",      limit: 1
    t.string   "RAR_JOB_NUM",     limit: 10
    t.date     "RAR_INV_DATE"
    t.string   "RAR_AX_TASK1",    limit: 4
    t.string   "RAR_AX_NAME1",    limit: 50
    t.decimal  "RAR_AX_HOURS1",              precision: 9, scale: 2
    t.decimal  "RAR_AX_AMT1",                precision: 9, scale: 2
    t.string   "RAR_AX_TASK2",    limit: 4
    t.string   "RAR_AX_NAME2",    limit: 50
    t.decimal  "RAR_AX_HOURS2",              precision: 9, scale: 2
    t.decimal  "RAR_AX_AMT2",                precision: 9, scale: 2
    t.string   "RAR_AX_TASK3",    limit: 4
    t.string   "RAR_AX_NAME3",    limit: 50
    t.decimal  "RAR_AX_HOURS3",              precision: 9, scale: 2
    t.decimal  "RAR_AX_AMT3",                precision: 9, scale: 2
    t.string   "RAR_AX_TASK4",    limit: 4
    t.string   "RAR_AX_NAME4",    limit: 50
    t.decimal  "RAR_AX_HOURS4",              precision: 9, scale: 2
    t.decimal  "RAR_AX_AMT4",                precision: 9, scale: 2
    t.string   "RAR_AX_TASK5",    limit: 4
    t.string   "RAR_AX_NAME5",    limit: 50
    t.decimal  "RAR_AX_HOURS5",              precision: 9, scale: 2
    t.decimal  "RAR_AX_AMT5",                precision: 9, scale: 2
    t.string   "RAR_AX_TASK6",    limit: 4
    t.string   "RAR_AX_NAME6",    limit: 50
    t.decimal  "RAR_AX_HOURS6",              precision: 9, scale: 2
    t.decimal  "RAR_AX_AMT6",                precision: 9, scale: 2
    t.decimal  "RAR_AX_CGL1",                precision: 9, scale: 2
    t.decimal  "RAR_AX_CGL2",                precision: 9, scale: 2
    t.decimal  "RAR_AX_CGL3",                precision: 9, scale: 2
    t.decimal  "RAR_AX_CGL4",                precision: 9, scale: 2
    t.decimal  "RAR_AX_CGL5",                precision: 9, scale: 2
    t.decimal  "RAR_AX_CGL6",                precision: 9, scale: 2
    t.integer  "RAR_OPTION1",     limit: 1
    t.integer  "RAR_OPTION2",     limit: 1
    t.integer  "RAR_OPTION3",     limit: 1
    t.datetime "RAR_ADDED_WHEN"
    t.string   "RAR_EDITED_BY",   limit: 4
    t.datetime "RAR_EDITED_WHEN"
  end

  add_index "recur_ar", ["RAR_CLIENT_NUM"], name: "RAR_CLIENT_NUM", using: :btree
  add_index "recur_ar", ["RAR_DATE"], name: "RAR_DATE", using: :btree
  add_index "recur_ar", ["RAR_JOB_NUM"], name: "RAR_JOB_NUM", using: :btree
  add_index "recur_ar", ["RAR_SEQ"], name: "RAR_SEQ", unique: true, using: :btree

  create_table "retainers", id: false, force: true do |t|
    t.string   "RET_CLIENT_NUM",  limit: 10
    t.decimal  "RET_AMT1",                   precision: 15, scale: 2
    t.decimal  "RET_AMT2",                   precision: 15, scale: 2
    t.decimal  "RET_AMT3",                   precision: 15, scale: 2
    t.decimal  "RET_AMT4",                   precision: 15, scale: 2
    t.decimal  "RET_AMT5",                   precision: 15, scale: 2
    t.decimal  "RET_AMT6",                   precision: 15, scale: 2
    t.decimal  "RET_AMT7",                   precision: 15, scale: 2
    t.decimal  "RET_AMT8",                   precision: 15, scale: 2
    t.decimal  "RET_AMT9",                   precision: 15, scale: 2
    t.decimal  "RET_AMT10",                  precision: 15, scale: 2
    t.decimal  "RET_AMT11",                  precision: 15, scale: 2
    t.decimal  "RET_AMT12",                  precision: 15, scale: 2
    t.string   "RET_1",           limit: 40
    t.string   "RET_2",           limit: 40
    t.string   "RET_3",           limit: 40
    t.string   "RET_4",           limit: 40
    t.string   "RET_5",           limit: 40
    t.string   "RET_6",           limit: 40
    t.string   "RET_7",           limit: 40
    t.string   "RET_8",           limit: 40
    t.string   "RET_9",           limit: 40
    t.string   "RET_10",          limit: 40
    t.string   "RET_11",          limit: 40
    t.string   "RET_12",          limit: 40
    t.integer  "RET_1_OK",        limit: 1
    t.integer  "RET_2_OK",        limit: 1
    t.integer  "RET_3_OK",        limit: 1
    t.integer  "RET_4_OK",        limit: 1
    t.integer  "RET_5_OK",        limit: 1
    t.integer  "RET_6_OK",        limit: 1
    t.integer  "RET_7_OK",        limit: 1
    t.integer  "RET_8_OK",        limit: 1
    t.integer  "RET_9_OK",        limit: 1
    t.integer  "RET_10_OK",       limit: 1
    t.integer  "RET_11_OK",       limit: 1
    t.integer  "RET_12_OK",       limit: 1
    t.date     "RET_DATE1"
    t.date     "RET_DATE2"
    t.date     "RET_DATE3"
    t.date     "RET_DATE4"
    t.date     "RET_DATE5"
    t.date     "RET_DATE6"
    t.date     "RET_DATE7"
    t.date     "RET_DATE8"
    t.date     "RET_DATE9"
    t.date     "RET_DATE10"
    t.date     "RET_DATE11"
    t.date     "RET_DATE12"
    t.string   "RET_AR_NUM1",     limit: 10
    t.string   "RET_AR_NUM2",     limit: 10
    t.string   "RET_AR_NUM3",     limit: 10
    t.string   "RET_AR_NUM4",     limit: 10
    t.string   "RET_AR_NUM5",     limit: 10
    t.string   "RET_AR_NUM6",     limit: 10
    t.string   "RET_AR_NUM7",     limit: 10
    t.string   "RET_AR_NUM8",     limit: 10
    t.string   "RET_AR_NUM9",     limit: 10
    t.string   "RET_AR_NUM10",    limit: 10
    t.string   "RET_AR_NUM11",    limit: 10
    t.string   "RET_AR_NUM12",    limit: 10
    t.string   "RET_ADDED_BY",    limit: 4
    t.datetime "RET_ADDED_WHEN"
    t.string   "RET_EDITED_BY",   limit: 4
    t.datetime "RET_EDITED_WHEN"
  end

  add_index "retainers", ["RET_CLIENT_NUM"], name: "RET_CLIENT_NUM", using: :btree

  create_table "rfq_items", primary_key: "RFQX_SEQ", force: true do |t|
    t.integer "RFQX_LINE_NUMBER"
    t.string  "RFQX_NUM",         limit: 12
    t.string  "RFQX_VENDOR2",     limit: 10
    t.string  "RFQX_JOB_NUM",     limit: 15
    t.string  "RFQX_TASK",        limit: 4
    t.string  "RFQX_NAME",        limit: 200
    t.text    "RFQX_DESC2"
    t.decimal "RFQX_QTY",                     precision: 15, scale: 0
    t.decimal "RFQX_UNIT_COST",               precision: 15, scale: 4
    t.decimal "RFQX_COST",                    precision: 15, scale: 2
    t.decimal "RFQX_GROSS",                   precision: 15, scale: 2
    t.decimal "RFQX_MARKUP",                  precision: 15, scale: 2
    t.string  "RFQX_PO_NUM",      limit: 12
    t.integer "RFQX_TAXABLE1",    limit: 1
    t.integer "RFQX_TAXABLE2",    limit: 1
    t.integer "RFQX_INCLUDE",     limit: 1
    t.string  "RFQX_TYPE",        limit: 20
  end

  add_index "rfq_items", ["RFQX_NUM"], name: "RFQX_NUM", using: :btree
  add_index "rfq_items", ["RFQX_SEQ"], name: "RFQX_SEQ", unique: true, using: :btree
  add_index "rfq_items", ["RFQX_VENDOR2"], name: "RFQX_VENDOR2", using: :btree

  create_table "rfq_skus", primary_key: "RFQSKU_SEQ", force: true do |t|
    t.decimal "RFQSKU_PART_NUM",              precision: 15, scale: 0
    t.string  "RFQSKU_NAME",       limit: 40
    t.text    "RFQSKU_DESC"
    t.string  "RFQSKU_TYPE",       limit: 20
    t.decimal "RFQSKU_MARKUP",                precision: 15, scale: 2
    t.decimal "RFQSKU_UNIT_COST",             precision: 15, scale: 4
    t.string  "RFQSKU_VENDOR_NUM", limit: 10
    t.string  "RFQSKU_TASK",       limit: 4
    t.string  "RFQSKU_JOB_TYPE",   limit: 15
  end

  add_index "rfq_skus", ["RFQSKU_NAME"], name: "RFQSKU_NAME", using: :btree
  add_index "rfq_skus", ["RFQSKU_PART_NUM"], name: "RFQSKU_PART_NUM", using: :btree
  add_index "rfq_skus", ["RFQSKU_SEQ"], name: "RFQSKU_SEQ", unique: true, using: :btree

  create_table "rfq_vendors", primary_key: "RFQV_SEQ", force: true do |t|
    t.string  "RFQV_NUM",        limit: 12
    t.string  "RFQV_VENDOR_NUM", limit: 10
    t.string  "RFQV_CONTACT",    limit: 50
    t.string  "RFQV_PHONE",      limit: 30
    t.string  "RFQV_FAX",        limit: 30
    t.integer "RFQV_WINNER",     limit: 1
    t.string  "RFQV_VORG",       limit: 40
    t.string  "RFQV_TYPE",       limit: 20
  end

  add_index "rfq_vendors", ["RFQV_NUM"], name: "RFQV_NUM", using: :btree
  add_index "rfq_vendors", ["RFQV_SEQ"], name: "RFQV_SEQ", unique: true, using: :btree

  create_table "rfqs", primary_key: "RFQ_SEQ", force: true do |t|
    t.string   "RFQ_NUM",                limit: 12
    t.string   "RFQ_JOB_NUM",            limit: 15
    t.string   "RFQ_TASK",               limit: 4
    t.string   "RFQ_VENDOR_NUM",         limit: 10
    t.datetime "RFQ_DATE"
    t.string   "RFQ_PROD_CONTACT",       limit: 50
    t.string   "RFQ_NAME",               limit: 200
    t.text     "RFQ_DESC"
    t.decimal  "RFQ_QTY",                            precision: 15, scale: 0
    t.string   "RFQ_CLIENT_NUM",         limit: 10
    t.string   "RFQ_CLIENT_CONTACT",     limit: 100
    t.string   "RFQ_CLIENT_ADDR1",       limit: 50
    t.string   "RFQ_CLIENT_ADDR2",       limit: 50
    t.string   "RFQ_CLIENT_ADDR3",       limit: 50
    t.string   "RFQ_CLIENT_ADDR4",       limit: 50
    t.string   "RFQ_CLIENT_ADDR5",       limit: 50
    t.string   "RFQ_CLIENT_ADDR6",       limit: 50
    t.text     "RFQ_PREP"
    t.text     "RFQ_KITTING"
    t.text     "RFQ_SHIPPING"
    t.text     "RFQ_CLIENT_NOTES"
    t.text     "RFQ_TERMS"
    t.integer  "RFQ_APPROVED",           limit: 1
    t.integer  "RFQ_CLIENT_OK",          limit: 1
    t.datetime "RFQ_CLIENT_OK_DATE"
    t.string   "RFQ_CLIENT_OK_BY",       limit: 10
    t.decimal  "RFQ_TOTAL_COST",                     precision: 15, scale: 2
    t.decimal  "RFQ_TOTAL_GROSS",                    precision: 15, scale: 2
    t.text     "RFQ_SPECIAL_INSTR"
    t.text     "RFQ_DEL_INSTR"
    t.text     "RFQ_AUTH"
    t.string   "RFQ_STATUS",             limit: 30
    t.string   "RFQ_ADDED_BY",           limit: 4
    t.datetime "RFQ_QUOTE_NEEDED"
    t.datetime "RFQ_DEL_DATE"
    t.string   "RFQ_PROD_CONTACT_EMAIL", limit: 40
    t.integer  "RFQ_TAXABLE1",           limit: 1
    t.integer  "RFQ_TAXABLE2",           limit: 1
    t.string   "RFQ_PROD_CONTACT_PH",    limit: 40
  end

  add_index "rfqs", ["RFQ_JOB_NUM"], name: "RFQ_JOB_NUM", using: :btree
  add_index "rfqs", ["RFQ_SEQ"], name: "RFQ_SEQ", unique: true, using: :btree

  create_table "sales_actions", primary_key: "SACT_SEQ", force: true do |t|
    t.integer  "SACT_KIND",        limit: 1
    t.date     "SACT_DATE"
    t.time     "SACT_TIME"
    t.integer  "SACT_LENGTH",      limit: 1
    t.string   "SACT_CAMPAIGN",    limit: 20
    t.decimal  "SACT_CON_SEQ",                precision: 9, scale: 0
    t.integer  "SACT_PRIORITY",    limit: 1
    t.decimal  "SACT_SLTR_SEQ",               precision: 9, scale: 0
    t.string   "SACT_FROM_STAFF",  limit: 4
    t.datetime "SACT_PRINTED"
    t.string   "SACT_PRINTED_BY",  limit: 4
    t.string   "SACT_CLIENT_NUM",  limit: 10
    t.string   "SACT_ADDED_BY",    limit: 4
    t.text     "SACT_SUBJECT"
    t.text     "SACT_BODY"
    t.text     "SACT_PS"
    t.datetime "SACT_ADDED_WHEN"
    t.string   "SACT_EDITED_BY",   limit: 4
    t.datetime "SACT_EDITED_WHEN"
  end

  add_index "sales_actions", ["SACT_CLIENT_NUM"], name: "SACT_CLIENT_NUM", using: :btree
  add_index "sales_actions", ["SACT_DATE"], name: "SACT_DATE", using: :btree
  add_index "sales_actions", ["SACT_FROM_STAFF"], name: "SACT_FROM_STAFF", using: :btree
  add_index "sales_actions", ["SACT_KIND"], name: "SACT_KIND", using: :btree
  add_index "sales_actions", ["SACT_SEQ"], name: "SACT_SEQ", unique: true, using: :btree

  create_table "sales_campaigns", primary_key: "SCAM_SEQ", force: true do |t|
    t.string   "SCAM_ID",           limit: 20
    t.text     "SCAM_DESC"
    t.string   "SCAM_ADDED_BY",     limit: 4
    t.date     "SCAM_START"
    t.date     "SCAM_END"
    t.decimal  "SCAM_ACTION",                  precision: 9, scale: 0
    t.decimal  "SCAM_ACTION1",                 precision: 9, scale: 0
    t.integer  "SCAM_ACTION1_DAYS", limit: 1
    t.decimal  "SCAM_ACTION2",                 precision: 9, scale: 0
    t.integer  "SCAM_ACTION2_DAYS", limit: 1
    t.decimal  "SCAM_ACTION3",                 precision: 9, scale: 0
    t.integer  "SCAM_ACTION3_DAYS", limit: 1
    t.string   "SCAM_CLIENT_NUM",   limit: 10
    t.integer  "SCAM_OK",           limit: 1
    t.string   "SCAM_OK_BY",        limit: 4
    t.datetime "SCAM_ADDED_WHEN"
    t.string   "SCAM_EDITED_BY",    limit: 4
    t.datetime "SCAM_EDITED_WHEN"
  end

  add_index "sales_campaigns", ["SCAM_CLIENT_NUM"], name: "SCAM_CLIENT_NUM", using: :btree
  add_index "sales_campaigns", ["SCAM_ID"], name: "SCAM_ID", using: :btree
  add_index "sales_campaigns", ["SCAM_SEQ"], name: "SCAM_SEQ", unique: true, using: :btree

  create_table "sales_letters", primary_key: "SLTR_SEQ", force: true do |t|
    t.string   "SLTR_ID",          limit: 20
    t.integer  "SLTR_KIND",        limit: 1
    t.date     "SLTR_START"
    t.date     "SLTR_END"
    t.string   "SLTR_CLIENT_NUM",  limit: 10
    t.text     "SLTR_DESC"
    t.string   "SLTR_AUTHOR",      limit: 4
    t.integer  "SLTR_OK",          limit: 1
    t.string   "SLTR_OK_BY",       limit: 4
    t.text     "SLTR_SUBJECT"
    t.text     "SLTR_BODY"
    t.text     "SLTR_PS"
    t.decimal  "SLTR_COUNT",                  precision: 9, scale: 0
    t.date     "SLTR_LAST_USE"
    t.integer  "SLTR_ONE_TIME",    limit: 1
    t.string   "SLTR_ADDED_BY",    limit: 4
    t.datetime "SLTR_ADDED_WHEN"
    t.string   "SLTR_EDITED_BY",   limit: 4
    t.datetime "SLTR_EDITED_WHEN"
  end

  add_index "sales_letters", ["SLTR_CLIENT_NUM"], name: "SLTR_CLIENT_NUM", using: :btree
  add_index "sales_letters", ["SLTR_EDITED_WHEN"], name: "SLTR_EDITED_WHEN", using: :btree
  add_index "sales_letters", ["SLTR_ID"], name: "SLTR_ID", using: :btree
  add_index "sales_letters", ["SLTR_KIND"], name: "SLTR_KIND", using: :btree
  add_index "sales_letters", ["SLTR_SEQ"], name: "SLTR_SEQ", unique: true, using: :btree

  create_table "sched_revs", primary_key: "SCV_SEQ", force: true do |t|
    t.string   "SCV_JOB_NUM",        limit: 10
    t.string   "SCV_TASK",           limit: 4
    t.decimal  "SCV_SORT",                       precision: 9, scale: 0
    t.string   "SCV_TASK_NAME",      limit: 100
    t.text     "SCV_TASK_SPECS"
    t.date     "SCV_DUE_DATE"
    t.time     "SCV_DUE_WHEN"
    t.string   "SCV_RESOURCE",       limit: 10
    t.decimal  "SCV_LEAD_TIME",                  precision: 9, scale: 0
    t.date     "SCV_START_DATE"
    t.date     "SCV_DATE_FINISHED"
    t.integer  "SCV_FINISHED",       limit: 1
    t.integer  "SCV_FINAL",          limit: 1
    t.integer  "SCV_REVISION",       limit: 1
    t.date     "SCV_J_DUE_DATE"
    t.date     "SCV_J_START_DATE"
    t.string   "SCV_REVISED_BY",     limit: 4
    t.datetime "SCV_REVISION_DATE"
    t.text     "SCV_REVISION_NOTES"
    t.integer  "SCV_REASON",         limit: 1
    t.string   "SCV_REV_OKD_BY",     limit: 4
    t.datetime "SCV_REV_OKD_DATE"
    t.integer  "SCV_KIND",           limit: 1
    t.string   "SCV_ADDED_BY",       limit: 4
    t.datetime "SCV_ADDED_WHEN"
    t.string   "SCV_EDITED_BY",      limit: 4
    t.datetime "SCV_EDITED_WHEN"
  end

  add_index "sched_revs", ["SCV_SEQ"], name: "SCV_SEQ", unique: true, using: :btree

  create_table "schedule_chart", primary_key: "SC_SEQ", force: true do |t|
    t.string "SC_J_NUM",      limit: 10
    t.string "SC_1",          limit: 10
    t.string "SC_2",          limit: 10
    t.string "SC_3",          limit: 10
    t.string "SC_4",          limit: 10
    t.string "SC_5",          limit: 10
    t.string "SC_6",          limit: 10
    t.string "SC_7",          limit: 10
    t.string "SC_8",          limit: 10
    t.string "SC_9",          limit: 10
    t.string "SC_10",         limit: 10
    t.string "SC_11",         limit: 10
    t.string "SC_12",         limit: 10
    t.string "SC_CLIENT_NUM", limit: 10
  end

  add_index "schedule_chart", ["SC_J_NUM"], name: "SC_J_NUM", using: :btree
  add_index "schedule_chart", ["SC_SEQ"], name: "SC_SEQ", unique: true, using: :btree

  create_table "schedule_header", primary_key: "SH_SEQ", force: true do |t|
    t.date   "SH_DATE1"
    t.date   "SH_DATE2"
    t.string "SH_CLIENT_NUM", limit: 10
    t.string "SH_JOB_NUM",    limit: 10
    t.string "SH_1",          limit: 10
    t.string "SH_2",          limit: 10
    t.string "SH_3",          limit: 10
    t.string "SH_4",          limit: 10
    t.string "SH_5",          limit: 10
    t.string "SH_6",          limit: 10
    t.string "SH_7",          limit: 10
    t.string "SH_8",          limit: 10
    t.string "SH_9",          limit: 10
    t.string "SH_10",         limit: 10
    t.string "SH_11",         limit: 10
    t.string "SH_12",         limit: 10
  end

  add_index "schedule_header", ["SH_JOB_NUM"], name: "SH_JOB_NUM", using: :btree
  add_index "schedule_header", ["SH_SEQ"], name: "SH_SEQ", unique: true, using: :btree

  create_table "staff", primary_key: "S_SEQ", force: true do |t|
    t.string   "S_INITIALS",             limit: 10
    t.string   "S_NAME",                 limit: 40
    t.string   "S_ADDRESS1",             limit: 50
    t.string   "S_ADDRESS2",             limit: 50
    t.string   "S_ADDRESS3",             limit: 50
    t.string   "S_TASK",                 limit: 4
    t.decimal  "S_BILL_RATE",                             precision: 9,  scale: 2
    t.decimal  "S_COST_RATE",                             precision: 9,  scale: 2
    t.string   "S_SSN",                  limit: 20
    t.string   "S_PC_NUM",               limit: 10
    t.decimal  "S_MTD",                                   precision: 9,  scale: 2
    t.decimal  "S_YTD",                                   precision: 9,  scale: 2
    t.decimal  "S_HOURS",                                 precision: 9,  scale: 2
    t.decimal  "S_1",                                     precision: 9,  scale: 2
    t.decimal  "S_2",                                     precision: 9,  scale: 2
    t.decimal  "S_3",                                     precision: 9,  scale: 2
    t.decimal  "S_4",                                     precision: 9,  scale: 2
    t.decimal  "S_5",                                     precision: 9,  scale: 2
    t.decimal  "S_6",                                     precision: 9,  scale: 2
    t.decimal  "S_7",                                     precision: 9,  scale: 2
    t.decimal  "S_8",                                     precision: 9,  scale: 2
    t.decimal  "S_9",                                     precision: 9,  scale: 2
    t.decimal  "S_10",                                    precision: 9,  scale: 2
    t.decimal  "S_11",                                    precision: 9,  scale: 2
    t.decimal  "S_12",                                    precision: 9,  scale: 2
    t.decimal  "S_B1",                                    precision: 9,  scale: 2
    t.decimal  "S_B2",                                    precision: 9,  scale: 2
    t.decimal  "S_B3",                                    precision: 9,  scale: 2
    t.decimal  "S_B4",                                    precision: 9,  scale: 2
    t.decimal  "S_B5",                                    precision: 9,  scale: 2
    t.decimal  "S_B6",                                    precision: 9,  scale: 2
    t.decimal  "S_B7",                                    precision: 9,  scale: 2
    t.decimal  "S_B8",                                    precision: 9,  scale: 2
    t.decimal  "S_B9",                                    precision: 9,  scale: 2
    t.decimal  "S_B10",                                   precision: 9,  scale: 2
    t.decimal  "S_B11",                                   precision: 9,  scale: 2
    t.decimal  "S_B12",                                   precision: 9,  scale: 2
    t.decimal  "S_LSTYR_1",                               precision: 9,  scale: 2
    t.decimal  "S_LSTYR_2",                               precision: 9,  scale: 2
    t.decimal  "S_LSTYR_3",                               precision: 9,  scale: 2
    t.decimal  "S_LSTYR_4",                               precision: 9,  scale: 2
    t.decimal  "S_LSTYR_5",                               precision: 9,  scale: 2
    t.decimal  "S_LSTYR_6",                               precision: 9,  scale: 2
    t.decimal  "S_LSTYR_7",                               precision: 9,  scale: 2
    t.decimal  "S_LSTYR_8",                               precision: 9,  scale: 2
    t.decimal  "S_LSTYR_9",                               precision: 9,  scale: 2
    t.decimal  "S_LSTYR_10",                              precision: 9,  scale: 2
    t.decimal  "S_LSTYR_11",                              precision: 9,  scale: 2
    t.decimal  "S_LSTYR_12",                              precision: 9,  scale: 2
    t.string   "S_OFFICE_PHONE",         limit: 20
    t.decimal  "S_HOURS_WEEK",                            precision: 15, scale: 2
    t.integer  "S_FACE",                 limit: 1
    t.integer  "S_TYPE",                 limit: 1
    t.text     "S_NOTES"
    t.string   "S_DEPT",                 limit: 15
    t.decimal  "S_HOURS_ACT",                             precision: 15, scale: 2
    t.string   "S_TEAM",                 limit: 10
    t.decimal  "S_PLAN_WEEK",                             precision: 15, scale: 2
    t.decimal  "S_PLAN_MONDAY",                           precision: 15, scale: 2
    t.decimal  "S_PLAN_TUESDAY",                          precision: 15, scale: 2
    t.decimal  "S_PLAN_WEDNESDAY",                        precision: 15, scale: 2
    t.decimal  "S_PLAN_THURSDAY",                         precision: 15, scale: 2
    t.decimal  "S_PLAN_FRIDAY",                           precision: 15, scale: 2
    t.integer  "S_REQ_TIME",             limit: 1
    t.decimal  "S_ACT_MONDAY",                            precision: 9,  scale: 2
    t.decimal  "S_ACT_TUESDAY",                           precision: 9,  scale: 2
    t.decimal  "S_ACT_WEDNESDAY",                         precision: 9,  scale: 2
    t.decimal  "S_ACT_THURSDAY",                          precision: 9,  scale: 2
    t.decimal  "S_ACT_FRIDAY",                            precision: 9,  scale: 2
    t.decimal  "S_ACT_SATURDAY",                          precision: 9,  scale: 2
    t.decimal  "S_ACT_SUNDAY",                            precision: 9,  scale: 2
    t.decimal  "S_PLAN_SATURDAY",                         precision: 9,  scale: 2
    t.decimal  "S_PLAN_SUNDAY",                           precision: 9,  scale: 2
    t.integer  "S_REQ_PLAN",             limit: 1
    t.string   "S_HOME_PHONE",           limit: 12
    t.decimal  "S_OT_COST_RATE",                          precision: 9,  scale: 2
    t.decimal  "S_OT_BILL_RATE",                          precision: 9,  scale: 2
    t.string   "S_TITLE",                limit: 40
    t.integer  "S_ACTIVE",               limit: 1
    t.string   "S_EMAIL",                limit: 100
    t.string   "S_BACKUP_PERSON",        limit: 4
    t.integer  "S_FREELANCE",            limit: 1
    t.integer  "S_PERIOD",               limit: 1
    t.integer  "S_TIME_COP",             limit: 1
    t.text     "S_EMAIL_SIG"
    t.integer  "S_SUPERVISOR",           limit: 1
    t.string   "S_FAX",                  limit: 20
    t.string   "S_WEB_ACCESS",           limit: 100
    t.text     "S_SMTP_AUTH_ID"
    t.text     "S_SMTP_AUTH_PW"
    t.string   "S_VENDOR",               limit: 10
    t.string   "S_ADDED_BY",             limit: 4
    t.datetime "S_ADDED_WHEN"
    t.string   "S_EDITED_BY",            limit: 4
    t.datetime "S_EDITED_WHEN"
    t.date     "S_DATE_HIRED"
    t.date     "S_DATE_TERM"
    t.binary   "S_OA",                   limit: 16777215
    t.string   "S_APP_VERSION",          limit: 15
    t.integer  "S_APPR_EXEMPT",          limit: 1
    t.integer  "S_SW_UPDATE_NOW",        limit: 1
    t.integer  "S_HOMEBASE_EMAIL",       limit: 1
    t.integer  "S_JOBR",                 limit: 1
    t.integer  "S_WEB_ACCESS1",          limit: 1
    t.integer  "S_WEB_ACCESS2",          limit: 1
    t.integer  "S_WEB_ACCESS3",          limit: 1
    t.integer  "S_WEB_ACCESS4",          limit: 1
    t.integer  "S_WEB_ACCESS5",          limit: 1
    t.integer  "S_WEB_ACCESS6",          limit: 1
    t.integer  "S_WEB_ACCESS7",          limit: 1
    t.integer  "S_WEB_ACCESS8",          limit: 1
    t.integer  "S_WEB_ACCESS9",          limit: 1
    t.integer  "S_WEB_ACCESS10",         limit: 1
    t.integer  "S_WEB_ACCESS11",         limit: 1
    t.integer  "S_WEB_ACCESS12",         limit: 1
    t.integer  "S_SCHEDULABLE",          limit: 1
    t.integer  "S_WINNERS_OPT_IN",       limit: 1
    t.integer  "S_TIME_POINT_OPT_IN",    limit: 1
    t.integer  "S_SEND_CHIRPS",          limit: 1
    t.string   "S_SEND_CHIRPS_TO",       limit: 100
    t.integer  "S_CSIDE_STATUS_REPORT",  limit: 1
    t.integer  "S_CSIDE_TRAFFIC_REPORT", limit: 1
    t.integer  "S_CSIDE_JOBS",           limit: 1
    t.integer  "S_CSIDE_JOB_REQUESTS",   limit: 1
    t.integer  "S_CSIDE_APPR_ESTS",      limit: 1
    t.integer  "S_CSIDE_APPR_SCHEDS",    limit: 1
    t.integer  "S_CSIDE_APPR_CHANGES",   limit: 1
    t.integer  "S_CSIDE_APPR_ART",       limit: 1
    t.integer  "S_CSIDE_PROPOSALS",      limit: 1
    t.integer  "S_GETS_HOMEBASE_EMAILS", limit: 1
    t.integer  "S_CSIDE_RATE_JOBS",      limit: 1
    t.string   "S_CLIENT_NUM",           limit: 10
    t.integer  "S_CSIDE_APPR_CREBRIEF",  limit: 1
    t.integer  "S_WEB_ACCESS_SUSPENDED", limit: 1
    t.text     "S_CSIDE_CLIENTS"
    t.date     "S_WEB_ACCESS_EXPIRES"
    t.integer  "S_EMAIL_OVERDUES",       limit: 1
    t.string   "S_CAL1_KEY",             limit: 10
    t.string   "S_CAL2_KEY",             limit: 10
    t.string   "S_CAL3_KEY",             limit: 10
    t.string   "S_CAL4_KEY",             limit: 10
    t.string   "S_CAL5_KEY",             limit: 10
    t.text     "S_CSIDE_TYPE_CAT"
  end

  add_index "staff", ["S_DEPT"], name: "S_DEPT", using: :btree
  add_index "staff", ["S_INITIALS"], name: "S_INITIALS", using: :btree
  add_index "staff", ["S_NAME"], name: "S_NAME", using: :btree
  add_index "staff", ["S_SEQ"], name: "S_SEQ", unique: true, using: :btree
  add_index "staff", ["S_TASK"], name: "S_TASK", using: :btree
  add_index "staff", ["S_TEAM"], name: "S_TEAM", using: :btree

  create_table "statements", primary_key: "ST_SEQ", force: true do |t|
    t.date    "ST_DATE"
    t.string  "ST_AR_NUM",     limit: 10
    t.string  "ST_CK_NUM",     limit: 10
    t.string  "ST_CLIENT_NUM", limit: 10
    t.string  "ST_TYPE",       limit: 10
    t.string  "ST_JOB_NUM",    limit: 10
    t.decimal "ST_CHARGE_AMT",            precision: 9, scale: 2
    t.decimal "ST_PMT_AMT",               precision: 9, scale: 2
    t.string  "ST_PO_NUM",     limit: 10
    t.string  "ST_DIVISION",   limit: 10
  end

  add_index "statements", ["ST_SEQ"], name: "ST_SEQ", unique: true, using: :btree

  create_table "stations", primary_key: "PUB_SEQ", force: true do |t|
    t.string   "PUB_CODE",         limit: 20
    t.string   "PUB_NAME",         limit: 40
    t.string   "PUB_REP",          limit: 40
    t.string   "PUB_PHONE",        limit: 20
    t.string   "PUB_ADDRESS1",     limit: 40
    t.string   "PUB_ADDRESS2",     limit: 40
    t.string   "PUB_ADDRESS3",     limit: 40
    t.string   "PUB_ADDRESS4",     limit: 40
    t.text     "PUB_NOTE"
    t.string   "PUB_FAX",          limit: 15
    t.string   "PUB_VENDOR_NUM",   limit: 10
    t.decimal  "PUB_COMM_PC",                 precision: 9, scale: 2
    t.string   "PUB_TYPE",         limit: 2
    t.string   "PUB_REP_ADDRESS1", limit: 40
    t.string   "PUB_REP_ADDRESS2", limit: 40
    t.string   "PUB_REP_ADDRESS3", limit: 40
    t.string   "PUB_REP_ADDRESS4", limit: 40
    t.string   "PUB_REP_ADDRESS5", limit: 40
    t.string   "PUB_ISSUE_DATE",   limit: 30
    t.string   "PUB_CLOSE_DATE",   limit: 30
    t.string   "PUB_CIRC",         limit: 20
    t.string   "PUB_MARKET",       limit: 40
    t.string   "PUB_ADDED_BY",     limit: 4
    t.datetime "PUB_ADDED_WHEN"
    t.string   "PUB_EDITED_BY",    limit: 4
    t.datetime "PUB_EDITED_WHEN"
  end

  add_index "stations", ["PUB_CODE"], name: "PUB_CODE", using: :btree
  add_index "stations", ["PUB_NAME"], name: "PUB_NAME", using: :btree
  add_index "stations", ["PUB_SEQ"], name: "PUB_SEQ", unique: true, using: :btree
  add_index "stations", ["PUB_TYPE"], name: "PUB_TYPE", using: :btree
  add_index "stations", ["PUB_VENDOR_NUM"], name: "PUB_VENDOR_NUM", using: :btree

  create_table "status_codes", primary_key: "STATUS_SEQ", force: true do |t|
    t.decimal  "STATUS_NUM",                      precision: 9,  scale: 0
    t.string   "STATUS_DESC",         limit: 40
    t.string   "STATUS_ALERT",        limit: 240
    t.integer  "STATUS_STOP",         limit: 1
    t.integer  "STATUS_PROD_ALERT",   limit: 1
    t.integer  "STATUS_BILL_ALERT",   limit: 1
    t.string   "STATUS_ALERT_BUTTON", limit: 20
    t.string   "STATUS_CAT",          limit: 20
    t.text     "STATUS_MAIL_TO"
    t.text     "STATUS_MAIL_MSG"
    t.string   "STATUS_MAIL_CC",      limit: 40
    t.string   "STATUS_MAIL_BCC",     limit: 40
    t.string   "STATUS_ADDED_BY",     limit: 4
    t.datetime "STATUS_ADDED_WHEN"
    t.string   "STATUS_EDITED_BY",    limit: 4
    t.datetime "STATUS_EDITED_WHEN"
    t.decimal  "STATUS_COLOR",                    precision: 15, scale: 0
    t.integer  "STATUS_PROD",         limit: 1
    t.integer  "STATUS_ACCT",         limit: 1
    t.integer  "STATUS_ACTIVE",       limit: 1
  end

  add_index "status_codes", ["STATUS_NUM"], name: "STATUS_NUM", using: :btree
  add_index "status_codes", ["STATUS_SEQ"], name: "STATUS_SEQ", unique: true, using: :btree

  create_table "sub_classes", primary_key: "SUB_SEQ", force: true do |t|
    t.decimal  "SUB_NUM",                    precision: 15, scale: 0
    t.string   "SUB_DESC",        limit: 30
    t.string   "SUB_ADDED_BY",    limit: 4
    t.datetime "SUB_ADDED_WHEN"
    t.string   "SUB_EDITED_BY",   limit: 4
    t.datetime "SUB_EDITED_WHEN"
  end

  add_index "sub_classes", ["SUB_NUM"], name: "SUB_NUM", using: :btree
  add_index "sub_classes", ["SUB_SEQ"], name: "SUB_SEQ", unique: true, using: :btree

  create_table "task_table", primary_key: "T_SEQ", force: true do |t|
    t.string   "T_TASK",            limit: 4
    t.string   "T_NAME",            limit: 50
    t.integer  "T_TAX1",            limit: 1
    t.integer  "T_TAX2",            limit: 1
    t.decimal  "T_MARKUP",                           precision: 9,  scale: 2
    t.decimal  "T_BILL_RATE",                        precision: 9,  scale: 2
    t.decimal  "T_DGL",                              precision: 15, scale: 2
    t.decimal  "T_CGL",                              precision: 15, scale: 2
    t.decimal  "T_GROUP",                            precision: 9,  scale: 0
    t.decimal  "T_SORT",                             precision: 9,  scale: 0
    t.decimal  "T_LEAD_TIME",                        precision: 9,  scale: 0
    t.integer  "T_KIND",            limit: 1
    t.decimal  "T_HOURS",                            precision: 9,  scale: 2
    t.decimal  "T_COST",                             precision: 9,  scale: 2
    t.string   "T_PC",              limit: 10
    t.text     "T_DESC"
    t.string   "T_CHAR2",           limit: 20
    t.string   "T_CHAR3",           limit: 1
    t.string   "T_CHAR4",           limit: 1
    t.string   "T_CHAR5",           limit: 1
    t.string   "T_CHAR6",           limit: 1
    t.string   "T_CHAR7",           limit: 1
    t.decimal  "T_UNBILLABLE",                       precision: 9,  scale: 0
    t.decimal  "T_SORT_PROD",                        precision: 9,  scale: 0
    t.decimal  "T_PREF3",                            precision: 9,  scale: 0
    t.decimal  "T_PREF4",                            precision: 9,  scale: 0
    t.decimal  "T_AMT1",                             precision: 9,  scale: 0
    t.decimal  "T_AMT2",                             precision: 9,  scale: 0
    t.binary   "T_ICON",            limit: 16777215
    t.string   "T_ROLL_UP",         limit: 4
    t.integer  "T_ACTIVE",          limit: 1
    t.integer  "T_COMMISSIONABLE",  limit: 1
    t.decimal  "T_COMM_RATE_AE",                     precision: 9,  scale: 2
    t.decimal  "T_COMM_RATE_BIZ",                    precision: 9,  scale: 2
    t.integer  "T_REQ_APPROVAL",    limit: 1
    t.string   "T_REQ_APPROVAL_BY", limit: 10
    t.string   "T_ADDED_BY",        limit: 4
    t.datetime "T_ADDED_WHEN"
    t.string   "T_EDITED_BY",       limit: 4
    t.datetime "T_EDITED_WHEN"
    t.integer  "T_PAYROLL",         limit: 1
    t.integer  "T_UTIL_CAT",        limit: 1
    t.text     "T_TAGS"
    t.integer  "T_CLIENT_SCHED",    limit: 1
    t.integer  "T_MILESTONE",       limit: 1
    t.integer  "T_TAX3",            limit: 1
    t.binary   "T_SMALL_ICON",      limit: 16777215
    t.integer  "T_ALWAYS_DISCUSS",  limit: 1
    t.integer  "T_NO_TIME",         limit: 1
    t.decimal  "T_STATUS_FINISHED",                  precision: 9,  scale: 0
  end

  add_index "task_table", ["T_SEQ"], name: "T_SEQ", unique: true, using: :btree
  add_index "task_table", ["T_TASK"], name: "T_TASK", using: :btree

  create_table "temp_tasks", primary_key: "TT_SEQ", force: true do |t|
    t.string   "TT_TYPE",        limit: 15
    t.string   "TT_TASK",        limit: 4
    t.decimal  "TT_EST1",                   precision: 15, scale: 2
    t.decimal  "TT_LEAD1",                  precision: 9,  scale: 0
    t.string   "TT_NAME",        limit: 40
    t.decimal  "TT_EST2",                   precision: 15, scale: 2
    t.decimal  "TT_LEAD2",                  precision: 9,  scale: 0
    t.decimal  "TT_EST3",                   precision: 15, scale: 2
    t.decimal  "TT_LEAD3",                  precision: 9,  scale: 0
    t.decimal  "TT_EST_HOURS",              precision: 9,  scale: 2
    t.text     "TT_TASK_DESC"
    t.string   "TT_ADDED_BY",    limit: 4
    t.datetime "TT_ADDED_WHEN"
    t.string   "TT_EDITED_BY",   limit: 4
    t.datetime "TT_EDITED_WHEN"
  end

  add_index "temp_tasks", ["TT_SEQ"], name: "TT_SEQ", unique: true, using: :btree
  add_index "temp_tasks", ["TT_TASK"], name: "TT_TASK", using: :btree
  add_index "temp_tasks", ["TT_TYPE"], name: "TT_TYPE", using: :btree

  create_table "thoughts", primary_key: "MSG_SEQ", force: true do |t|
    t.date   "MSG_DATE"
    t.string "MSG_TEXT",           limit: 100
    t.string "MSG_1",              limit: 100
    t.string "MSG_DAILY_INFO_CTR", limit: 80
  end

  add_index "thoughts", ["MSG_DATE"], name: "MSG_DATE", using: :btree
  add_index "thoughts", ["MSG_SEQ"], name: "MSG_SEQ", unique: true, using: :btree

  create_table "time_card", primary_key: "TIME_SEQ", force: true do |t|
    t.time    "TIME_START1"
    t.time    "TIME_START2"
    t.time    "TIME_START3"
    t.time    "TIME_START4"
    t.time    "TIME_START5"
    t.time    "TIME_START6"
    t.time    "TIME_START7"
    t.time    "TIME_START8"
    t.time    "TIME_START9"
    t.time    "TIME_START10"
    t.time    "TIME_START11"
    t.time    "TIME_START12"
    t.time    "TIME_START13"
    t.time    "TIME_START14"
    t.time    "TIME_START15"
    t.time    "TIME_START16"
    t.time    "TIME_START17"
    t.time    "TIME_START18"
    t.time    "TIME_START19"
    t.time    "TIME_START20"
    t.time    "TIME_END1"
    t.time    "TIME_END2"
    t.time    "TIME_END3"
    t.time    "TIME_END4"
    t.time    "TIME_END5"
    t.time    "TIME_END6"
    t.time    "TIME_END7"
    t.time    "TIME_END8"
    t.time    "TIME_END9"
    t.time    "TIME_END10"
    t.time    "TIME_END11"
    t.time    "TIME_END12"
    t.time    "TIME_END13"
    t.time    "TIME_END14"
    t.time    "TIME_END15"
    t.time    "TIME_END16"
    t.time    "TIME_END17"
    t.time    "TIME_END18"
    t.time    "TIME_END19"
    t.time    "TIME_END20"
    t.string  "TIME_JOB1",       limit: 10
    t.string  "TIME_JOB2",       limit: 10
    t.string  "TIME_JOB3",       limit: 10
    t.string  "TIME_JOB4",       limit: 10
    t.string  "TIME_JOB5",       limit: 10
    t.string  "TIME_JOB6",       limit: 10
    t.string  "TIME_JOB7",       limit: 10
    t.string  "TIME_JOB8",       limit: 10
    t.string  "TIME_JOB9",       limit: 10
    t.string  "TIME_JOB10",      limit: 10
    t.string  "TIME_JOB11",      limit: 10
    t.string  "TIME_JOB12",      limit: 10
    t.string  "TIME_JOB13",      limit: 10
    t.string  "TIME_JOB14",      limit: 10
    t.string  "TIME_JOB15",      limit: 10
    t.string  "TIME_JOB16",      limit: 10
    t.string  "TIME_JOB17",      limit: 10
    t.string  "TIME_JOB18",      limit: 10
    t.string  "TIME_JOB19",      limit: 10
    t.string  "TIME_JOB20",      limit: 10
    t.string  "TIME_TASK1",      limit: 4
    t.string  "TIME_TASK2",      limit: 4
    t.string  "TIME_TASK3",      limit: 4
    t.string  "TIME_TASK4",      limit: 4
    t.string  "TIME_TASK5",      limit: 4
    t.string  "TIME_TASK6",      limit: 4
    t.string  "TIME_TASK7",      limit: 4
    t.string  "TIME_TASK8",      limit: 4
    t.string  "TIME_TASK9",      limit: 4
    t.string  "TIME_TASK10",     limit: 4
    t.string  "TIME_TASK11",     limit: 4
    t.string  "TIME_TASK12",     limit: 4
    t.string  "TIME_TASK13",     limit: 4
    t.string  "TIME_TASK14",     limit: 4
    t.string  "TIME_TASK15",     limit: 4
    t.string  "TIME_TASK16",     limit: 4
    t.string  "TIME_TASK17",     limit: 4
    t.string  "TIME_TASK18",     limit: 4
    t.string  "TIME_TASK19",     limit: 4
    t.string  "TIME_TASK20",     limit: 4
    t.decimal "TIME_HOURS1",                      precision: 9, scale: 2
    t.decimal "TIME_HOURS2",                      precision: 9, scale: 2
    t.decimal "TIME_HOURS3",                      precision: 9, scale: 2
    t.decimal "TIME_HOURS4",                      precision: 9, scale: 2
    t.decimal "TIME_HOURS5",                      precision: 9, scale: 2
    t.decimal "TIME_HOURS6",                      precision: 9, scale: 2
    t.decimal "TIME_HOURS7",                      precision: 9, scale: 2
    t.decimal "TIME_HOURS8",                      precision: 9, scale: 2
    t.decimal "TIME_HOURS9",                      precision: 9, scale: 2
    t.decimal "TIME_HOURS10",                     precision: 9, scale: 2
    t.decimal "TIME_HOURS11",                     precision: 9, scale: 2
    t.decimal "TIME_HOURS12",                     precision: 9, scale: 2
    t.decimal "TIME_HOURS13",                     precision: 9, scale: 2
    t.decimal "TIME_HOURS14",                     precision: 9, scale: 2
    t.decimal "TIME_HOURS15",                     precision: 9, scale: 2
    t.decimal "TIME_HOURS16",                     precision: 9, scale: 2
    t.decimal "TIME_HOURS17",                     precision: 9, scale: 2
    t.decimal "TIME_HOURS18",                     precision: 9, scale: 2
    t.decimal "TIME_HOURS19",                     precision: 9, scale: 2
    t.decimal "TIME_HOURS20",                     precision: 9, scale: 2
    t.string  "TIME_DESC1",      limit: 40
    t.string  "TIME_DESC2",      limit: 40
    t.string  "TIME_DESC3",      limit: 40
    t.string  "TIME_DESC4",      limit: 40
    t.string  "TIME_DESC5",      limit: 40
    t.string  "TIME_DESC6",      limit: 40
    t.string  "TIME_DESC7",      limit: 40
    t.string  "TIME_DESC8",      limit: 40
    t.string  "TIME_DESC9",      limit: 40
    t.string  "TIME_DESC10",     limit: 40
    t.string  "TIME_DESC11",     limit: 40
    t.string  "TIME_DESC12",     limit: 40
    t.string  "TIME_DESC13",     limit: 40
    t.string  "TIME_DESC14",     limit: 40
    t.string  "TIME_DESC15",     limit: 40
    t.string  "TIME_DESC16",     limit: 40
    t.string  "TIME_DESC17",     limit: 40
    t.string  "TIME_DESC18",     limit: 40
    t.string  "TIME_DESC19",     limit: 40
    t.string  "TIME_DESC20",     limit: 40
    t.boolean "TIME_BILLABLE1"
    t.boolean "TIME_BILLABLE2"
    t.boolean "TIME_BILLABLE3"
    t.boolean "TIME_BILLABLE4"
    t.boolean "TIME_BILLABLE5"
    t.boolean "TIME_BILLABLE6"
    t.boolean "TIME_BILLABLE7"
    t.boolean "TIME_BILLABLE8"
    t.boolean "TIME_BILLABLE9"
    t.boolean "TIME_BILLABLE10"
    t.boolean "TIME_BILLABLE11"
    t.boolean "TIME_BILLABLE12"
    t.boolean "TIME_BILLABLE13"
    t.boolean "TIME_BILLABLE14"
    t.boolean "TIME_BILLABLE15"
    t.boolean "TIME_BILLABLE16"
    t.boolean "TIME_BILLABLE17"
    t.boolean "TIME_BILLABLE18"
    t.boolean "TIME_BILLABLE19"
    t.boolean "TIME_BILLABLE20"
    t.string  "TIME_STAFF",      limit: 10
    t.date    "TIME_DATE"
    t.string  "TIME_KEY",        limit: 20
    t.boolean "TIME_POSTED"
    t.decimal "TIME_OT1",                         precision: 9, scale: 0
    t.decimal "TIME_OT2",                         precision: 9, scale: 0
    t.decimal "TIME_OT3",                         precision: 9, scale: 0
    t.decimal "TIME_OT4",                         precision: 9, scale: 0
    t.decimal "TIME_OT5",                         precision: 9, scale: 0
    t.decimal "TIME_OT6",                         precision: 9, scale: 0
    t.decimal "TIME_OT7",                         precision: 9, scale: 0
    t.decimal "TIME_OT8",                         precision: 9, scale: 0
    t.decimal "TIME_OT9",                         precision: 9, scale: 0
    t.decimal "TIME_OT10",                        precision: 9, scale: 0
    t.decimal "TIME_OT11",                        precision: 9, scale: 0
    t.decimal "TIME_OT12",                        precision: 9, scale: 0
    t.decimal "TIME_OT13",                        precision: 9, scale: 0
    t.decimal "TIME_OT14",                        precision: 9, scale: 0
    t.decimal "TIME_OT15",                        precision: 9, scale: 0
    t.decimal "TIME_OT16",                        precision: 9, scale: 0
    t.decimal "TIME_OT17",                        precision: 9, scale: 0
    t.decimal "TIME_OT18",                        precision: 9, scale: 0
    t.decimal "TIME_OT19",                        precision: 9, scale: 0
    t.decimal "TIME_OT20",                        precision: 9, scale: 0
    t.binary  "TIME_CARD_LIST",  limit: 16777215
    t.string  "TIME_NEW",        limit: 50
  end

  add_index "time_card", ["TIME_DATE"], name: "TIME_DATE", using: :btree
  add_index "time_card", ["TIME_KEY"], name: "TIME_KEY", using: :btree
  add_index "time_card", ["TIME_SEQ"], name: "TIME_SEQ", unique: true, using: :btree
  add_index "time_card", ["TIME_STAFF"], name: "TIME_STAFF", using: :btree

  create_table "time_import", primary_key: "TM_SEQ", force: true do |t|
    t.date    "TM_DATE"
    t.string  "TM_JOB_NUM",       limit: 10
    t.string  "TM_TASK",          limit: 4
    t.decimal "TM_HOURS",                    precision: 15, scale: 2
    t.string  "TM_STAFF",         limit: 10
    t.text    "TM_DESC"
    t.decimal "TM_BAD",                      precision: 15, scale: 2
    t.decimal "TM_COST_RATE",                precision: 15, scale: 2
    t.decimal "TM_BILL_RATE",                precision: 15, scale: 2
    t.string  "TM_CLIENT_NUM",    limit: 10
    t.integer "TM_BILLABLE",      limit: 1
    t.integer "TM_PERIOD",        limit: 1
    t.integer "TM_PALM_ID"
    t.integer "TM_PALM_CATEGORY", limit: 1
    t.string  "TM_PALM_ATTRIBS",  limit: 4
    t.integer "TM_OT",            limit: 1
  end

  add_index "time_import", ["TM_DATE"], name: "TM_DATE", using: :btree
  add_index "time_import", ["TM_JOB_NUM"], name: "TM_JOB_NUM", using: :btree
  add_index "time_import", ["TM_PALM_ID"], name: "TM_PALM_ID", using: :btree
  add_index "time_import", ["TM_SEQ"], name: "TM_SEQ", unique: true, using: :btree
  add_index "time_import", ["TM_STAFF"], name: "TM_STAFF", using: :btree
  add_index "time_import", ["TM_TASK"], name: "TM_TASK", using: :btree

  create_table "timers", primary_key: "TIMER_SEQ", force: true do |t|
    t.string   "TIMER_INITIALS",     limit: 4
    t.datetime "TIMER_START"
    t.datetime "TIMER_PAUSED"
    t.datetime "TIMER_RESUMED"
    t.decimal  "TIMER_ELAPSED_SECS",            precision: 15, scale: 0
    t.string   "TIMER_JOB_NUM",      limit: 15
    t.string   "TIMER_TASK",         limit: 4
    t.text     "TIMER_NOTE"
  end

  add_index "timers", ["TIMER_INITIALS"], name: "TIMER_INITIALS", using: :btree
  add_index "timers", ["TIMER_SEQ"], name: "TIMER_SEQ", unique: true, using: :btree

  create_table "un_checks", primary_key: "UNCKS_SEQ", force: true do |t|
    t.decimal "UNCKS_DEBIT",                precision: 9, scale: 2
    t.decimal "UNCKS_CREDIT",               precision: 9, scale: 2
    t.text    "UNCKS_DESC"
    t.string  "UNCKS_REF",       limit: 15
    t.integer "UNCKS_TEMP_REC",  limit: 1
    t.string  "UNCKS_PAY_BATCH", limit: 10
    t.integer "UNCKS_SOURCE",    limit: 1
    t.decimal "UNCKS_RECONCILE",            precision: 9, scale: 2
    t.date    "UNCKS_DATE"
    t.decimal "UNCKS_AC_NUM",               precision: 9, scale: 2
  end

  add_index "un_checks", ["UNCKS_SEQ"], name: "UNCKS_SEQ", unique: true, using: :btree

  create_table "user_info_ctr", primary_key: "UI_SEQ", force: true do |t|
    t.string "UI_WORK",   limit: 4
    t.string "UI_PROC1",  limit: 100
    t.string "UI_PROC2",  limit: 100
    t.string "UI_PROC3",  limit: 100
    t.string "UI_PROC4",  limit: 100
    t.string "UI_PROC5",  limit: 100
    t.string "UI_PROC6",  limit: 100
    t.string "UI_LABEL1", limit: 25
    t.string "UI_LABEL2", limit: 25
    t.string "UI_LABEL3", limit: 25
    t.string "UI_LABEL4", limit: 25
    t.string "UI_LABEL5", limit: 25
    t.string "UI_LABEL6", limit: 25
  end

  add_index "user_info_ctr", ["UI_SEQ"], name: "UI_SEQ", unique: true, using: :btree
  add_index "user_info_ctr", ["UI_WORK"], name: "UI_WORK", using: :btree

  create_table "user_windows", primary_key: "UW_SEQ", force: true do |t|
    t.string "UW_WORK",                     limit: 4
    t.string "UW_wPopAR",                   limit: 100
    t.string "UW_wPopCalendar",             limit: 100
    t.string "UW_wPopCampaigns",            limit: 100
    t.string "UW_wPopChargeItems",          limit: 100
    t.string "UW_wPopClients",              limit: 100
    t.string "UW_wPopCOA",                  limit: 100
    t.string "UW_wPopContacts",             limit: 100
    t.string "UW_wPopDept",                 limit: 100
    t.string "UW_wPopGroups",               limit: 100
    t.string "UW_wPopJobs",                 limit: 100
    t.string "UW_wPopJobTasks",             limit: 100
    t.string "UW_wPopPC",                   limit: 100
    t.string "UW_wPopPOs",                  limit: 100
    t.string "UW_wPopProjects",             limit: 100
    t.string "UW_wPopStaff",                limit: 100
    t.string "UW_wPopStatus",               limit: 100
    t.string "UW_wPopTaskTable",            limit: 100
    t.string "UW_wPopTraffic",              limit: 100
    t.string "UW_wPopVendors",              limit: 100
    t.string "UW_wPopSpecSheets",           limit: 100
    t.string "UW_wInOutBoard",              limit: 100
    t.string "UW_wSmartTimer",              limit: 20
    t.string "UW_wTimeCard",                limit: 100
    t.string "UW_wTimeCardWeek",            limit: 100
    t.string "UW_wUpdateTraffic",           limit: 100
    t.string "UW_wWorkToDo",                limit: 100
    t.string "UW_wDailyJobStatus",          limit: 100
    t.string "UW_wProdPlanner",             limit: 100
    t.string "UW_wWeeklyTraffic",           limit: 100
    t.string "UW_wTaskMaster",              limit: 100
    t.string "UW_wJobs",                    limit: 100
    t.string "UW_wJobSchedule",             limit: 100
    t.string "UW_shortcut1",                limit: 100
    t.string "UW_shortcut2",                limit: 100
    t.string "UW_shortcut3",                limit: 100
    t.string "UW_shortcut4",                limit: 100
    t.string "UW_shortcut5",                limit: 100
    t.string "UW_shortcut6",                limit: 100
    t.string "UW_shortcut7",                limit: 100
    t.string "UW_shortcut8",                limit: 100
    t.string "UW_shortcut9",                limit: 100
    t.string "UW_shortcut10",               limit: 100
    t.string "UW_shortcut11",               limit: 100
    t.string "UW_shortcut12",               limit: 100
    t.string "UW_wClientTrafficController", limit: 100
    t.string "UW_wJobDiary",                limit: 100
    t.string "UW_wAR",                      limit: 100
    t.string "UW_wCheckbook",               limit: 100
    t.string "UW_wGL",                      limit: 100
    t.string "UW_wPO",                      limit: 100
    t.string "UW_wMO",                      limit: 100
    t.string "UW_wTimeSheets",              limit: 100
    t.string "UW_wPayments",                limit: 100
    t.string "UW_wCalendar",                limit: 100
    t.string "UW_wCollectionMgr",           limit: 100
    t.string "UW_wProjectManager",          limit: 100
    t.string "UW_wTimeCardClick",           limit: 100
    t.string "UW_wCreativeDashboard",       limit: 100
    t.string "UW_wAEDashboard",             limit: 100
    t.string "UW_wAcctDashboard",           limit: 100
    t.string "UW_wExecDashboard",           limit: 100
    t.string "UW_wBillingHotSheet",         limit: 100
    t.string "UW_wTimeCardGlance",          limit: 100
    t.string "UW_wProductionCalendar",      limit: 100
    t.string "UW_wProdCalendar",            limit: 100
    t.string "UW_wMediaCalendar",           limit: 100
    t.string "UW_wExpenseReport",           limit: 100
    t.string "UW_wJobEstimate",             limit: 100
    t.string "UW_wTimeCardHourly",          limit: 100
    t.string "UW_wJobCreativeBrief",        limit: 100
  end

  add_index "user_windows", ["UW_SEQ"], name: "UW_SEQ", unique: true, using: :btree
  add_index "user_windows", ["UW_WORK"], name: "UW_WORK", using: :btree

  create_table "vendors", primary_key: "V_SEQ", force: true do |t|
    t.string   "V_NUM",          limit: 10
    t.string   "V_ORG",          limit: 50
    t.string   "V_NOTE1",        limit: 50
    t.string   "V_STREET",       limit: 50
    t.string   "V_CITY",         limit: 50
    t.string   "V_NOTE2",        limit: 50
    t.string   "V_ZIP",          limit: 50
    t.string   "V_CONTACT",      limit: 50
    t.string   "V_PHONE",        limit: 20
    t.decimal  "V_YTD",                      precision: 15, scale: 2
    t.decimal  "V_MARKUP",                   precision: 15, scale: 2
    t.string   "V_NOTE3",        limit: 55
    t.string   "V_TASK",         limit: 4
    t.string   "V_TYPE",         limit: 20
    t.boolean  "V_OPEN"
    t.boolean  "V_ALLOCATE"
    t.string   "V_TAX_ID",       limit: 15
    t.string   "V_ACCT_NUM",     limit: 10
    t.decimal  "V_CURRN",                    precision: 15, scale: 2
    t.decimal  "V_30DAY",                    precision: 15, scale: 2
    t.decimal  "V_60DAY",                    precision: 15, scale: 2
    t.decimal  "V_90DAY",                    precision: 15, scale: 2
    t.decimal  "V_BALN",                     precision: 15, scale: 2
    t.date     "V_LAST_AP"
    t.string   "V_ADDED_BY",     limit: 3
    t.date     "V_ADDED_WHEN"
    t.time     "V_TIME"
    t.decimal  "V_1",                        precision: 15, scale: 2
    t.decimal  "V_2",                        precision: 15, scale: 2
    t.decimal  "V_3",                        precision: 15, scale: 2
    t.decimal  "V_4",                        precision: 15, scale: 2
    t.decimal  "V_5",                        precision: 15, scale: 2
    t.decimal  "V_6",                        precision: 15, scale: 2
    t.decimal  "V_7",                        precision: 15, scale: 2
    t.decimal  "V_8",                        precision: 15, scale: 2
    t.decimal  "V_9",                        precision: 15, scale: 2
    t.decimal  "V_10",                       precision: 15, scale: 2
    t.decimal  "V_11",                       precision: 15, scale: 2
    t.decimal  "V_12",                       precision: 15, scale: 2
    t.decimal  "V_L1",                       precision: 15, scale: 2
    t.decimal  "V_L2",                       precision: 15, scale: 2
    t.decimal  "V_L3",                       precision: 15, scale: 2
    t.decimal  "V_L4",                       precision: 15, scale: 2
    t.decimal  "V_L5",                       precision: 15, scale: 2
    t.decimal  "V_L6",                       precision: 15, scale: 2
    t.decimal  "V_L7",                       precision: 15, scale: 2
    t.decimal  "V_L8",                       precision: 15, scale: 2
    t.decimal  "V_L9",                       precision: 15, scale: 2
    t.decimal  "V_L10",                      precision: 15, scale: 2
    t.decimal  "V_L11",                      precision: 15, scale: 2
    t.decimal  "V_L12",                      precision: 15, scale: 2
    t.decimal  "V_TERMS1",                   precision: 15, scale: 0
    t.decimal  "V_TERMS2",                   precision: 15, scale: 0
    t.decimal  "V_TERMS3",                   precision: 15, scale: 0
    t.decimal  "V_CGL",                      precision: 15, scale: 2
    t.decimal  "V_DGL",                      precision: 15, scale: 2
    t.string   "V_CK_MEMO",      limit: 80
    t.text     "V_NOTES"
    t.string   "V_FAX",          limit: 20
    t.decimal  "V_DISC_DGL",                 precision: 15, scale: 2
    t.string   "V_NAME1",        limit: 40
    t.string   "V_PHONE1",       limit: 20
    t.string   "V_FAX1",         limit: 20
    t.string   "V_PAGER1",       limit: 20
    t.string   "V_CAR_PHONE1",   limit: 20
    t.string   "V_NAME2",        limit: 40
    t.string   "V_PHONE2",       limit: 20
    t.string   "V_FAX2",         limit: 20
    t.string   "V_CAR_PHONE2",   limit: 20
    t.string   "V_PAGER2",       limit: 20
    t.string   "V_NAME3",        limit: 40
    t.string   "V_PHONE3",       limit: 20
    t.string   "V_FAX3",         limit: 20
    t.string   "V_PAGER3",       limit: 20
    t.string   "V_CAR_PHONE3",   limit: 20
    t.string   "V_HOME_PHONE1",  limit: 20
    t.string   "V_HOME_PHONE2",  limit: 20
    t.string   "V_HOME_PHONE3",  limit: 20
    t.decimal  "V_ACTIVE",                   precision: 9,  scale: 0
    t.decimal  "V_1099",                     precision: 9,  scale: 0
    t.string   "V_MEDIA_VNUM",   limit: 10
    t.string   "V_ADDRESS2_1",   limit: 50
    t.string   "V_ADDRESS2_2",   limit: 50
    t.string   "V_ADDRESS2_3",   limit: 50
    t.string   "V_ADDRESS2_4",   limit: 50
    t.string   "V_ADDRESS3_1",   limit: 50
    t.string   "V_ADDRESS3_2",   limit: 50
    t.string   "V_ADDRESS3_3",   limit: 50
    t.string   "V_ADDRESS3_4",   limit: 50
    t.decimal  "V_COMM",                     precision: 9,  scale: 2
    t.integer  "V_HOLD",         limit: 1
    t.text     "V_HOLD_WHY"
    t.integer  "V_MEDIA_KIND",   limit: 1
    t.string   "V_WEB_URL",      limit: 50
    t.string   "V_EMAIL",        limit: 100
    t.string   "V_CORP_ID",      limit: 100
    t.string   "V_MARKET",       limit: 40
    t.string   "V_CHANGED_BY",   limit: 4
    t.datetime "V_CHANGED_WHEN"
    t.integer  "V_NO_RFQ",       limit: 1
    t.string   "V_DBA",          limit: 50
    t.integer  "V_1099_RENT",    limit: 1
    t.string   "V_EDITED_BY",    limit: 4
    t.datetime "V_EDITED_WHEN"
    t.integer  "V_PAID_ONLINE",  limit: 1
    t.string   "V_NCF_PREFIX1",  limit: 18
    t.string   "V_RFQ_TYPE",     limit: 20
  end

  add_index "vendors", ["V_ACTIVE"], name: "V_ACTIVE", using: :btree
  add_index "vendors", ["V_MEDIA_VNUM"], name: "V_MEDIA_VNUM", using: :btree
  add_index "vendors", ["V_NUM"], name: "V_NUM", using: :btree
  add_index "vendors", ["V_ORG"], name: "V_ORG", using: :btree
  add_index "vendors", ["V_SEQ"], name: "V_SEQ", unique: true, using: :btree

  create_table "version", primary_key: "VER_SEQ", force: true do |t|
    t.integer "VER_PROGRAM",  limit: 1
    t.string  "VER_NAME",     limit: 100
    t.decimal "VER_A",                    precision: 15, scale: 0
    t.decimal "VER_B",                    precision: 15, scale: 0
    t.decimal "VER_C",                    precision: 15, scale: 0
    t.decimal "VER_BETA_NUM",             precision: 15, scale: 0
    t.decimal "VER_DEMO",                 precision: 15, scale: 0
  end

  add_index "version", ["VER_SEQ"], name: "VER_SEQ", unique: true, using: :btree

  create_table "web_ip_log", primary_key: "WIP_SEQ", force: true do |t|
    t.string   "WIP_IP",       limit: 20
    t.string   "WIP_NAME",     limit: 60
    t.date     "WIP_DATE"
    t.datetime "WIP_DATETIME"
  end

  add_index "web_ip_log", ["WIP_DATE"], name: "WIP_DATE", using: :btree
  add_index "web_ip_log", ["WIP_IP"], name: "WIP_IP", using: :btree
  add_index "web_ip_log", ["WIP_SEQ"], name: "WIP_SEQ", unique: true, using: :btree

  create_table "web_log", primary_key: "WLOG_SEQ", force: true do |t|
    t.datetime "WLOG_DATETIME"
    t.string   "WLOG_USER",     limit: 4
    t.integer  "WLOG_STATUS",   limit: 1
    t.text     "WLOG_EVENT"
    t.string   "WLOG_PAGE",     limit: 30
    t.string   "WLOG_IP",       limit: 30
    t.date     "WLOG_DATE"
    t.time     "WLOG_TIME"
    t.integer  "WLOG_DAY",      limit: 1
    t.integer  "WLOG_HOUR",     limit: 1
  end

  add_index "web_log", ["WLOG_DATE"], name: "WLOG_DATE", using: :btree
  add_index "web_log", ["WLOG_SEQ"], name: "WLOG_SEQ", unique: true, using: :btree
  add_index "web_log", ["WLOG_USER"], name: "WLOG_USER", using: :btree

  create_table "web_prefs", primary_key: "WP_SEQ", force: true do |t|
    t.integer  "WP_BELL_ON_HITS",      limit: 1
    t.string   "WP_CURRENT_EVENT",     limit: 200
    t.integer  "WP_DISABLE_LOG",       limit: 1
    t.integer  "WP_ALERT_PW",          limit: 1
    t.string   "WP_WEBMASTER",         limit: 100
    t.string   "WP_WEBMSTR_EMAIL",     limit: 100
    t.integer  "WP_ALERT_LOGON",       limit: 1
    t.string   "WP_SMTP_SERVER",       limit: 40
    t.integer  "WP_AUTO_START",        limit: 1
    t.integer  "WP_ALERT_ID",          limit: 1
    t.date     "WP_DATE"
    t.string   "WP_USER",              limit: 4
    t.text     "GREETING"
    t.string   "DGL_NAME",             limit: 50
    t.string   "CGL_NAME",             limit: 50
    t.string   "KIND",                 limit: 25
    t.string   "TASK_KIND",            limit: 20
    t.string   "TYPE",                 limit: 20
    t.string   "JOB_NAME",             limit: 60
    t.string   "TASK_NAME",            limit: 60
    t.integer  "WP_ALERT_ERROR",       limit: 1
    t.string   "EST_REVISION",         limit: 10
    t.string   "FINAL_ESTIMATE",       limit: 20
    t.string   "STATUS_DESC1",         limit: 40
    t.string   "STATUS_DESC2",         limit: 40
    t.integer  "WP_REMOTE_ADMIN",      limit: 1
    t.string   "WP_REMOTE_ADMIN_IP",   limit: 20
    t.text     "LOOKUP6"
    t.text     "LOOKUP5"
    t.text     "LOOKUP4"
    t.text     "LOOKUP3"
    t.text     "LOOKUP2"
    t.text     "LOOKUP_JOBS"
    t.datetime "WP_DATETIME"
    t.decimal  "HIT_DURATION",                          precision: 9, scale: 0
    t.decimal  "QUERY_DURATION",                        precision: 9, scale: 0
    t.text     "TRANSACTION_TYPE"
    t.integer  "BYTES_RECEIVED"
    t.integer  "BYTES_SENT"
    t.binary   "HEADER_LIST",          limit: 16777215
    t.decimal  "WP_DISCONNECT",                         precision: 9, scale: 0
    t.date     "WP_SHOW_DATE"
    t.string   "VER",                  limit: 20
    t.integer  "ALT_SOCKET"
    t.text     "MESSAGE_DATA"
    t.string   "POSTED",               limit: 20
    t.integer  "WP_PORT_NUMBER"
    t.integer  "WP_BACKUP",            limit: 1
    t.time     "WP_CLOSE_TIME"
    t.time     "WP_OPEN_TIME"
    t.string   "WP_FONT_OPEN",         limit: 100
    t.string   "WP_FONT_CLOSE",        limit: 20
    t.integer  "WP_AUTO_ARCHIVE_LOG",  limit: 1
    t.integer  "WP_LOG_IP_ERRORS",     limit: 1
    t.date     "WP_LAST_ARCHIVE"
    t.integer  "WP_DISABLE_BAD_LOGIN", limit: 1
    t.string   "WP_JS_SERVER",         limit: 100
    t.integer  "CAL_DAY",              limit: 1
    t.integer  "CAL_MONTH",            limit: 1
    t.integer  "CAL_YEAR"
    t.string   "CAL_MODE",             limit: 10
    t.string   "WP_LOGO_URL",          limit: 200
    t.string   "WP_LOGO_LINK",         limit: 200
    t.integer  "WP_AUTO_START_MY",     limit: 1
    t.string   "WP_EDITED_BY",         limit: 4
    t.datetime "WP_EDITED_WHEN"
    t.string   "WP_BOXR_EMAIL",        limit: 100
    t.string   "WP_BOXR_USERNAME",     limit: 50
    t.string   "WP_BOXR_PW",           limit: 50
    t.string   "WP_BOXR_SERVER",       limit: 100
    t.integer  "WP_SSL",               limit: 1
    t.text     "WP_SMTP_AUTH_ID"
    t.text     "WP_SMTP_AUTH_PW"
    t.integer  "WP_SMTP_PORT"
    t.integer  "WP_SMTP_SSL_TYPE",     limit: 1
  end

  add_index "web_prefs", ["WP_SEQ"], name: "WP_SEQ", unique: true, using: :btree

  create_table "web_users", primary_key: "WU_SEQ", force: true do |t|
    t.string   "WU_WORK",            limit: 4
    t.string   "WU_NAME",            limit: 60
    t.string   "WU_ORG",             limit: 60
    t.date     "WU_EXPIRES"
    t.string   "WU_PHONE",           limit: 20
    t.string   "WU_EMAIL",           limit: 40
    t.string   "WU_PHONE_CELL",      limit: 20
    t.string   "WU_PAGER",           limit: 20
    t.integer  "WU_STAFF",           limit: 1
    t.string   "WU_P",               limit: 20
    t.date     "WU_P_EXPIRES"
    t.string   "WU_DEPT",            limit: 20
    t.integer  "WU_WEB_ADMIN",       limit: 1
    t.datetime "WU_LAST_ACCESS"
    t.integer  "WU_KIND",            limit: 1
    t.integer  "WU_A_TIME",          limit: 1
    t.date     "WU_ACCESS_EXP"
    t.integer  "WU_ADMIN",           limit: 1
    t.integer  "WU_A_JOB_TICKETS",   limit: 1
    t.integer  "WU_A_EST",           limit: 1
    t.integer  "WU_A_SCHED",         limit: 1
    t.integer  "WU_A_TRAFFIC",       limit: 1
    t.integer  "WU_A_JOB_STATUS",    limit: 1
    t.integer  "WU_A_PO",            limit: 1
    t.integer  "WU_A_PO_OK",         limit: 1
    t.integer  "WU_A_TASK_PLAN",     limit: 1
    t.integer  "WU_A_CHG_ORD",       limit: 1
    t.integer  "WU_A_CLIENT_DIARY",  limit: 1
    t.integer  "WU_A_EST_REVS",      limit: 1
    t.integer  "WU_A_COSTS",         limit: 1
    t.integer  "WU_A_CLIENT_STATUS", limit: 1
    t.integer  "WU_A_UNBILLED",      limit: 1
    t.integer  "WU_A_BILL_PRVW",     limit: 1
    t.integer  "WU_A_WIP",           limit: 1
    t.integer  "WU_A_BILLINGS",      limit: 1
    t.integer  "WU_A_SNAPSHOT",      limit: 1
    t.integer  "WU_A_CASH_FLASH",    limit: 1
    t.integer  "WU_A_STMT",          limit: 1
    t.integer  "WU_A_AP",            limit: 1
    t.string   "WU_A_V_NUM",         limit: 10
    t.string   "WU_A_C_NUM",         limit: 10
    t.integer  "WU_A_WORK_TO_DO",    limit: 1
    t.integer  "WU_A_JOB_DIARY",     limit: 1
    t.integer  "WU_A_AR",            limit: 1
    t.string   "WU_IP",              limit: 20
    t.integer  "WU_SUSPEND",         limit: 1
    t.string   "WU_LAST_JOB",        limit: 10
    t.date     "WU_LAST_DATE"
    t.integer  "WU_A_WEEKLY_TRAF",   limit: 1
    t.integer  "WU_A_JOB_PO",        limit: 1
    t.integer  "WU_A_JOB_PROG",      limit: 1
    t.text     "WU_WELCOME_MSG"
    t.string   "WU_LAST_PO",         limit: 12
    t.integer  "WU_A_CLIENTS",       limit: 1
    t.integer  "WU_A_VENDORS",       limit: 1
    t.integer  "WU_A_EXP",           limit: 1
    t.integer  "WU_A_ADD_JOBS",      limit: 1
    t.integer  "WU_A_JOB_SPECS",     limit: 1
    t.string   "WU_ADDED_BY",        limit: 10
    t.date     "WU_ADDED_WHEN"
    t.string   "WU_HOME_PAGE",       limit: 30
    t.integer  "WU_BAD_LOGINS",      limit: 1
    t.string   "WU_COOKIE",          limit: 200
    t.integer  "WU_A_PROPOSALS",     limit: 1
    t.integer  "WU_A_INT_CHARGES",   limit: 1
    t.integer  "WU_A_TIME_SHEETS",   limit: 1
    t.integer  "WU_A_PREBILL",       limit: 1
    t.integer  "WU_A_SNAPS_PROD",    limit: 1
    t.integer  "WU_A_SNAPS_WIP",     limit: 1
    t.string   "WU_ID",              limit: 200
    t.string   "WU_EDITED_BY",       limit: 4
    t.datetime "WU_EDITED_WHEN"
  end

  add_index "web_users", ["WU_SEQ"], name: "WU_SEQ", unique: true, using: :btree
  add_index "web_users", ["WU_WORK"], name: "WU_WORK", using: :btree

  create_table "work_order", primary_key: "WO_SEQ", force: true do |t|
    t.string  "WO_JOB_NUM",       limit: 10
    t.string  "WO_CLIENT_NUM",    limit: 10
    t.text    "WO_1_LABEL"
    t.text    "WO_2_LABEL"
    t.text    "WO_3_LABEL"
    t.text    "WO_4_LABEL"
    t.text    "WO_5_LABEL"
    t.text    "WO_6_LABEL"
    t.text    "WO_7_LABEL"
    t.text    "WO_8_LABEL"
    t.text    "WO_9_LABEL"
    t.text    "WO_10_LABEL"
    t.text    "WO_11_LABEL"
    t.text    "WO_12_LABEL"
    t.text    "WO_13_LABEL"
    t.text    "WO_14_LABEL"
    t.string  "WO_15_LABEL",      limit: 0
    t.text    "WO_1"
    t.text    "WO_2"
    t.text    "WO_3"
    t.text    "WO_4"
    t.text    "WO_5"
    t.text    "WO_6"
    t.text    "WO_7"
    t.text    "WO_8"
    t.text    "WO_9"
    t.text    "WO_10"
    t.text    "WO_11"
    t.text    "WO_12"
    t.text    "WO_13"
    t.text    "WO_14"
    t.text    "WO_15"
    t.string  "WO_ADDED_BY",      limit: 4
    t.string  "WO_REV_BY",        limit: 4
    t.integer "WO_OK",            limit: 1
    t.string  "WO_OK_BY",         limit: 4
    t.date    "WO_OK_DATE"
    t.integer "WO_APPROVED",      limit: 1
    t.date    "WO_APPROVED_DATE"
    t.string  "WO_APPROVED_BY",   limit: 4
    t.string  "WO_ADR_NAME",      limit: 20
  end

  add_index "work_order", ["WO_CLIENT_NUM"], name: "WO_CLIENT_NUM", using: :btree
  add_index "work_order", ["WO_JOB_NUM"], name: "WO_JOB_NUM", using: :btree
  add_index "work_order", ["WO_SEQ"], name: "WO_SEQ", unique: true, using: :btree

  create_table "working", primary_key: "W_SEQ", force: true do |t|
    t.string   "W_WORK",                 limit: 4
    t.string   "W_ORG",                  limit: 60
    t.string   "W_DATABASE",             limit: 60
    t.string   "W_PHONE",                limit: 20
    t.date     "W_EXPIRES"
    t.string   "W_WHERE",                limit: 30
    t.decimal  "W_IN_OUT",                                precision: 9,  scale: 2
    t.decimal  "W_BILL_RATE",                             precision: 9,  scale: 2
    t.decimal  "W_FINANCE_CHG",                           precision: 9,  scale: 2
    t.string   "W_DEPT",                 limit: 15
    t.decimal  "W_A_ADD_TASKS",                           precision: 9,  scale: 0
    t.decimal  "W_PO_NUMBERING",                          precision: 9,  scale: 0
    t.decimal  "W_YEAR",                                  precision: 9,  scale: 0
    t.decimal  "W_CK_STOCK",                              precision: 9,  scale: 0
    t.decimal  "W_DEMO",                                  precision: 9,  scale: 0
    t.decimal  "W_A_EDIT_JOBS",                           precision: 9,  scale: 0
    t.decimal  "W_GROUP_LIMIT",                           precision: 9,  scale: 0
    t.decimal  "W_A_AR_EDIT",                             precision: 9,  scale: 0
    t.decimal  "W_A_PRODUCTION",                          precision: 9,  scale: 0
    t.decimal  "W_NOTE_STATUS_CHANGE",                    precision: 9,  scale: 0
    t.decimal  "W_A_REOPEN_JOBS",                         precision: 9,  scale: 0
    t.decimal  "W_A_TIME_CLOSED_JOBS",                    precision: 9,  scale: 0
    t.decimal  "W_A_UTILITIES",                           precision: 9,  scale: 0
    t.decimal  "W_A_JOB_WIP",                             precision: 9,  scale: 0
    t.decimal  "W_A_UNPOST",                              precision: 9,  scale: 0
    t.date     "W_PASSWORD_EXP"
    t.string   "W_TERMS",                limit: 20
    t.decimal  "W_STATUS_NEW",                            precision: 9,  scale: 0
    t.decimal  "W_STATUS_REOPEN",                         precision: 9,  scale: 0
    t.decimal  "W_STATUS_CLOSED",                         precision: 9,  scale: 0
    t.string   "W_AE_TEAM",              limit: 10
    t.string   "W_AKA_CLIENT",           limit: 20
    t.string   "W_AKA_CLIENTS",          limit: 20
    t.string   "W_AKA_JOB",              limit: 20
    t.string   "W_AKA_JOBS",             limit: 20
    t.string   "W_AKA_TASK",             limit: 20
    t.string   "W_AKA_TASKS",            limit: 20
    t.string   "W_AKA_VENDOR",           limit: 20
    t.string   "W_AKA_VENDORS",          limit: 20
    t.string   "W_AKA_AR",               limit: 20
    t.string   "W_AKA_ARS",              limit: 20
    t.integer  "W_A_OPEN_JOBS",          limit: 1
    t.integer  "W_A_DELETE_JOBS",        limit: 1
    t.integer  "W_A_REMOVE_TASKS",       limit: 1
    t.integer  "W_A_EDIT_EST",           limit: 1
    t.integer  "W_A_CHG_ORDERS",         limit: 1
    t.integer  "W_A_UP_PROD_STATUS",     limit: 1
    t.integer  "W_A_UP_BILL_STATUS",     limit: 1
    t.text     "W_PO_DISCLAIMER"
    t.string   "W_TAX_DESC1",            limit: 25
    t.string   "W_TAX_DESC2",            limit: 25
    t.decimal  "W_TAX_RATE1",                             precision: 15, scale: 4
    t.decimal  "W_TAX_RATE2",                             precision: 15, scale: 4
    t.decimal  "W_TAX_GL1",                               precision: 9,  scale: 2
    t.decimal  "W_TAX_GL2",                               precision: 9,  scale: 2
    t.decimal  "W_DATE_FORMAT",                           precision: 9,  scale: 0
    t.decimal  "W_ALERT_PO",                              precision: 15, scale: 0
    t.decimal  "W_ALERT_PO_PC",                           precision: 15, scale: 0
    t.decimal  "W_ALERT_COST",                            precision: 15, scale: 0
    t.decimal  "W_ALERT_COST_PC",                         precision: 15, scale: 0
    t.decimal  "W_ALERT_TIME",                            precision: 15, scale: 0
    t.decimal  "W_ALERT_TIME_PC",                         precision: 15, scale: 0
    t.decimal  "W_A_STATUS_TABLE",                        precision: 9,  scale: 0
    t.decimal  "W_A_UP_TRAFFIC",                          precision: 9,  scale: 0
    t.decimal  "W_A_UP_SCHEDULES",                        precision: 9,  scale: 0
    t.decimal  "W_A_CANT_CHG_PO",                         precision: 9,  scale: 0
    t.integer  "W_A_HIDE_RATES",         limit: 1
    t.string   "W_INFO_CTR",             limit: 30
    t.integer  "W_A_COST_CHECKS",        limit: 1
    t.decimal  "W_A_HIDE_TIME",                           precision: 9,  scale: 0
    t.string   "W_PO_TO1",               limit: 10
    t.string   "W_PO_TO2",               limit: 10
    t.string   "W_PO_TO3",               limit: 10
    t.string   "W_PO_TO4",               limit: 10
    t.string   "W_PO_TO5",               limit: 10
    t.decimal  "W_JOB_NUMBERING",                         precision: 9,  scale: 0
    t.string   "W_A_STATUS_CAT",         limit: 20
    t.decimal  "W_LOGO_ESTIMATE",                         precision: 9,  scale: 2
    t.integer  "W_LOGO_AR",              limit: 1
    t.integer  "W_LOGO_PO",              limit: 1
    t.text     "W_EST_DISCLAIMR"
    t.text     "W_STMT_NOTE"
    t.text     "W_AR_NOTE"
    t.text     "W_PO_NOTE"
    t.decimal  "W_GL_CASH",                               precision: 15, scale: 2
    t.decimal  "W_GL_AR",                                 precision: 15, scale: 2
    t.decimal  "W_GL_AP",                                 precision: 15, scale: 2
    t.decimal  "W_GL_RETAINER",                           precision: 15, scale: 2
    t.decimal  "W_GL_SALES",                              precision: 15, scale: 2
    t.decimal  "W_GL_OVERHEAD",                           precision: 15, scale: 2
    t.decimal  "W_GL_COST",                               precision: 15, scale: 2
    t.decimal  "W_GL_RE",                                 precision: 15, scale: 2
    t.decimal  "W_PERIOD",                                precision: 9,  scale: 0
    t.datetime "W_DATE1"
    t.decimal  "W_GL_EMPL_ADV",                           precision: 9,  scale: 2
    t.integer  "W_PRINT_TO",             limit: 1
    t.integer  "W_A_EST_OK",             limit: 1
    t.integer  "W_A_LOOK_CLIENTS",       limit: 1
    t.integer  "W_A_LOOK_JOBS",          limit: 1
    t.integer  "W_A_LOOK_STAFF",         limit: 1
    t.integer  "W_A_LOOK_COA",           limit: 1
    t.integer  "W_A_LOOK_PC",            limit: 1
    t.integer  "W_A_LOOK_DEPT",          limit: 1
    t.integer  "W_A_LOOK_PO",            limit: 1
    t.integer  "W_A_LOOK_PROJ",          limit: 1
    t.integer  "W_A_LOOK_TYPES",         limit: 1
    t.integer  "W_A_LOOK_VENDORS",       limit: 1
    t.string   "W_EST_HEADING",          limit: 30
    t.string   "W_INV_HEADING",          limit: 30
    t.string   "W_APPROVAL1",            limit: 40
    t.string   "W_APPROVAL2",            limit: 40
    t.string   "W_APPROVAL3",            limit: 40
    t.decimal  "W_A_ADD_XFERS",                           precision: 9,  scale: 2
    t.decimal  "W_A_IMPORT_PAYROLL",                      precision: 9,  scale: 2
    t.decimal  "W_A_XFER_ACCT_BAL",                       precision: 9,  scale: 2
    t.integer  "W_A_TIME",               limit: 1
    t.decimal  "W_A_GL_AUDITOR",                          precision: 9,  scale: 2
    t.decimal  "W_A_CLOSE_YEAR",                          precision: 9,  scale: 2
    t.decimal  "W_A_RECUR_JE",                            precision: 9,  scale: 2
    t.decimal  "W_PO_SHOW_CL",                            precision: 9,  scale: 0
    t.decimal  "W_A_GL_RECONCILE",                        precision: 9,  scale: 2
    t.decimal  "W_A_ADD_COA",                             precision: 9,  scale: 2
    t.decimal  "W_A_GL_BUDGETS",                          precision: 9,  scale: 2
    t.integer  "W_A_DELETE_OWN_PO",      limit: 1
    t.decimal  "W_A_ADJ_JE",                              precision: 9,  scale: 2
    t.decimal  "W_A_OVERHEAD_ALLOC",                      precision: 9,  scale: 2
    t.decimal  "W_A_IMPORT_TIME",                         precision: 9,  scale: 2
    t.decimal  "W_A_CLOSE_JOBS",                          precision: 9,  scale: 2
    t.string   "W_AKA_PO",               limit: 20
    t.string   "W_PO_APPROVAL1",         limit: 15
    t.string   "W_PO_APPROVAL2",         limit: 15
    t.string   "W_PO_APPROVAL3",         limit: 15
    t.string   "W_PO_FIELD1",            limit: 10
    t.string   "W_PO_FIELD2",            limit: 10
    t.string   "W_PO_FIELD3",            limit: 10
    t.string   "W_PO_FIELD4",            limit: 10
    t.string   "W_PO_FIELD5",            limit: 10
    t.decimal  "W_NEXT_JOB",                              precision: 9,  scale: 0
    t.string   "W_EQUITY_NAME",          limit: 25
    t.string   "W_INCOME_NAME",          limit: 25
    t.string   "W_COSTS_NAME",           limit: 25
    t.string   "W_OTHERINC_NAME",        limit: 25
    t.string   "W_OTHEREXP_NAME",        limit: 25
    t.string   "W_EXPENSES_NAME",        limit: 25
    t.string   "W_USER_NAME",            limit: 40
    t.string   "W_NEXT",                 limit: 64
    t.decimal  "W_NEXT_PO_NUM",                           precision: 15, scale: 0
    t.decimal  "W_A_CHANGE_GL",                           precision: 15, scale: 0
    t.decimal  "W_GL_ADV_BILL",                           precision: 9,  scale: 2
    t.datetime "W_LOGGED_IN"
    t.datetime "W_LOGGED_OUT"
    t.decimal  "W_A_PO_MAX",                              precision: 15, scale: 2
    t.integer  "W_A_GL_POST",            limit: 1
    t.string   "W_AKA_POS",              limit: 30
    t.string   "W_JOBS_POS",             limit: 15
    t.string   "W_ESTIMATE_POS",         limit: 15
    t.string   "W_SCHEDULE_POS",         limit: 15
    t.string   "W_AR_POS",               limit: 15
    t.string   "W_PO_POS",               limit: 15
    t.string   "W_STATUS_POS",           limit: 15
    t.string   "W_UPTRAFFIC_POS",        limit: 15
    t.string   "W_TRAFFIC_POS",          limit: 15
    t.string   "W_MEDIA_POS",            limit: 15
    t.string   "W_JOBSPECS_POS",         limit: 15
    t.string   "W_TIME_POS",             limit: 15
    t.integer  "W_A_POST_ONLY",          limit: 1
    t.decimal  "W_GL_AR_DISC",                            precision: 9,  scale: 2
    t.decimal  "W_GL_AP_DISC",                            precision: 9,  scale: 2
    t.integer  "W_A_JOBS",               limit: 1
    t.integer  "W_A_CLIENTS",            limit: 1
    t.integer  "W_A_VENDORS",            limit: 1
    t.integer  "W_A_STAFF",              limit: 1
    t.integer  "W_A_AP",                 limit: 1
    t.integer  "W_A_CHECKS",             limit: 1
    t.integer  "W_A_EXPENSES",           limit: 1
    t.integer  "W_A_AR",                 limit: 1
    t.integer  "W_A_MANAGER",            limit: 1
    t.integer  "W_A_PREFS",              limit: 1
    t.integer  "W_A_COA",                limit: 1
    t.integer  "W_A_TASK_TABLE",         limit: 1
    t.integer  "W_A_FINANCIALS",         limit: 1
    t.integer  "W_A_COSTS",              limit: 1
    t.integer  "W_A_SEE_COSTS",          limit: 1
    t.integer  "W_A_ADHOC",              limit: 1
    t.integer  "W_A_GL",                 limit: 1
    t.integer  "W_A_CLIENT_PMTS",        limit: 1
    t.integer  "W_A_CLIENT_AGING",       limit: 1
    t.integer  "W_A_VENDOR_AGING",       limit: 1
    t.integer  "W_A_WIP",                limit: 1
    t.integer  "W_A_PROFITABILITY",      limit: 1
    t.integer  "W_A_PRODUCTIVITY",       limit: 1
    t.integer  "W_A_CASH_FLOW",          limit: 1
    t.integer  "W_A_MEDIA",              limit: 1
    t.integer  "W_A_XFERS",              limit: 1
    t.decimal  "W_STATUS_BILLED",                         precision: 9,  scale: 0
    t.decimal  "W_STATUS_AR_PAID",                        precision: 9,  scale: 0
    t.integer  "W_A_PO_AMT",             limit: 1
    t.decimal  "W_GL_MEDIA_WIP",                          precision: 15, scale: 2
    t.decimal  "W_GL_MEDIA_COSTS",                        precision: 15, scale: 2
    t.integer  "W_A_EMPL_ADV",           limit: 1
    t.integer  "W_A_TIME_VIEW_DAYS",     limit: 1
    t.integer  "W_A_HIDE_JOB_AMTS",      limit: 1
    t.integer  "W_A_APPROVE_PO",         limit: 1
    t.integer  "W_A_STAFF_ONLY",         limit: 1
    t.integer  "W_A_CONFID_GL",          limit: 1
    t.integer  "W_NUM11",                limit: 1
    t.integer  "W_NUM12",                limit: 1
    t.text     "W_BUD_ALERT_C1"
    t.text     "W_BUD_ALERT_C2"
    t.text     "W_BUD_ALERT_L1"
    t.text     "W_BUD_ALERT_L2"
    t.text     "W_BUD_ALERT_PO1"
    t.text     "W_BUD_ALERT_PO2"
    t.string   "W_JOB_COLUMN1",          limit: 12
    t.string   "W_JOB_COLUMN2",          limit: 12
    t.string   "W_JOB_COLUMN3",          limit: 12
    t.string   "W_AKA",                  limit: 30
    t.string   "W_SEP",                  limit: 1
    t.string   "W_AKA_PROJECT",          limit: 20
    t.integer  "W_FORCE_QUIT",           limit: 1
    t.time     "W_FORCE_TIME"
    t.string   "W_INFO_CTR_MSG",         limit: 60
    t.text     "W_CON_NOTE"
    t.decimal  "W_CON_PC",                                precision: 9,  scale: 2
    t.integer  "W_UNIQ_JNUM",            limit: 1
    t.decimal  "W_JOBS_FROM",                             precision: 9,  scale: 0
    t.decimal  "W_JOBS_TO",                               precision: 9,  scale: 0
    t.string   "W_AKA_CLIENT_PO",        limit: 20
    t.string   "W_J_TO1",                limit: 10
    t.string   "W_J_TO2",                limit: 10
    t.string   "W_J_TO3",                limit: 10
    t.string   "W_J_TO4",                limit: 10
    t.string   "W_J_TO5",                limit: 10
    t.string   "W_CHAR20",               limit: 20
    t.integer  "W_VERSION_A",            limit: 1
    t.integer  "W_VERSION_B",            limit: 1
    t.integer  "W_VERSION_C",            limit: 1
    t.string   "W_VERSION_KIND",         limit: 2
    t.string   "W_USER_FIELD3",          limit: 20
    t.string   "W_USER_FIELD4",          limit: 20
    t.string   "W_USER_FIELD5",          limit: 20
    t.string   "W_USER_FIELD6",          limit: 20
    t.string   "W_PO_TOTAL_LABEL",       limit: 30
    t.string   "W_AKA_PC",               limit: 20
    t.string   "W_AKA_PCS",              limit: 20
    t.integer  "W_A_SALES_TAX",          limit: 1
    t.integer  "W_A_SPELL",              limit: 1
    t.decimal  "W_A_IO_MAX",                              precision: 15, scale: 2
    t.integer  "W_A_APPROVE_AR",         limit: 1
    t.integer  "W_A_DBA",                limit: 1
    t.integer  "W_JOB_COL1",             limit: 1
    t.integer  "W_JOB_COL2",             limit: 1
    t.integer  "W_JOB_COL3",             limit: 1
    t.integer  "W_JOB_COL4",             limit: 1
    t.integer  "W_JOB_COL5",             limit: 1
    t.integer  "W_JOB_COL6",             limit: 1
    t.integer  "W_A_OK_REQUESTS",        limit: 1
    t.integer  "W_A_APPROVE_TIME",       limit: 1
    t.integer  "W_A_APPROVE_EXP",        limit: 1
    t.integer  "W_A_CHANGE_PRIORITY",    limit: 1
    t.integer  "W_A_MEDIA_SNAPS",        limit: 1
    t.integer  "W_A_CLIENT_ADD",         limit: 1
    t.integer  "W_A_WEB_ACCESS",         limit: 1
    t.integer  "W_A_CUST_REPORTS",       limit: 1
    t.integer  "W_A_COLLECT_MGR",        limit: 1
    t.integer  "W_A_EMAIL",              limit: 1
    t.integer  "W_A_APPROVE_AP",         limit: 1
    t.integer  "W_A_APPROVE_JOBS",       limit: 1
    t.integer  "W_A_APPROVE_SCH",        limit: 1
    t.integer  "W_A_APPROVE_MO",         limit: 1
    t.integer  "W_A_APPROVE_MESTS",      limit: 1
    t.integer  "W_A_APPROVE_MPLANS",     limit: 1
    t.integer  "W_A_APPROVE_MBRIEFS",    limit: 1
    t.integer  "W_A_INT_CHARGES",        limit: 1
    t.integer  "W_A_COMMISSIONS",        limit: 1
    t.integer  "W_A_PRINT_SPECS",        limit: 1
    t.integer  "W_A_APPROVE_PRINTSPECS", limit: 1
    t.integer  "W_A_RENUMBER",           limit: 1
    t.integer  "W_A_VERIFY_RECOVER",     limit: 1
    t.integer  "W_A_SEE_LABOR_NET",      limit: 1
    t.integer  "W_A_HIDE_TOOLTIPS",      limit: 1
    t.string   "W_TCP_ADDRESS",          limit: 100
    t.datetime "W_LAST_WORK_TIME"
    t.text     "W_LAST_WORK",            limit: 16777215
    t.integer  "W_LOG_OFF_NOW",          limit: 1
    t.integer  "W_A_JOB_SNAPSHOT",       limit: 1
    t.decimal  "W_GL_INT_BILL",                           precision: 9,  scale: 2
    t.integer  "W_A_HIDE_RATES_BILL",    limit: 1
    t.string   "W_POS_CLIP_NOTE",        limit: 15
    t.decimal  "W_STATUS_NEW_B",                          precision: 15, scale: 0
    t.decimal  "W_STATUS_CLOSED_B",                       precision: 15, scale: 0
    t.decimal  "W_STATUS_REOPEN_B",                       precision: 15, scale: 0
    t.decimal  "W_STATUS_BILLED_B",                       precision: 15, scale: 0
    t.decimal  "W_STATUS_AR_PAID_B",                      precision: 15, scale: 0
    t.decimal  "W_PRINT_STATUS_FROM",                     precision: 15, scale: 0
    t.decimal  "W_PRINT_STATUS_TO",                       precision: 15, scale: 0
    t.integer  "W_WEB_ACCESS",           limit: 1
    t.integer  "W_A_INST_JOBS",          limit: 1
    t.string   "W_PC",                   limit: 10
    t.decimal  "W_TAX_RATE3",                             precision: 15, scale: 4
    t.string   "W_TAX_DESC3",            limit: 25
    t.decimal  "W_TAX_GL3",                               precision: 15, scale: 2
    t.integer  "W_DASHBOARD",            limit: 1
    t.integer  "W_A_JOB_BILL_WKST",      limit: 1
    t.integer  "W_A_TIME_CARD",          limit: 1
  end

  add_index "working", ["W_LOGGED_IN"], name: "W_LOGGED_IN", using: :btree
  add_index "working", ["W_SEQ"], name: "W_SEQ", unique: true, using: :btree
  add_index "working", ["W_WORK"], name: "W_WORK", using: :btree

  create_table "worksheet", primary_key: "EST_SEQ", force: true do |t|
    t.string   "EST_KEY",         limit: 15
    t.string   "EST_LINE1",       limit: 40
    t.string   "EST_LINE2",       limit: 40
    t.string   "EST_LINE3",       limit: 40
    t.string   "EST_LINE4",       limit: 40
    t.decimal  "EST_AMT1",                   precision: 15, scale: 2
    t.decimal  "EST_AMT2",                   precision: 15, scale: 2
    t.decimal  "EST_AMT3",                   precision: 15, scale: 2
    t.decimal  "EST_AMT4",                   precision: 15, scale: 2
    t.string   "EST_RESOURCE1",   limit: 10
    t.string   "EST_RESOURCE2",   limit: 10
    t.string   "EST_RESOURCE3",   limit: 10
    t.string   "EST_RESOURCE4",   limit: 10
    t.decimal  "EST_RATE1",                  precision: 9,  scale: 2
    t.decimal  "EST_RATE2",                  precision: 9,  scale: 2
    t.decimal  "EST_RATE3",                  precision: 9,  scale: 2
    t.decimal  "EST_RATE4",                  precision: 9,  scale: 2
    t.decimal  "EST_HRS1",                   precision: 9,  scale: 2
    t.decimal  "EST_HRS2",                   precision: 9,  scale: 2
    t.decimal  "EST_HRS3",                   precision: 9,  scale: 2
    t.decimal  "EST_HRS4",                   precision: 9,  scale: 2
    t.string   "EST_JOB_NUM",     limit: 10
    t.integer  "EST_COLUMN",      limit: 1
    t.string   "EST_TASK",        limit: 4
    t.decimal  "EST_MARKUP",                 precision: 9,  scale: 2
    t.integer  "EST_REV",         limit: 1
    t.string   "EST_ADDED_BY",    limit: 4
    t.datetime "EST_ADDED_WHEN"
    t.string   "EST_EDITED_BY",   limit: 4
    t.datetime "EST_EDITED_WHEN"
  end

  add_index "worksheet", ["EST_JOB_NUM"], name: "EST_JOB_NUM", using: :btree
  add_index "worksheet", ["EST_KEY"], name: "EST_KEY", using: :btree
  add_index "worksheet", ["EST_SEQ"], name: "EST_SEQ", unique: true, using: :btree

  create_table "y1099", primary_key: "Y_SEQ", force: true do |t|
    t.string  "Y_NAME1",       limit: 40
    t.string  "Y_ADDRESS1",    limit: 40
    t.string  "Y_CITY_STATE1", limit: 40
    t.string  "Y_ZIP1",        limit: 40
    t.string  "Y_TAX1",        limit: 20
    t.decimal "Y_AMT1",                   precision: 15, scale: 2
    t.string  "Y_NAME2",       limit: 40
    t.string  "Y_ADDRESS2",    limit: 40
    t.string  "Y_CITY_STATE2", limit: 40
    t.string  "Y_ZIP2",        limit: 40
    t.string  "Y_TAX2",        limit: 20
    t.decimal "Y_AMT2",                   precision: 15, scale: 2
    t.string  "Y_NAME3",       limit: 40
    t.string  "Y_ADDRESS3",    limit: 40
    t.string  "Y_CITY_STATE3", limit: 40
    t.string  "Y_ZIP3",        limit: 40
    t.decimal "Y_AMT3",                   precision: 15, scale: 2
    t.string  "Y_TAX3",        limit: 20
    t.string  "Y_DBA",         limit: 50
    t.string  "Y_DBA2",        limit: 50
    t.decimal "Y_RENT",                   precision: 9,  scale: 2
    t.decimal "Y_RENT2",                  precision: 9,  scale: 2
  end

  add_index "y1099", ["Y_SEQ"], name: "Y_SEQ", unique: true, using: :btree

end

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

ActiveRecord::Schema.define(version: 20140312030001) do

  create_table "access_privs", primary_key: "acs_seq", force: true do |t|
    t.string  "acs_client_num", limit: 10
    t.string  "acs_initials",   limit: 10
    t.string  "acs_key",        limit: 20
    t.integer "acs_see",        limit: 1
    t.integer "acs_edit",       limit: 1
    t.integer "acs_del",        limit: 1
    t.integer "acs_print",      limit: 1
  end

  add_index "access_privs", ["acs_client_num"], name: "acs_client_num"
  add_index "access_privs", ["acs_initials"], name: "acs_initials"
  add_index "access_privs", ["acs_key"], name: "acs_key"

  create_table "accounts", primary_key: "ac_seq", force: true do |t|
    t.decimal   "ac_num",                        precision: 15, scale: 2
    t.string    "ac_name",           limit: 40
    t.decimal   "ac_class",                      precision: 15, scale: 0
    t.decimal   "ac_sub_class",                  precision: 15, scale: 0
    t.decimal   "ac_confidential",               precision: 9,  scale: 0
    t.decimal   "ac_rollup_only",                precision: 15, scale: 2
    t.decimal   "ac_ck_num",                     precision: 15, scale: 0
    t.string    "ac_pc",             limit: 10
    t.decimal   "ac_1",                          precision: 15, scale: 2
    t.decimal   "ac_2",                          precision: 15, scale: 2
    t.decimal   "ac_3",                          precision: 15, scale: 2
    t.decimal   "ac_4",                          precision: 15, scale: 2
    t.decimal   "ac_5",                          precision: 15, scale: 2
    t.decimal   "ac_6",                          precision: 15, scale: 2
    t.decimal   "ac_7",                          precision: 15, scale: 2
    t.decimal   "ac_8",                          precision: 15, scale: 2
    t.decimal   "ac_9",                          precision: 15, scale: 2
    t.decimal   "ac_10",                         precision: 15, scale: 2
    t.decimal   "ac_11",                         precision: 15, scale: 2
    t.decimal   "ac_12",                         precision: 15, scale: 2
    t.decimal   "ac_beg_baln",                   precision: 15, scale: 2
    t.decimal   "ac_budget1",                    precision: 15, scale: 2
    t.decimal   "ac_budget2",                    precision: 15, scale: 2
    t.decimal   "ac_budget3",                    precision: 15, scale: 2
    t.decimal   "ac_budget4",                    precision: 15, scale: 2
    t.decimal   "ac_budget5",                    precision: 15, scale: 2
    t.decimal   "ac_budget6",                    precision: 15, scale: 2
    t.decimal   "ac_budget7",                    precision: 15, scale: 2
    t.decimal   "ac_budget8",                    precision: 15, scale: 2
    t.decimal   "ac_budget9",                    precision: 15, scale: 2
    t.decimal   "ac_budget10",                   precision: 15, scale: 2
    t.decimal   "ac_budget11",                   precision: 15, scale: 2
    t.decimal   "ac_budget12",                   precision: 15, scale: 2
    t.decimal   "ac_b13",                        precision: 15, scale: 2
    t.decimal   "ac_l1",                         precision: 15, scale: 2
    t.decimal   "ac_l2",                         precision: 15, scale: 2
    t.decimal   "ac_l3",                         precision: 15, scale: 2
    t.decimal   "ac_l4",                         precision: 15, scale: 2
    t.decimal   "ac_l5",                         precision: 15, scale: 2
    t.decimal   "ac_l6",                         precision: 15, scale: 2
    t.decimal   "ac_l7",                         precision: 15, scale: 2
    t.decimal   "ac_l8",                         precision: 15, scale: 2
    t.decimal   "ac_l9",                         precision: 15, scale: 2
    t.decimal   "ac_l10",                        precision: 15, scale: 2
    t.decimal   "ac_l11",                        precision: 15, scale: 2
    t.decimal   "ac_l12",                        precision: 15, scale: 2
    t.decimal   "ac_l_beg_baln",                 precision: 15, scale: 2
    t.decimal   "ac_group",                      precision: 15, scale: 0
    t.decimal   "ac_category",                   precision: 15, scale: 0
    t.decimal   "ac_ytd",                        precision: 15, scale: 2
    t.decimal   "ac_roll_up",                    precision: 15, scale: 2
    t.decimal   "ac_active",                     precision: 15, scale: 0
    t.decimal   "ac_ck_acct",                    precision: 15, scale: 0
    t.text      "ac_desc"
    t.decimal   "ac_13",                         precision: 15, scale: 2
    t.decimal   "ac_14",                         precision: 15, scale: 2
    t.decimal   "ac_15",                         precision: 15, scale: 2
    t.decimal   "ac_16",                         precision: 15, scale: 2
    t.decimal   "ac_17",                         precision: 15, scale: 2
    t.decimal   "ac_18",                         precision: 15, scale: 2
    t.decimal   "ac_19",                         precision: 15, scale: 2
    t.decimal   "ac_20",                         precision: 15, scale: 2
    t.decimal   "ac_21",                         precision: 15, scale: 2
    t.decimal   "ac_22",                         precision: 15, scale: 2
    t.decimal   "ac_23",                         precision: 15, scale: 2
    t.decimal   "ac_24",                         precision: 15, scale: 2
    t.decimal   "ac_ytd2",                       precision: 15, scale: 2
    t.integer   "ac_cf",             limit: 1
    t.integer   "ac_ratio",          limit: 1
    t.decimal   "ac_ar_control",                 precision: 15, scale: 0
    t.decimal   "ac_ap_control",                 precision: 15, scale: 0
    t.string    "ac_ar_lock",        limit: 1
    t.string    "ac_ap_lock",        limit: 1
    t.decimal   "ac_dept",                       precision: 9,  scale: 0
    t.decimal   "ac_budget13",                   precision: 15, scale: 2
    t.decimal   "ac_budget14",                   precision: 15, scale: 2
    t.decimal   "ac_budget15",                   precision: 15, scale: 2
    t.decimal   "ac_budget16",                   precision: 15, scale: 2
    t.decimal   "ac_budget17",                   precision: 15, scale: 2
    t.decimal   "ac_budget18",                   precision: 15, scale: 2
    t.decimal   "ac_budget19",                   precision: 15, scale: 2
    t.decimal   "ac_budget20",                   precision: 15, scale: 2
    t.decimal   "ac_budget21",                   precision: 15, scale: 2
    t.decimal   "ac_budget22",                   precision: 15, scale: 2
    t.decimal   "ac_budget23",                   precision: 15, scale: 2
    t.decimal   "ac_budget24",                   precision: 15, scale: 2
    t.string    "ac_corp_id",        limit: 100
    t.string    "ac_added_by",       limit: 4
    t.timestamp "ac_added_when"
    t.string    "ac_edited_by",      limit: 4
    t.timestamp "ac_edited_when"
    t.decimal   "ac_bank_routing",               precision: 15, scale: 0
    t.decimal   "ac_bank_acct_num",              precision: 15, scale: 0
    t.string    "ac_bank_name",      limit: 40
    t.string    "ac_bank_location",  limit: 40
    t.string    "ac_bank_num",       limit: 40
    t.decimal   "ac_online_pmt_num",             precision: 9,  scale: 0
  end

  add_index "accounts", ["ac_added_when"], name: "ac_added_when"
  add_index "accounts", ["ac_ap_control"], name: "ac_ap_control"
  add_index "accounts", ["ac_ar_control"], name: "ac_ar_control"
  add_index "accounts", ["ac_cf"], name: "ac_cf"
  add_index "accounts", ["ac_class"], name: "ac_class"
  add_index "accounts", ["ac_name"], name: "ac_name"
  add_index "accounts", ["ac_num"], name: "ac_num"
  add_index "accounts", ["ac_pc"], name: "ac_pc"
  add_index "accounts", ["ac_rollup_only"], name: "ac_rollup_only"

  create_table "acct_periods", id: false, force: true do |t|
    t.string  "period_id",        limit: 4
    t.string  "period_1",         limit: 15
    t.string  "period_2",         limit: 15
    t.string  "period_3",         limit: 15
    t.string  "period_4",         limit: 15
    t.string  "period_5",         limit: 15
    t.string  "period_6",         limit: 15
    t.string  "period_7",         limit: 15
    t.string  "period_8",         limit: 15
    t.string  "period_9",         limit: 15
    t.string  "period_10",        limit: 15
    t.string  "period_11",        limit: 15
    t.string  "period_12",        limit: 15
    t.string  "period_13",        limit: 15
    t.string  "period_14",        limit: 15
    t.string  "period_15",        limit: 15
    t.string  "period_16",        limit: 15
    t.string  "period_17",        limit: 15
    t.string  "period_18",        limit: 15
    t.string  "period_19",        limit: 15
    t.string  "period_20",        limit: 15
    t.string  "period_21",        limit: 15
    t.string  "period_22",        limit: 15
    t.string  "period_23",        limit: 15
    t.string  "period_24",        limit: 15
    t.integer "period_lock1",     limit: 1
    t.integer "period_lock2",     limit: 1
    t.integer "period_lock3",     limit: 1
    t.integer "period_lock4",     limit: 1
    t.integer "period_lock5",     limit: 1
    t.integer "period_lock6",     limit: 1
    t.integer "period_lock7",     limit: 1
    t.integer "period_lock8",     limit: 1
    t.integer "period_lock9",     limit: 1
    t.integer "period_lock10",    limit: 1
    t.integer "period_lock11",    limit: 1
    t.integer "period_lock12",    limit: 1
    t.integer "period_lock13",    limit: 1
    t.integer "period_lock14",    limit: 1
    t.integer "period_lock15",    limit: 1
    t.integer "period_lock16",    limit: 1
    t.integer "period_lock17",    limit: 1
    t.integer "period_lock18",    limit: 1
    t.integer "period_lock19",    limit: 1
    t.integer "period_lock20",    limit: 1
    t.integer "period_lock21",    limit: 1
    t.integer "period_lock22",    limit: 1
    t.integer "period_lock23",    limit: 1
    t.integer "period_lock24",    limit: 1
    t.date    "period_first_day"
    t.integer "period_curr_per",  limit: 1
    t.string  "period_fy1_name",  limit: 15
    t.string  "period_fy2_name",  limit: 15
  end

  add_index "acct_periods", ["period_id"], name: "period_id"

  create_table "addresses", primary_key: "adr_seq", force: true do |t|
    t.string    "adr_client_num",  limit: 10
    t.string    "adr_name",        limit: 20
    t.string    "adr_address1",    limit: 50
    t.string    "adr_address2",    limit: 50
    t.string    "adr_address3",    limit: 50
    t.string    "adr_address4",    limit: 50
    t.string    "adr_address5",    limit: 50
    t.string    "adr_address6",    limit: 50
    t.integer   "adr_kind",        limit: 1
    t.string    "adr_org",         limit: 50
    t.string    "adr_tax_area",    limit: 30
    t.decimal   "adr_tax_rate1",              precision: 15, scale: 4
    t.decimal   "adr_tax_rate2",              precision: 15, scale: 4
    t.decimal   "adr_tax_gl1",                precision: 15, scale: 0
    t.decimal   "adr_tax_gl2",                precision: 15, scale: 0
    t.string    "adr_added_by",    limit: 4
    t.timestamp "adr_added_when"
    t.string    "adr_edited_by",   limit: 4
    t.timestamp "adr_edited_when"
  end

  add_index "addresses", ["adr_client_num"], name: "adr_client_num"
  add_index "addresses", ["adr_name"], name: "adr_name"

  create_table "ap", primary_key: "ap_seq", force: true do |t|
    t.string    "ap_num",             limit: 20
    t.string    "ap_vendor_num",      limit: 10
    t.date      "ap_date"
    t.string    "ap_key",             limit: 30
    t.text      "ap_desc"
    t.decimal   "ap_cgl",                        precision: 15, scale: 2
    t.decimal   "ap_net_amt",                    precision: 15, scale: 2
    t.decimal   "ap_comm_net",                   precision: 9,  scale: 2
    t.decimal   "ap_markup_pc",                  precision: 9,  scale: 2
    t.decimal   "ap_tax_amt",                    precision: 9,  scale: 2
    t.decimal   "ap_gross_amt",                  precision: 15, scale: 2
    t.date      "ap_posted"
    t.decimal   "ap_total_amt",                  precision: 15, scale: 2
    t.date      "ap_disc_date"
    t.integer   "ap_jumpstart",       limit: 1
    t.string    "ap_added_by",        limit: 4
    t.date      "ap_added_when"
    t.string    "ap_voucher",         limit: 10
    t.decimal   "ap_terms1",                     precision: 9,  scale: 0
    t.decimal   "ap_terms2",                     precision: 9,  scale: 0
    t.decimal   "ap_terms3",                     precision: 9,  scale: 0
    t.date      "ap_pay_date"
    t.decimal   "ap_period",                     precision: 9,  scale: 0
    t.decimal   "ap_current",                    precision: 9,  scale: 2
    t.decimal   "ap_30",                         precision: 9,  scale: 2
    t.decimal   "ap_60",                         precision: 9,  scale: 2
    t.decimal   "ap_90",                         precision: 9,  scale: 2
    t.string    "ap_auto_pay",        limit: 10
    t.decimal   "ap_gst_gl",                     precision: 15, scale: 2
    t.decimal   "ap_gst1",                       precision: 9,  scale: 2
    t.decimal   "ap_gst2",                       precision: 9,  scale: 2
    t.decimal   "ap_amt_paid",                   precision: 15, scale: 2
    t.date      "ap_client_paid"
    t.integer   "ap_close_po",        limit: 1
    t.decimal   "ap_unpaid",                     precision: 9,  scale: 0
    t.integer   "ap_kind",            limit: 1
    t.decimal   "ap_disc_taken",                 precision: 9,  scale: 2
    t.date      "ap_exported"
    t.integer   "ap_approved",        limit: 1
    t.string    "ap_approved_by",     limit: 4
    t.timestamp "ap_approved_date"
    t.string    "ap_edited_by",       limit: 4
    t.timestamp "ap_edited_when"
    t.string    "ap_posted_by",       limit: 4
    t.date      "ap_posted_when"
    t.string    "ap_paid_cc",         limit: 10
    t.date      "ap_date_paid"
    t.string    "ap_paid_cc_inv_num", limit: 20
    t.integer   "ap_paid_online",     limit: 1
  end

  add_index "ap", ["ap_auto_pay"], name: "ap_auto_pay"
  add_index "ap", ["ap_date"], name: "ap_date"
  add_index "ap", ["ap_edited_by"], name: "ap_edited_by"
  add_index "ap", ["ap_key"], name: "ap_key"
  add_index "ap", ["ap_num"], name: "ap_num"
  add_index "ap", ["ap_pay_date"], name: "ap_pay_date"
  add_index "ap", ["ap_posted"], name: "ap_posted"
  add_index "ap", ["ap_unpaid"], name: "ap_unpaid"
  add_index "ap", ["ap_vendor_num"], name: "ap_vendor_num"

  create_table "ap_pdfs", primary_key: "ap_pdf_seq", force: true do |t|
    t.string "ap_pdf_key",    limit: 30
    t.binary "ap_pdf_binary"
  end

  add_index "ap_pdfs", ["ap_pdf_key"], name: "ap_pdf_key"

  create_table "approvals", primary_key: "appr_seq", force: true do |t|
    t.string    "appr_added_by",       limit: 4
    t.timestamp "appr_date_added"
    t.timestamp "appr_date_expires"
    t.text      "appr_instructions"
    t.string    "appr_okd_by",         limit: 4
    t.string    "appr_id",             limit: 20
    t.integer   "appr_status",         limit: 1
    t.text      "appr_status_note"
    t.timestamp "appr_okd_date"
    t.integer   "appr_rush",           limit: 1
    t.string    "appr_job_num",        limit: 10
    t.string    "appr_client_num",     limit: 10
    t.string    "appr_reply_to",       limit: 100
    t.timestamp "appr_needed_when"
    t.string    "appr_needed_by",      limit: 4
    t.timestamp "appr_sent_date"
    t.integer   "appr_draft",          limit: 1
    t.integer   "appr_kind",           limit: 1
    t.text      "appr_changes"
    t.string    "appr_step_desc",      limit: 200
    t.string    "appr_ref_num",        limit: 20
    t.string    "appr_needed_by_name", limit: 200
    t.text      "appr_file_path"
    t.string    "appr_edited_by",      limit: 4
    t.timestamp "appr_edited_when"
  end

  add_index "approvals", ["appr_added_by"], name: "appr_added_by"
  add_index "approvals", ["appr_client_num"], name: "appr_client_num"
  add_index "approvals", ["appr_date_expires"], name: "appr_date_expires"
  add_index "approvals", ["appr_id"], name: "appr_id"
  add_index "approvals", ["appr_job_num"], name: "appr_job_num"
  add_index "approvals", ["appr_kind"], name: "appr_kind"
  add_index "approvals", ["appr_needed_by"], name: "appr_needed_by"

  create_table "approvals_items", primary_key: "apprx_seq", force: true do |t|
    t.string  "apprx_id",          limit: 20
    t.string  "apprx_file_name",   limit: 100
    t.text    "apprx_file_cpx"
    t.integer "apprx_status",      limit: 1
    t.text    "apprx_status_note"
  end

  add_index "approvals_items", ["apprx_id"], name: "apprx_id"

  create_table "ar", primary_key: "ar_seq", force: true do |t|
    t.string    "ar_num",                limit: 10
    t.string    "ar_job_num",            limit: 10
    t.string    "ar_client_num",         limit: 10
    t.date      "ar_date"
    t.date      "ar_posted"
    t.string    "ar_ae",                 limit: 10
    t.string    "ar_terms",              limit: 50
    t.decimal   "ar_period",                        precision: 9,  scale: 0
    t.string    "ar_po",                 limit: 15
    t.text      "ar_desc"
    t.date      "ar_due_date"
    t.decimal   "ar_count",                         precision: 9,  scale: 0
    t.date      "ar_disc_due"
    t.decimal   "ar_disc_amt",                      precision: 15, scale: 2
    t.decimal   "ar_amt_paid",                      precision: 15, scale: 2
    t.decimal   "ar_total",                         precision: 15, scale: 2
    t.decimal   "ar_days",                          precision: 9,  scale: 0
    t.decimal   "ar_tax_amt1",                      precision: 15, scale: 2
    t.decimal   "ar_tax_amt2",                      precision: 15, scale: 2
    t.decimal   "ar_taxable1",                      precision: 15, scale: 2
    t.decimal   "ar_taxable2",                      precision: 15, scale: 2
    t.decimal   "ar_tax_rate1",                     precision: 15, scale: 4
    t.decimal   "ar_tax_rate2",                     precision: 15, scale: 4
    t.decimal   "ar_tax_cgl1",                      precision: 15, scale: 2
    t.decimal   "ar_tax_cgl2",                      precision: 15, scale: 2
    t.string    "ar_status",             limit: 20
    t.integer   "ar_open",               limit: 1
    t.integer   "ar_jump",               limit: 1
    t.decimal   "ar_dgl",                           precision: 15, scale: 2
    t.decimal   "ar_curr",                          precision: 15, scale: 2
    t.decimal   "ar_30",                            precision: 15, scale: 2
    t.decimal   "ar_60",                            precision: 15, scale: 2
    t.decimal   "ar_90",                            precision: 15, scale: 2
    t.decimal   "ar_120",                           precision: 15, scale: 2
    t.string    "ar_added_by",           limit: 4
    t.date      "ar_added_when"
    t.string    "ar_client_contact",     limit: 40
    t.string    "ar_agency_contact",     limit: 40
    t.integer   "ar_show_specs",         limit: 1
    t.string    "ar_retainr_note",       limit: 80
    t.decimal   "ar_retainer_amt",                  precision: 15, scale: 2
    t.decimal   "ar_retainer_gl",                   precision: 15, scale: 2
    t.decimal   "ar_billing_type",                  precision: 9,  scale: 0
    t.decimal   "ar_comm_amt",                      precision: 15, scale: 2
    t.decimal   "ar_comm_gl",                       precision: 15, scale: 2
    t.text      "ar_comm_desc"
    t.decimal   "ar_misc_amt1",                     precision: 15, scale: 2
    t.decimal   "ar_misc_gl1",                      precision: 15, scale: 2
    t.text      "ar_misc_desc1"
    t.decimal   "ar_misc_amt2",                     precision: 15, scale: 2
    t.decimal   "ar_misc_gl2",                      precision: 15, scale: 2
    t.text      "ar_misc_desc2"
    t.string    "ar_address1",           limit: 50
    t.string    "ar_address2",           limit: 50
    t.string    "ar_address3",           limit: 50
    t.string    "ar_address4",           limit: 50
    t.string    "ar_address5",           limit: 50
    t.string    "ar_to1",                limit: 10
    t.string    "ar_to2",                limit: 10
    t.string    "ar_to3",                limit: 10
    t.string    "ar_to4",                limit: 10
    t.string    "ar_to5",                limit: 10
    t.string    "ar_address6",           limit: 50
    t.string    "ar_zero_as",            limit: 10
    t.decimal   "ar_finance_chg",                   precision: 15, scale: 2
    t.decimal   "ar_finance_amt",                   precision: 15, scale: 2
    t.decimal   "ar_finance_cgl",                   precision: 15, scale: 2
    t.decimal   "ar_roll_up",                       precision: 15, scale: 0
    t.decimal   "ar_show_totals",                   precision: 15, scale: 0
    t.decimal   "ar_adv_pmt",                       precision: 15, scale: 2
    t.decimal   "ar_adv_pmt_gl",                    precision: 15, scale: 2
    t.string    "ar_charge_num",         limit: 20
    t.integer   "ar_print_est",          limit: 1
    t.boolean   "ar_show_hours"
    t.decimal   "ar_unpaid",                        precision: 9,  scale: 0
    t.integer   "ar_kind",               limit: 1
    t.string    "ar_key",                limit: 20
    t.string    "ar_ship_address1",      limit: 50
    t.string    "ar_ship_address2",      limit: 50
    t.string    "ar_ship_address3",      limit: 50
    t.string    "ar_ship_address4",      limit: 50
    t.string    "ar_ship_address5",      limit: 50
    t.string    "ar_ship_address6",      limit: 50
    t.string    "ar_pc",                 limit: 10
    t.integer   "ar_approved",           limit: 1
    t.string    "ar_approved_by",        limit: 4
    t.timestamp "ar_approved_date"
    t.string    "ar_approval1",          limit: 40
    t.string    "ar_approval2",          limit: 40
    t.string    "ar_approval3",          limit: 40
    t.date      "ar_return_date"
    t.text      "ar_bill_instructions"
    t.date      "ar_exported"
    t.integer   "ar_pmt_status",         limit: 1
    t.text      "ar_pmt_status_note"
    t.timestamp "ar_pmt_next_date"
    t.integer   "ar_pmt_next_action",    limit: 1
    t.string    "ar_pmt_next_who",       limit: 4
    t.text      "ar_pmt_next_note"
    t.decimal   "ar_pmt_next_num",                  precision: 9,  scale: 0
    t.string    "ar_bizdev_ae",          limit: 10
    t.decimal   "ar_commissionable_amt",            precision: 9,  scale: 2
    t.decimal   "ar_comm_rate_ae",                  precision: 9,  scale: 2
    t.decimal   "ar_comm_rate_biz",                 precision: 9,  scale: 2
    t.date      "ar_date_paid"
    t.string    "ar_edited_by",          limit: 4
    t.timestamp "ar_edited_when"
    t.string    "ar_posted_by",          limit: 4
    t.timestamp "ar_posted_when"
    t.decimal   "ar_terms1",                        precision: 9,  scale: 0
    t.decimal   "ar_terms2",                        precision: 9,  scale: 0
    t.decimal   "ar_terms3",                        precision: 9,  scale: 0
    t.string    "ar_tax_area",           limit: 20
    t.string    "ar_ship_org",           limit: 50
  end

  add_index "ar", ["ar_added_by"], name: "ar_added_by"
  add_index "ar", ["ar_ae"], name: "ar_ae"
  add_index "ar", ["ar_billing_type"], name: "ar_billing_type"
  add_index "ar", ["ar_client_num"], name: "ar_client_num"
  add_index "ar", ["ar_date"], name: "ar_date"
  add_index "ar", ["ar_date_paid"], name: "ar_date_paid"
  add_index "ar", ["ar_due_date"], name: "ar_due_date"
  add_index "ar", ["ar_job_num"], name: "ar_job_num"
  add_index "ar", ["ar_key"], name: "ar_key"
  add_index "ar", ["ar_num"], name: "ar_num"
  add_index "ar", ["ar_pc"], name: "ar_pc"
  add_index "ar", ["ar_period"], name: "ar_period"
  add_index "ar", ["ar_pmt_next_action"], name: "ar_pmt_next_action"
  add_index "ar", ["ar_pmt_next_date"], name: "ar_pmt_next_date"
  add_index "ar", ["ar_pmt_status"], name: "ar_pmt_status"
  add_index "ar", ["ar_po"], name: "ar_po"
  add_index "ar", ["ar_posted"], name: "ar_posted"
  add_index "ar", ["ar_unpaid"], name: "ar_unpaid"

  create_table "ar_items", primary_key: "ax_seq", force: true do |t|
    t.string    "ax_job_num",        limit: 10
    t.string    "ax_task",           limit: 4
    t.string    "ax_ar_num",         limit: 10
    t.decimal   "ax_amt",                       precision: 15, scale: 2
    t.decimal   "ax_sort",                      precision: 9,  scale: 0
    t.decimal   "ax_group",                     precision: 9,  scale: 0
    t.boolean   "ax_taxable1"
    t.boolean   "ax_taxable2"
    t.text      "ax_desc"
    t.date      "ax_date"
    t.decimal   "ax_cgl",                       precision: 15, scale: 2
    t.date      "ax_posted"
    t.decimal   "ax_period",                    precision: 9,  scale: 0
    t.string    "ax_name",           limit: 50
    t.decimal   "ax_hours_billed",              precision: 15, scale: 2
    t.decimal   "ax_hide",                      precision: 9,  scale: 0
    t.string    "ax_roll_up",        limit: 4
    t.integer   "ax_show_desc",      limit: 1
    t.decimal   "ax_qty",                       precision: 15, scale: 0
    t.string    "ax_pox_key",        limit: 15
    t.string    "ax_pub",            limit: 20
    t.string    "ax_issue_date",     limit: 15
    t.decimal   "ax_cost",                      precision: 9,  scale: 2
    t.date      "ax_exported"
    t.string    "ax_pc",             limit: 10
    t.string    "ax_client_num",     limit: 10
    t.integer   "ax_commissionable", limit: 1
    t.string    "ax_added_by",       limit: 4
    t.timestamp "ax_added_when"
    t.string    "ax_edited_by",      limit: 4
    t.timestamp "ax_edited_when"
  end

  add_index "ar_items", ["ax_ar_num"], name: "ax_ar_num"
  add_index "ar_items", ["ax_date"], name: "ax_date"
  add_index "ar_items", ["ax_job_num"], name: "ax_job_num"
  add_index "ar_items", ["ax_period"], name: "ax_period"
  add_index "ar_items", ["ax_posted"], name: "ax_posted"
  add_index "ar_items", ["ax_pox_key"], name: "ax_pox_key"
  add_index "ar_items", ["ax_task"], name: "ax_task"

  create_table "archived_jobs", primary_key: "aj_seq", force: true do |t|
    t.string "aj_job_num",  limit: 10
    t.string "aj_name",     limit: 50
    t.string "aj_form",     limit: 25
    t.string "aj_printer",  limit: 25
    t.string "aj_artist",   limit: 25
    t.string "aj_location", limit: 25
    t.text   "aj_ref"
  end

  add_index "archived_jobs", ["aj_job_num"], name: "aj_job_num"

  create_table "assets_files", primary_key: "asf_seq", force: true do |t|
    t.string    "asf_job_num",           limit: 10
    t.string    "asf_file_name",         limit: 40
    t.string    "asf_file_kind",         limit: 20
    t.string    "asf_added_by",          limit: 4
    t.timestamp "asf_date_added"
    t.date      "asf_date_acquired"
    t.text      "asf_desc"
    t.string    "asf_keyword1",          limit: 20
    t.string    "asf_keyword2",          limit: 20
    t.string    "asf_keyword3",          limit: 20
    t.string    "asf_source",            limit: 10
    t.string    "asf_field1_label",      limit: 20
    t.string    "asf_field2_label",      limit: 20
    t.string    "asf_field3_label",      limit: 20
    t.string    "asf_field4_label",      limit: 20
    t.string    "asf_field5_label",      limit: 20
    t.string    "asf_field1",            limit: 20
    t.string    "asf_field2",            limit: 20
    t.string    "asf_field3",            limit: 20
    t.string    "asf_field4",            limit: 20
    t.string    "asf_field5",            limit: 20
    t.integer   "asf_ownership",         limit: 1
    t.string    "asf_author_name",       limit: 40
    t.string    "asf_author_phone",      limit: 15
    t.string    "asf_copyright",         limit: 80
    t.text      "asf_usage_restriction"
    t.timestamp "asf_last_mod_date"
    t.string    "asf_last_mod_by",       limit: 4
    t.text      "asf_last_mod_desc"
    t.integer   "asf_protected",         limit: 1
    t.string    "asf_edited_by",         limit: 4
    t.timestamp "asf_edited_when"
  end

  add_index "assets_files", ["asf_file_name"], name: "asf_file_name"
  add_index "assets_files", ["asf_job_num"], name: "asf_job_num"
  add_index "assets_files", ["asf_keyword1"], name: "asf_keyword1"
  add_index "assets_files", ["asf_keyword2"], name: "asf_keyword2"
  add_index "assets_files", ["asf_keyword3"], name: "asf_keyword3"

  create_table "assets_prefs", primary_key: "asp_seq", force: true do |t|
    t.string    "asp_code",          limit: 4
    t.integer   "asp_auto_folder",   limit: 1
    t.string    "asp_art_server",    limit: 200
    t.string    "asp_ip",            limit: 15
    t.string    "asp_field1",        limit: 20
    t.string    "asp_field2",        limit: 20
    t.string    "asp_field3",        limit: 20
    t.string    "asp_field4",        limit: 20
    t.string    "asp_field5",        limit: 20
    t.integer   "asp_track_usage",   limit: 1
    t.string    "asp_art_server_w",  limit: 200
    t.string    "asp_edited_by",     limit: 4
    t.timestamp "asp_edited_when"
    t.integer   "asp_incl_jname",    limit: 1
    t.integer   "asp_org_by_client", limit: 1
  end

  add_index "assets_prefs", ["asp_code"], name: "asp_code"

  create_table "assets_types", primary_key: "ast_seq", force: true do |t|
    t.string  "ast_file_ext", limit: 4
    t.string  "ast_app_name", limit: 100
    t.string  "ast_desc",     limit: 200
    t.string  "ast_creator",  limit: 10
    t.binary  "ast_icon"
    t.string  "ast_user",     limit: 4
    t.integer "ast_kind",     limit: 1
  end

  add_index "assets_types", ["ast_app_name"], name: "ast_app_name"
  add_index "assets_types", ["ast_creator"], name: "ast_creator"
  add_index "assets_types", ["ast_file_ext"], name: "ast_file_ext"
  add_index "assets_types", ["ast_user"], name: "ast_user"

  create_table "avail", primary_key: "av_seq", force: true do |t|
    t.string    "av_initials",   limit: 10
    t.date      "av_date"
    t.string    "av_key",        limit: 16
    t.integer   "av_kind",       limit: 1
    t.text      "av_note"
    t.string    "av_desc",       limit: 20
    t.string    "av_added_by",   limit: 4
    t.timestamp "av_added_when"
    t.string    "av_edited_by",  limit: 4
    t.timestamp "av_edit_when"
  end

  add_index "avail", ["av_added_when"], name: "av_added_when"
  add_index "avail", ["av_date"], name: "av_date"
  add_index "avail", ["av_initials"], name: "av_initials"
  add_index "avail", ["av_key"], name: "av_key"

  create_table "billing_info", primary_key: "b_seq", force: true do |t|
    t.string    "b_job_num",     limit: 10
    t.string    "b_cost_ctr1",   limit: 15
    t.string    "b_cost_ctr2",   limit: 15
    t.string    "b_cost_ctr3",   limit: 15
    t.string    "b_cost_ctr4",   limit: 15
    t.string    "b_cost_ctr5",   limit: 15
    t.string    "b_cost_ctr6",   limit: 15
    t.string    "b_cost_ctr7",   limit: 15
    t.string    "b_cost_ctr8",   limit: 15
    t.string    "b_cost_ctr9",   limit: 15
    t.string    "b_acct1",       limit: 10
    t.string    "b_acct2",       limit: 10
    t.string    "b_acct3",       limit: 10
    t.string    "b_acct4",       limit: 10
    t.string    "b_acct5",       limit: 10
    t.string    "b_acct6",       limit: 10
    t.string    "b_acct7",       limit: 10
    t.string    "b_acct8",       limit: 10
    t.string    "b_acct9",       limit: 10
    t.decimal   "b_percent1",               precision: 9, scale: 2
    t.decimal   "b_percent2",               precision: 9, scale: 2
    t.decimal   "b_percent3",               precision: 9, scale: 2
    t.decimal   "b_percent4",               precision: 9, scale: 2
    t.decimal   "b_percent5",               precision: 9, scale: 2
    t.decimal   "b_percent6",               precision: 9, scale: 2
    t.decimal   "b_percent7",               precision: 9, scale: 2
    t.decimal   "b_percent8",               precision: 9, scale: 2
    t.decimal   "b_percent9",               precision: 9, scale: 2
    t.string    "b_edited_by",   limit: 4
    t.timestamp "b_edited_when"
  end

  add_index "billing_info", ["b_job_num"], name: "b_job_num"

  create_table "bookmarks", primary_key: "book_seq", force: true do |t|
    t.string  "book_work",       limit: 4
    t.string  "book_window",     limit: 200
    t.text    "book_find_value"
    t.string  "book_desc",       limit: 200
    t.string  "book_find_field", limit: 200
    t.decimal "book_sort",                   precision: 9, scale: 0
    t.text    "book_desc_user"
    t.text    "book_do_method"
    t.text    "book_do_calc"
  end

  create_table "cal", primary_key: "cl_seq", force: true do |t|
    t.string  "cl_month", limit: 20
    t.decimal "cl_year",              precision: 9, scale: 0
    t.integer "cl_day01", limit: 1
    t.integer "cl_day02", limit: 1
    t.integer "cl_day03", limit: 1
    t.integer "cl_day04", limit: 1
    t.integer "cl_day05", limit: 1
    t.integer "cl_day06", limit: 1
    t.integer "cl_day07", limit: 1
    t.integer "cl_day08", limit: 1
    t.integer "cl_day09", limit: 1
    t.integer "cl_day10", limit: 1
    t.integer "cl_day11", limit: 1
    t.integer "cl_day12", limit: 1
    t.integer "cl_day13", limit: 1
    t.integer "cl_day14", limit: 1
    t.integer "cl_day15", limit: 1
    t.integer "cl_day16", limit: 1
    t.integer "cl_day17", limit: 1
    t.integer "cl_day18", limit: 1
    t.integer "cl_day19", limit: 1
    t.integer "cl_day20", limit: 1
    t.integer "cl_day21", limit: 1
    t.integer "cl_day22", limit: 1
    t.integer "cl_day23", limit: 1
    t.integer "cl_day24", limit: 1
    t.integer "cl_day25", limit: 1
    t.integer "cl_day26", limit: 1
    t.integer "cl_day27", limit: 1
    t.integer "cl_day28", limit: 1
    t.integer "cl_day29", limit: 1
    t.integer "cl_day30", limit: 1
    t.integer "cl_day31", limit: 1
    t.integer "cl_day32", limit: 1
    t.integer "cl_day33", limit: 1
    t.integer "cl_day34", limit: 1
    t.integer "cl_day35", limit: 1
    t.integer "cl_day36", limit: 1
    t.integer "cl_day37", limit: 1
    t.integer "cl_day38", limit: 1
    t.integer "cl_day39", limit: 1
    t.integer "cl_day40", limit: 1
    t.integer "cl_day41", limit: 1
    t.integer "cl_day42", limit: 1
    t.string  "cl_cal01", limit: 100
    t.string  "cl_cal02", limit: 100
    t.string  "cl_cal03", limit: 100
    t.string  "cl_cal04", limit: 100
    t.string  "cl_cal05", limit: 100
    t.string  "cl_cal06", limit: 100
    t.string  "cl_cal07", limit: 100
    t.string  "cl_cal08", limit: 100
    t.string  "cl_cal09", limit: 100
    t.string  "cl_cal10", limit: 100
    t.string  "cl_cal11", limit: 100
    t.string  "cl_cal12", limit: 100
    t.string  "cl_cal13", limit: 100
    t.string  "cl_cal14", limit: 100
    t.string  "cl_cal15", limit: 100
    t.string  "cl_cal16", limit: 100
    t.string  "cl_cal17", limit: 100
    t.string  "cl_cal18", limit: 100
    t.string  "cl_cal19", limit: 100
    t.string  "cl_cal20", limit: 100
    t.string  "cl_cal21", limit: 100
    t.string  "cl_cal22", limit: 100
    t.string  "cl_cal23", limit: 100
    t.string  "cl_cal24", limit: 100
    t.string  "cl_cal25", limit: 100
    t.string  "cl_cal26", limit: 100
    t.string  "cl_cal27", limit: 100
    t.string  "cl_cal28", limit: 100
    t.string  "cl_cal29", limit: 100
    t.string  "cl_cal30", limit: 100
    t.string  "cl_cal31", limit: 100
    t.string  "cl_cal32", limit: 100
    t.string  "cl_cal33", limit: 100
    t.string  "cl_cal34", limit: 100
    t.string  "cl_cal35", limit: 100
    t.string  "cl_cal36", limit: 100
    t.string  "cl_cal37", limit: 100
    t.string  "cl_cal38", limit: 100
    t.string  "cl_cal39", limit: 100
    t.string  "cl_cal40", limit: 100
    t.string  "cl_cal41", limit: 100
    t.string  "cl_cal42", limit: 100
  end

  add_index "cal", ["cl_day02"], name: "cl_day02"

  create_table "calendar", primary_key: "cal_seq", force: true do |t|
    t.integer "cal_kind",        limit: 1
    t.date    "cal_date"
    t.string  "cal_to_from",     limit: 30
    t.decimal "cal_amt",                     precision: 9, scale: 2
    t.string  "cal_added_by",    limit: 3
    t.text    "cal_desc"
    t.text    "cal_mail_to"
    t.integer "cal_notified",    limit: 1
    t.time    "cal_time"
    t.integer "cal_priority",    limit: 1
    t.string  "cal_status",      limit: 100
    t.string  "cal_id",          limit: 10
    t.string  "cal_client_num",  limit: 10
    t.string  "cal_subject",     limit: 150
    t.integer "cal_notify_days", limit: 1
    t.string  "cal_location",    limit: 25
    t.string  "cal_job_num",     limit: 15
    t.string  "cal_task",        limit: 4
  end

  add_index "calendar", ["cal_client_num"], name: "cal_client_num"
  add_index "calendar", ["cal_date"], name: "cal_date"
  add_index "calendar", ["cal_id"], name: "cal_id"
  add_index "calendar", ["cal_kind"], name: "cal_kind"

  create_table "change_items", primary_key: "chx_seq", force: true do |t|
    t.string    "chx_job_num",     limit: 10
    t.string    "chx_task",        limit: 4
    t.string    "chx_name",        limit: 100
    t.decimal   "chx_hours",                   precision: 9, scale: 2
    t.decimal   "chx_budget",                  precision: 9, scale: 2
    t.decimal   "chx_estimate",                precision: 9, scale: 2
    t.text      "chx_notes"
    t.string    "chx_num",         limit: 14
    t.integer   "chx_taxable1",    limit: 1
    t.integer   "chx_taxable2",    limit: 1
    t.integer   "chx_rollup",      limit: 1
    t.string    "chx_added_by",    limit: 4
    t.timestamp "chx_added_when"
    t.string    "chx_edited_by",   limit: 4
    t.timestamp "chx_edited_when"
  end

  add_index "change_items", ["chx_job_num"], name: "chx_job_num"
  add_index "change_items", ["chx_num"], name: "chx_num"

  create_table "change_order", primary_key: "change_seq", force: true do |t|
    t.string    "change_job_num",       limit: 10
    t.string    "change_task1",         limit: 4
    t.string    "change_num",           limit: 14
    t.string    "change_who",           limit: 4
    t.timestamp "change_date"
    t.string    "change_desc",          limit: 60
    t.decimal   "change_ok",                       precision: 15, scale: 0
    t.text      "change_note"
    t.decimal   "change_amt1",                     precision: 9,  scale: 2
    t.decimal   "change_type",                     precision: 9,  scale: 0
    t.string    "change_task2",         limit: 4
    t.string    "change_task3",         limit: 4
    t.string    "change_task4",         limit: 4
    t.decimal   "change_amt2",                     precision: 9,  scale: 2
    t.decimal   "change_amt3",                     precision: 9,  scale: 2
    t.decimal   "change_amt4",                     precision: 9,  scale: 2
    t.decimal   "change_total",                    precision: 9,  scale: 2
    t.string    "change_task5",         limit: 4
    t.string    "change_task6",         limit: 4
    t.decimal   "change_amt5",                     precision: 9,  scale: 2
    t.decimal   "change_amt6",                     precision: 9,  scale: 2
    t.string    "change_other",         limit: 20
    t.string    "change_name",          limit: 40
    t.decimal   "change_bamt1",                    precision: 9,  scale: 2
    t.decimal   "change_bamt2",                    precision: 9,  scale: 2
    t.decimal   "change_bamt3",                    precision: 9,  scale: 2
    t.decimal   "change_bamt4",                    precision: 9,  scale: 2
    t.decimal   "change_bamt5",                    precision: 9,  scale: 2
    t.decimal   "change_bamt6",                    precision: 9,  scale: 2
    t.decimal   "change_sales_tax1",               precision: 9,  scale: 2
    t.decimal   "change_sales_tax2",               precision: 9,  scale: 2
    t.string    "change_rollup1",       limit: 4
    t.string    "change_rollup2",       limit: 4
    t.string    "change_rollup3",       limit: 4
    t.string    "change_rollup4",       limit: 4
    t.string    "change_rollup5",       limit: 4
    t.string    "change_rollup6",       limit: 4
    t.decimal   "change_hours1",                   precision: 9,  scale: 2
    t.decimal   "change_hours2",                   precision: 9,  scale: 2
    t.decimal   "change_hours3",                   precision: 9,  scale: 2
    t.decimal   "change_hours4",                   precision: 9,  scale: 2
    t.decimal   "change_hours5",                   precision: 9,  scale: 2
    t.decimal   "change_hours6",                   precision: 9,  scale: 2
    t.integer   "change_roll_up",       limit: 1
    t.string    "change_status",        limit: 40
    t.integer   "change_approve",       limit: 1
    t.text      "change_mail_to"
    t.integer   "change_send_pdf",      limit: 1
    t.string    "change_approved_by",   limit: 10
    t.timestamp "change_approved_date"
    t.integer   "change_approved",      limit: 1
    t.string    "change_edited_by",     limit: 4
    t.timestamp "change_edited_when"
    t.string    "change_added_by",      limit: 4
    t.timestamp "change_added_when"
  end

  add_index "change_order", ["change_date"], name: "change_date"
  add_index "change_order", ["change_job_num"], name: "change_job_num"
  add_index "change_order", ["change_num"], name: "change_num"
  add_index "change_order", ["change_ok"], name: "change_ok"

  create_table "check_items", primary_key: "cx_seq", force: true do |t|
    t.date      "cx_ck_date"
    t.decimal   "cx_net_amt",                precision: 15, scale: 2
    t.decimal   "cx_dgl",                    precision: 15, scale: 2
    t.string    "cx_ap_num",      limit: 20
    t.string    "cx_vendor_num",  limit: 10
    t.string    "cx_job_num",     limit: 10
    t.string    "cx_task",        limit: 4
    t.date      "cx_posted"
    t.decimal   "cx_gross_amt",              precision: 15, scale: 2
    t.decimal   "cx_ck_num",                 precision: 15, scale: 0
    t.decimal   "cx_comm_amt",               precision: 9,  scale: 2
    t.decimal   "cx_markup_pc",              precision: 15, scale: 2
    t.decimal   "cx_disc_amt",               precision: 15, scale: 2
    t.integer   "cx_period",      limit: 1
    t.decimal   "cx_cost_seq",               precision: 9,  scale: 0
    t.decimal   "cx_disc_dgl",               precision: 15, scale: 2
    t.integer   "cx_billable",    limit: 1
    t.text      "cx_note"
    t.string    "cx_added_by",    limit: 4
    t.timestamp "cx_added_when"
    t.string    "cx_edited_by",   limit: 4
    t.timestamp "cx_edited_when"
  end

  add_index "check_items", ["cx_ap_num"], name: "cx_ap_num"
  add_index "check_items", ["cx_ck_date"], name: "cx_ck_date"
  add_index "check_items", ["cx_ck_num"], name: "cx_ck_num"
  add_index "check_items", ["cx_cost_seq"], name: "cx_cost_seq"
  add_index "check_items", ["cx_job_num"], name: "cx_job_num"
  add_index "check_items", ["cx_period"], name: "cx_period"
  add_index "check_items", ["cx_posted"], name: "cx_posted"
  add_index "check_items", ["cx_task"], name: "cx_task"
  add_index "check_items", ["cx_vendor_num"], name: "cx_vendor_num"

  create_table "checks", primary_key: "ck_seq", force: true do |t|
    t.decimal   "ck_num",                               precision: 9,  scale: 0
    t.string    "ck_vendor_num",             limit: 10
    t.string    "ck_payee",                  limit: 40
    t.string    "ck_address1",               limit: 40
    t.string    "ck_address2",               limit: 40
    t.string    "ck_address3",               limit: 40
    t.date      "ck_date"
    t.date      "ck_posted"
    t.text      "ck_memo"
    t.decimal   "ck_net_amt",                           precision: 15, scale: 2
    t.decimal   "ck_cgl",                               precision: 15, scale: 2
    t.integer   "ck_pay",                    limit: 1
    t.string    "ck_added_by",               limit: 4
    t.date      "ck_added_when"
    t.integer   "ck_cleared",                limit: 1
    t.integer   "ck_dont_print",             limit: 1
    t.string    "ck_amount",                 limit: 80
    t.string    "ck_type",                   limit: 10
    t.decimal   "ck_gross",                             precision: 15, scale: 2
    t.decimal   "ck_disc_amt",                          precision: 15, scale: 2
    t.decimal   "ck_disc_gl",                           precision: 15, scale: 2
    t.integer   "ck_ok",                     limit: 1
    t.decimal   "ck_period",                            precision: 9,  scale: 0
    t.integer   "ck_1099"
    t.string    "ck_tax_id",                 limit: 15
    t.decimal   "ck_emp_adv_exp",                       precision: 9,  scale: 2
    t.decimal   "ck_empl_adv_ck",                       precision: 9,  scale: 0
    t.string    "ck_edited_by",              limit: 4
    t.timestamp "ck_edited_when"
    t.string    "ck_posted_by",              limit: 4
    t.timestamp "ck_posted_when"
    t.string    "ck_online_pmt_confirm_num", limit: 50
  end

  add_index "checks", ["ck_1099"], name: "ck_1099"
  add_index "checks", ["ck_added_by"], name: "ck_added_by"
  add_index "checks", ["ck_cleared"], name: "ck_cleared"
  add_index "checks", ["ck_date"], name: "ck_date"
  add_index "checks", ["ck_empl_adv_ck"], name: "ck_empl_adv_ck"
  add_index "checks", ["ck_num"], name: "ck_num"
  add_index "checks", ["ck_ok"], name: "ck_ok"
  add_index "checks", ["ck_pay"], name: "ck_pay"
  add_index "checks", ["ck_payee"], name: "ck_payee"
  add_index "checks", ["ck_period"], name: "ck_period"
  add_index "checks", ["ck_posted"], name: "ck_posted"
  add_index "checks", ["ck_type"], name: "ck_type"
  add_index "checks", ["ck_vendor_num"], name: "ck_vendor_num"

  create_table "claven_sales", id: false, force: true do |t|
    t.string  "s_num",           limit: 10
    t.string  "s_pr_job_num",    limit: 10
    t.string  "s_pr_task",       limit: 4
    t.string  "s_client",        limit: 10
    t.float   "s_how_paid"
    t.string  "s_terms",         limit: 40
    t.date    "s_invoice_date"
    t.string  "s_ship_org",      limit: 40
    t.decimal "s_price",                    precision: 9,  scale: 2
    t.string  "s_product_name",  limit: 60
    t.decimal "s_ts_credit_amt",            precision: 15, scale: 2
    t.string  "s_disc_desc",     limit: 40
    t.decimal "s_addl_qty",                 precision: 9,  scale: 0
    t.decimal "s_addl_user_amt",            precision: 15, scale: 2
    t.string  "s_options_desc",  limit: 40
    t.decimal "s_amt_options",              precision: 9,  scale: 2
    t.decimal "s_tax_rate",                 precision: 9,  scale: 2
    t.decimal "s_support_amt",              precision: 9,  scale: 2
    t.decimal "s_ship_amt",                 precision: 9,  scale: 2
    t.decimal "s_invoice_total",            precision: 9,  scale: 2
    t.decimal "s_discount",                 precision: 9,  scale: 2
    t.decimal "s_sales_tax",                precision: 9,  scale: 2
  end

  create_table "clients", primary_key: "c_seq", force: true do |t|
    t.string    "c_num",               limit: 10
    t.string    "c_org",               limit: 40
    t.string    "c_address1",          limit: 50
    t.string    "c_address2",          limit: 50
    t.string    "c_address3",          limit: 50
    t.string    "c_address4",          limit: 50
    t.string    "c_contact1",          limit: 75
    t.string    "c_contact2",          limit: 75
    t.string    "c_contact3",          limit: 75
    t.string    "c_contact4",          limit: 75
    t.string    "c_phone1",            limit: 20
    t.string    "c_phone2",            limit: 20
    t.string    "c_phone3",            limit: 20
    t.string    "c_phone4",            limit: 20
    t.string    "c_terms",             limit: 20
    t.string    "c_type",              limit: 10
    t.decimal   "c_job_num",                       precision: 15, scale: 0
    t.text      "c_note"
    t.decimal   "c1",                              precision: 15, scale: 2
    t.decimal   "c2",                              precision: 15, scale: 2
    t.decimal   "c3",                              precision: 15, scale: 2
    t.decimal   "c4",                              precision: 15, scale: 2
    t.decimal   "c5",                              precision: 15, scale: 2
    t.decimal   "c6",                              precision: 15, scale: 2
    t.decimal   "c7",                              precision: 15, scale: 2
    t.decimal   "c8",                              precision: 15, scale: 2
    t.decimal   "c9",                              precision: 15, scale: 2
    t.decimal   "c10",                             precision: 15, scale: 2
    t.decimal   "c11",                             precision: 15, scale: 2
    t.decimal   "c12",                             precision: 15, scale: 2
    t.string    "c_address5",          limit: 50
    t.string    "c_address6",          limit: 50
    t.text      "c_job_alert"
    t.text      "c_ar_alert"
    t.text      "c_pay_alert"
    t.decimal   "c_ytd",                           precision: 15, scale: 2
    t.text      "c_notes"
    t.decimal   "c_curr",                          precision: 9,  scale: 2
    t.decimal   "c_30",                            precision: 9,  scale: 2
    t.decimal   "c_60",                            precision: 9,  scale: 2
    t.decimal   "c_90",                            precision: 9,  scale: 2
    t.decimal   "c_credit_limit",                  precision: 15, scale: 2
    t.date      "c_last_aging"
    t.decimal   "c_markup",                        precision: 9,  scale: 2
    t.decimal   "c_retainer_bal",                  precision: 15, scale: 2
    t.decimal   "c_retainer_cgl",                  precision: 15, scale: 2
    t.decimal   "c_tax_rate1",                     precision: 15, scale: 4
    t.decimal   "c_tax_rate2",                     precision: 15, scale: 4
    t.string    "c_tax_area",          limit: 20
    t.decimal   "c_tax_gl1",                       precision: 15, scale: 2
    t.decimal   "c_tax_gl2",                       precision: 15, scale: 2
    t.decimal   "c_budget_1",                      precision: 9,  scale: 2
    t.decimal   "c_budget_2",                      precision: 9,  scale: 2
    t.decimal   "c_budget_3",                      precision: 9,  scale: 2
    t.decimal   "c_budget_4",                      precision: 9,  scale: 2
    t.decimal   "c_budget_5",                      precision: 9,  scale: 2
    t.decimal   "c_budget_6",                      precision: 9,  scale: 2
    t.decimal   "c_budget_7",                      precision: 9,  scale: 2
    t.decimal   "c_budget_8",                      precision: 9,  scale: 2
    t.decimal   "c_budget_9",                      precision: 9,  scale: 2
    t.decimal   "c_budget_10",                     precision: 9,  scale: 2
    t.decimal   "c_budget_11",                     precision: 9,  scale: 2
    t.decimal   "c_budget_12",                     precision: 9,  scale: 2
    t.decimal   "c_budget_ytd",                    precision: 9,  scale: 2
    t.decimal   "c_last_year1",                    precision: 9,  scale: 2
    t.decimal   "c_last_year2",                    precision: 9,  scale: 2
    t.decimal   "c_last_year3",                    precision: 9,  scale: 2
    t.decimal   "c_last_year4",                    precision: 9,  scale: 2
    t.decimal   "c_last_year5",                    precision: 9,  scale: 2
    t.decimal   "c_last_year6",                    precision: 9,  scale: 2
    t.decimal   "c_last_year7",                    precision: 9,  scale: 2
    t.decimal   "c_last_year8",                    precision: 9,  scale: 2
    t.decimal   "c_last_year9",                    precision: 9,  scale: 2
    t.decimal   "c_last_year10",                   precision: 9,  scale: 2
    t.decimal   "c_last_year11",                   precision: 9,  scale: 2
    t.decimal   "c_last_year12",                   precision: 9,  scale: 2
    t.integer   "c_in_house",          limit: 1
    t.string    "c_ae",                limit: 10
    t.decimal   "c_baln",                          precision: 15, scale: 2
    t.decimal   "c_bill_rate",                     precision: 15, scale: 2
    t.decimal   "c_finance_chg",                   precision: 15, scale: 2
    t.string    "c_fax",               limit: 20
    t.integer   "c_logo",              limit: 1
    t.string    "c_division",          limit: 10
    t.string    "c_to1",               limit: 10
    t.string    "c_to2",               limit: 10
    t.string    "c_to3",               limit: 10
    t.string    "c_to4",               limit: 10
    t.string    "c_to5",               limit: 10
    t.string    "c_cost_center",       limit: 20
    t.decimal   "c_retainer_dgl",                  precision: 15, scale: 2
    t.decimal   "c_retainer_pmts",                 precision: 15, scale: 2
    t.decimal   "c_media_plan",                    precision: 9,  scale: 0
    t.string    "c_po",                limit: 15
    t.string    "c_bill_address1",     limit: 50
    t.string    "c_bill_address2",     limit: 50
    t.string    "c_bill_address3",     limit: 50
    t.string    "c_bill_address4",     limit: 50
    t.string    "c_bill_address5",     limit: 50
    t.string    "c_bill_address6",     limit: 50
    t.decimal   "c_active",                        precision: 9,  scale: 0
    t.string    "c_media_jnum",        limit: 10
    t.string    "c_media_task",        limit: 4
    t.decimal   "c_media_comm",                    precision: 9,  scale: 2
    t.decimal   "c_media_est_num",                 precision: 15, scale: 0
    t.integer   "c_team_access",       limit: 1
    t.string    "c_team",              limit: 10
    t.text      "c_mail_job_to"
    t.text      "c_mail_job_msg"
    t.string    "c_mail_job_cc",       limit: 40
    t.string    "c_mail_job_bcc",      limit: 40
    t.text      "c_mail_ar_to"
    t.text      "c_mail_ar_msg"
    t.string    "c_mail_ar_cc",        limit: 40
    t.string    "c_mail_ar_bcc",       limit: 40
    t.text      "c_mail_pmt_to"
    t.text      "c_mail_pmt_msg"
    t.string    "c_mail_pmt_cc",       limit: 40
    t.string    "c_mail_pmt_bcc",      limit: 40
    t.integer   "c_unbillable",        limit: 1
    t.string    "c_pc",                limit: 10
    t.integer   "c_oa_period",         limit: 1
    t.decimal   "c_oa_mtd",                        precision: 15, scale: 2
    t.decimal   "c_oa_ytd",                        precision: 15, scale: 2
    t.decimal   "c_oa_labor",                      precision: 15, scale: 2
    t.string    "c_url",               limit: 50
    t.string    "c_email",             limit: 100
    t.decimal   "c_media_dgl",                     precision: 15, scale: 2
    t.decimal   "c_media_disc",                    precision: 15, scale: 2
    t.string    "c_ship_address1",     limit: 50
    t.string    "c_ship_address2",     limit: 50
    t.string    "c_ship_address3",     limit: 50
    t.string    "c_ship_address4",     limit: 50
    t.string    "c_ship_address5",     limit: 50
    t.string    "c_ship_address6",     limit: 50
    t.string    "c_corp_id",           limit: 100
    t.date      "c_first_call"
    t.timestamp "c_last_call"
    t.integer   "c_credit_hold",       limit: 1
    t.string    "c_bizdev_ae",         limit: 10
    t.integer   "c_commissionable",    limit: 1
    t.integer   "c_show_hours",        limit: 1
    t.string    "c_edited_by",         limit: 4
    t.timestamp "c_edited_when"
    t.decimal   "c_terms1",                        precision: 9,  scale: 0
    t.decimal   "c_terms2",                        precision: 9,  scale: 0
    t.decimal   "c_terms3",                        precision: 9,  scale: 0
    t.decimal   "c_dgl",                           precision: 15, scale: 2
    t.string    "c_ncf_prefix",        limit: 19
    t.string    "c_ctc_col1",          limit: 25
    t.string    "c_ctc_col2",          limit: 25
    t.string    "c_ctc_col4",          limit: 25
    t.string    "c_ctc_col6",          limit: 25
    t.string    "c_ctc_col7",          limit: 25
    t.string    "c_ctc_col8",          limit: 25
    t.string    "c_ctc_col9",          limit: 25
    t.integer   "c_fast_fin_grade_a",  limit: 1
    t.integer   "c_fast_fin_grade_b",  limit: 1
    t.integer   "c_fast_fin_grade_c",  limit: 1
    t.integer   "c_fast_fin_grade_d",  limit: 1
    t.integer   "c_fast_time_grade_c", limit: 1
    t.integer   "c_fast_time_grade_d", limit: 1
    t.decimal   "c_tax_rate3",                     precision: 15, scale: 4
    t.decimal   "c_tax_gl3",                       precision: 15, scale: 2
    t.decimal   "c_ar_show_totals",                precision: 15, scale: 0
    t.decimal   "c_ar_roll_up",                    precision: 15, scale: 0
    t.decimal   "c_ar_show_specs",                 precision: 15, scale: 0
    t.decimal   "c_ar_show_hours",                 precision: 15, scale: 0
    t.decimal   "c_ar_print_est",                  precision: 15, scale: 0
    t.string    "c_ar_zero_as",        limit: 10
    t.integer   "c_ot_weekend",        limit: 1
    t.integer   "c_ot_holiday",        limit: 1
    t.string    "c_pipeline_col1",     limit: 20
    t.string    "c_pipeline_col2",     limit: 20
    t.string    "c_pipeline_col3",     limit: 20
    t.string    "c_pipeline_col4",     limit: 20
    t.string    "c_pipeline_col5",     limit: 20
    t.string    "c_pipeline_col6",     limit: 20
    t.string    "c_pipeline_col7",     limit: 20
    t.string    "c_pipeline_col8",     limit: 20
    t.string    "c_pipeline_col9",     limit: 20
  end

  add_index "clients", ["c_active"], name: "c_active"
  add_index "clients", ["c_ae"], name: "c_ae"
  add_index "clients", ["c_corp_id"], name: "c_corp_id"
  add_index "clients", ["c_cost_center"], name: "c_cost_center"
  add_index "clients", ["c_division"], name: "c_division"
  add_index "clients", ["c_num"], name: "c_num"
  add_index "clients", ["c_org"], name: "c_org"
  add_index "clients", ["c_team"], name: "c_team"
  add_index "clients", ["c_type"], name: "c_type"

  create_table "comments", force: true do |t|
    t.string    "name"
    t.text      "body"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "contacts", primary_key: "con_seq", force: true do |t|
    t.string    "con_c_num",          limit: 10
    t.string    "con_v_num",          limit: 10
    t.integer   "con_kind",           limit: 1
    t.string    "con_first_name",     limit: 25
    t.string    "con_last_name",      limit: 40
    t.string    "con_mid_initial",    limit: 5
    t.string    "con_sal",            limit: 20
    t.string    "con_title",          limit: 25
    t.integer   "con_decision_maker", limit: 1
    t.string    "con_phone_work",     limit: 20
    t.string    "con_phone_home",     limit: 20
    t.string    "con_phone_mobile",   limit: 20
    t.string    "con_fax_work",       limit: 20
    t.string    "con_pager",          limit: 20
    t.text      "con_note"
    t.string    "con_email_work",     limit: 40
    t.string    "con_email_home",     limit: 40
    t.date      "con_date_added"
    t.string    "con_added_by",       limit: 4
    t.timestamp "con_last_call"
    t.string    "con_last_by",        limit: 4
    t.string    "con_fax_home",       limit: 20
    t.integer   "con_sales_email",    limit: 1
    t.string    "con_org",            limit: 100
    t.string    "con_full_name",      limit: 66
    t.string    "con_address1",       limit: 60
    t.string    "con_address2",       limit: 60
    t.string    "con_address3",       limit: 60
    t.string    "con_address4",       limit: 60
    t.string    "con_address5",       limit: 60
    t.string    "con_address6",       limit: 60
    t.integer   "con_approve_jobs",   limit: 1
    t.string    "con_edited_by",      limit: 4
    t.timestamp "con_edited_when"
  end

  add_index "contacts", ["con_c_num"], name: "con_c_num"
  add_index "contacts", ["con_decision_maker"], name: "con_decision_maker"
  add_index "contacts", ["con_full_name"], name: "con_full_name"
  add_index "contacts", ["con_kind"], name: "con_kind"
  add_index "contacts", ["con_phone_work"], name: "con_phone_work"
  add_index "contacts", ["con_v_num"], name: "con_v_num"

  create_table "costs", primary_key: "cost_seq", force: true do |t|
    t.string    "cost_num",              limit: 20
    t.string    "cost_job_num",          limit: 10
    t.string    "cost_task",             limit: 4
    t.text      "cost_note"
    t.decimal   "cost_net_amt",                     precision: 9,  scale: 2
    t.decimal   "cost_gross_amt",                   precision: 9,  scale: 2
    t.decimal   "cost_hours",                       precision: 9,  scale: 2
    t.integer   "cost_kind",             limit: 1
    t.date      "cost_date"
    t.decimal   "cost_bill_rate",                   precision: 9,  scale: 2
    t.decimal   "cost_cost_rate",                   precision: 9,  scale: 2
    t.string    "cost_po_num",           limit: 15
    t.integer   "cost_billable",         limit: 1
    t.string    "cost_vendor",           limit: 10
    t.integer   "cost_period",           limit: 1
    t.string    "cost_client_num",       limit: 10
    t.decimal   "cost_dgl",                         precision: 15, scale: 2
    t.date      "cost_posted"
    t.string    "cost_key",              limit: 15
    t.integer   "cost_finished",         limit: 1
    t.decimal   "cost_markup",                      precision: 9,  scale: 2
    t.decimal   "cost_bill_amt",                    precision: 15, scale: 2
    t.date      "cost_ar_date"
    t.string    "cost_ar_num",           limit: 12
    t.decimal   "cost_billed_amt",                  precision: 15, scale: 2
    t.string    "cost_status",           limit: 10
    t.date      "cost_ar_paid"
    t.string    "cost_ck_num",           limit: 10
    t.string    "cost_ref",              limit: 18
    t.decimal   "cost_hours_billed",                precision: 9,  scale: 2
    t.decimal   "cost_ot",                          precision: 9,  scale: 0
    t.integer   "cost_pox_line"
    t.string    "cost_gl",               limit: 20
    t.decimal   "cost_j_prod_status",               precision: 9,  scale: 0
    t.decimal   "cost_j_bill_status",               precision: 9,  scale: 0
    t.string    "cost_pc",               limit: 10
    t.decimal   "cost_qty",                         precision: 9,  scale: 2
    t.decimal   "cost_days",                        precision: 9,  scale: 2
    t.decimal   "cost_cost_ea",                     precision: 9,  scale: 2
    t.string    "cost_size",             limit: 6
    t.string    "cost_added_by",         limit: 4
    t.decimal   "cost_gross_ea",                    precision: 9,  scale: 2
    t.decimal   "cost_adv_ck",                      precision: 9,  scale: 0
    t.date      "cost_exported"
    t.date      "cost_wip_exported"
    t.date      "cost_wip_rev_exported"
    t.integer   "cost_sales_tax",        limit: 1
    t.string    "cost_approved_by",      limit: 10
    t.timestamp "cost_approved_date"
    t.string    "cost_reimburse_ap_num", limit: 10
    t.string    "cost_exp_added_by",     limit: 4
    t.string    "cost_edited_by",        limit: 4
    t.timestamp "cost_edited_when"
    t.string    "cost_posted_by",        limit: 4
    t.timestamp "cost_posted_when"
  end

  add_index "costs", ["cost_ar_date"], name: "cost_ar_date"
  add_index "costs", ["cost_ar_num"], name: "cost_ar_num"
  add_index "costs", ["cost_client_num"], name: "cost_client_num"
  add_index "costs", ["cost_date"], name: "cost_date"
  add_index "costs", ["cost_job_num"], name: "cost_job_num"
  add_index "costs", ["cost_kind"], name: "cost_kind"
  add_index "costs", ["cost_num"], name: "cost_num"
  add_index "costs", ["cost_ot"], name: "cost_ot"
  add_index "costs", ["cost_period"], name: "cost_period"
  add_index "costs", ["cost_po_num"], name: "cost_po_num"
  add_index "costs", ["cost_posted"], name: "cost_posted"
  add_index "costs", ["cost_ref"], name: "cost_ref"
  add_index "costs", ["cost_status"], name: "cost_status"
  add_index "costs", ["cost_task"], name: "cost_task"
  add_index "costs", ["cost_vendor"], name: "cost_vendor"

  create_table "credit_card_prefs", primary_key: "cc_seq", force: true do |t|
    t.integer "cc_kind",       limit: 1
    t.string  "cc_vendor_num", limit: 10
    t.decimal "cc_cgl",                   precision: 9, scale: 0
    t.string  "cc_payee",      limit: 40
    t.string  "cc_job_num",    limit: 10
    t.string  "cc_task",       limit: 4
    t.decimal "cc_dgl",                   precision: 9, scale: 0
    t.string  "cc_acct_num",   limit: 4
  end

  add_index "credit_card_prefs", ["cc_kind"], name: "cc_kind"
  add_index "credit_card_prefs", ["cc_payee"], name: "cc_payee"
  add_index "credit_card_prefs", ["cc_vendor_num"], name: "cc_vendor_num"

  create_table "data_count", primary_key: "data_seq", force: true do |t|
    t.date    "data_date"
    t.decimal "data_ap",       precision: 15, scale: 0
    t.decimal "data_ar",       precision: 15, scale: 0
    t.decimal "data_jobs",     precision: 15, scale: 0
    t.decimal "data_checks",   precision: 15, scale: 0
    t.decimal "data_clients",  precision: 15, scale: 0
    t.decimal "data_gl",       precision: 15, scale: 0
    t.decimal "data_payments", precision: 15, scale: 0
    t.decimal "data_po",       precision: 15, scale: 0
    t.decimal "data_vendors",  precision: 15, scale: 0
    t.decimal "data_total",    precision: 15, scale: 0
  end

  add_index "data_count", ["data_date"], name: "data_date"

  create_table "depts", primary_key: "dept_seq", force: true do |t|
    t.string    "dept_office",      limit: 10
    t.string    "dept_name",        limit: 15
    t.string    "dept_desc",        limit: 40
    t.string    "dept_mgr",         limit: 10
    t.decimal   "dept_num",                    precision: 9, scale: 0
    t.string    "dept_added_by",    limit: 4
    t.timestamp "dept_added_when"
    t.string    "dept_edited_by",   limit: 4
    t.timestamp "dept_edited_when"
  end

  add_index "depts", ["dept_mgr"], name: "dept_mgr"
  add_index "depts", ["dept_name"], name: "dept_name"
  add_index "depts", ["dept_num"], name: "dept_num"

  create_table "dictionary", primary_key: "dict_seq", force: true do |t|
    t.string  "dict_name",    limit: 12
    t.integer "dict_lang_id"
  end

  add_index "dictionary", ["dict_name"], name: "dict_name"

  create_table "dictionary_word", primary_key: "dword_seq", force: true do |t|
    t.string "dword_dict_name", limit: 12
    t.string "dword_word",      limit: 40
  end

  add_index "dictionary_word", ["dword_dict_name"], name: "dword_dict_name"

  create_table "est_revs", primary_key: "rv_seq", force: true do |t|
    t.string    "rv_job_num",        limit: 10
    t.string    "rv_task",           limit: 4
    t.decimal   "rv_est1",                      precision: 9, scale: 2
    t.decimal   "rv_est2",                      precision: 9, scale: 2
    t.decimal   "rv_est3",                      precision: 9, scale: 2
    t.string    "rv_name",           limit: 40
    t.decimal   "rv_group",                     precision: 9, scale: 0
    t.decimal   "rv_sort",                      precision: 9, scale: 0
    t.integer   "rv_final",          limit: 1
    t.decimal   "rv_revision",                  precision: 9, scale: 0
    t.string    "rv_est_head1",      limit: 15
    t.string    "rv_est_head2",      limit: 15
    t.string    "rv_est_head3",      limit: 15
    t.decimal   "rv_est_hrs1",                  precision: 9, scale: 2
    t.decimal   "rv_est_hrs2",                  precision: 9, scale: 2
    t.decimal   "rv_est_hrs3",                  precision: 9, scale: 2
    t.decimal   "rv_budget",                    precision: 9, scale: 2
    t.string    "rv_revised_by",     limit: 4
    t.date      "rv_revision_date"
    t.text      "rv_revision_notes"
    t.text      "rv_reason"
    t.string    "rv_rev_okd_by",     limit: 4
    t.timestamp "rv_rev_okd_date"
    t.string    "rv_added_by",       limit: 4
    t.timestamp "rv_added_when"
    t.string    "rv_edited_by",      limit: 4
    t.timestamp "rv_edited_when"
  end

  add_index "est_revs", ["rv_job_num"], name: "rv_job_num"
  add_index "est_revs", ["rv_revision"], name: "rv_revision"
  add_index "est_revs", ["rv_task"], name: "rv_task"

  create_table "f_preference", primary_key: "pr_rsn", force: true do |t|
    t.integer "prsqlconvflag", limit: 1
  end

  create_table "finance", primary_key: "fi_seq", force: true do |t|
    t.string  "fi_ac_num",        limit: 15
    t.integer "fi_category",      limit: 1
    t.integer "fi_class",         limit: 1
    t.decimal "fi_mtd",                      precision: 15, scale: 2
    t.float   "fi_mtd_percent"
    t.decimal "fi_ytd",                      precision: 15, scale: 2
    t.float   "fi_ytd_percent"
    t.decimal "fi_month",                    precision: 15, scale: 2
    t.decimal "fi_year",                     precision: 15, scale: 2
    t.decimal "fi_1",                        precision: 15, scale: 2
    t.decimal "fi_2",                        precision: 15, scale: 2
    t.decimal "fi_3",                        precision: 15, scale: 2
    t.decimal "fi_4",                        precision: 15, scale: 2
    t.decimal "fi_5",                        precision: 15, scale: 2
    t.decimal "fi_6",                        precision: 15, scale: 2
    t.decimal "fi_7",                        precision: 15, scale: 2
    t.decimal "fi_8",                        precision: 15, scale: 2
    t.text    "fi_name"
    t.text    "fi_note"
    t.decimal "fi_sub_class",                precision: 15, scale: 0
    t.decimal "fi_roll_up",                  precision: 15, scale: 2
    t.float   "fi_pct1"
    t.float   "fi_pct2"
    t.float   "fi_pct3"
    t.float   "fi_pct4"
    t.decimal "fi_l_month",                  precision: 15, scale: 2
    t.decimal "fi_l_mtd",                    precision: 15, scale: 2
    t.decimal "fi_l_year",                   precision: 15, scale: 2
    t.decimal "fi_l_ytd",                    precision: 15, scale: 2
    t.float   "fi_l_mtd_percent"
    t.float   "fi_l_ytd_percent"
    t.float   "fi_l_pct1"
    t.float   "fi_l_pct2"
    t.float   "fi_l_pct3"
    t.float   "fi_l_pct4"
    t.string  "fi_client_num",    limit: 10
    t.decimal "fi_group",                    precision: 9,  scale: 0
    t.float   "fi_pct5"
    t.float   "fi_l_pct5"
  end

  add_index "finance", ["fi_ac_num"], name: "fi_ac_num"

  create_table "groups", primary_key: "group_seq", force: true do |t|
    t.decimal   "group_num",                    precision: 9, scale: 0
    t.string    "group_desc",        limit: 40
    t.integer   "group_cat",         limit: 1
    t.string    "group_added_by",    limit: 4
    t.timestamp "group_added_when"
    t.string    "group_edited_by",   limit: 4
    t.timestamp "group_edited_when"
  end

  add_index "groups", ["group_num"], name: "group_num"

  create_table "history", primary_key: "h_seq", force: true do |t|
    t.string    "h_job_num",     limit: 10
    t.decimal   "h_num",                    precision: 9, scale: 0
    t.string    "h_who",         limit: 4
    t.timestamp "h_date"
    t.text      "h_desc"
    t.integer   "h_resolved",    limit: 1
    t.string    "h_for",         limit: 4
    t.text      "h_user_note"
    t.text      "h_mail_to"
    t.integer   "h_manual",      limit: 1
    t.string    "h_added_by",    limit: 4
    t.timestamp "h_added_when"
    t.string    "h_edited_by",   limit: 4
    t.timestamp "h_edited_when"
  end

  add_index "history", ["h_job_num"], name: "h_job_num"
  add_index "history", ["h_resolved"], name: "h_resolved"
  add_index "history", ["h_who"], name: "h_who"

  create_table "history_client", primary_key: "hc_seq", force: true do |t|
    t.string    "hc_client_num",  limit: 10
    t.decimal   "hc_num",                    precision: 9, scale: 0
    t.string    "hc_added_by",    limit: 4
    t.timestamp "hc_date"
    t.string    "hc_subject",     limit: 80
    t.integer   "hc_ok",          limit: 1
    t.string    "hc_for",         limit: 4
    t.text      "hc_desc"
    t.text      "hc_mail_to"
    t.string    "hc_cc",          limit: 80
    t.string    "hc_bcc",         limit: 80
    t.integer   "hc_notified",    limit: 1
    t.string    "hc_inv_num",     limit: 10
    t.integer   "hc_kind",        limit: 1
    t.integer   "hc_auto_diary",  limit: 1
    t.string    "hc_edited_by",   limit: 4
    t.timestamp "hc_edited_when"
  end

  add_index "history_client", ["hc_added_by"], name: "hc_added_by"
  add_index "history_client", ["hc_client_num"], name: "hc_client_num"
  add_index "history_client", ["hc_date"], name: "hc_date"
  add_index "history_client", ["hc_kind"], name: "hc_kind"
  add_index "history_client", ["hc_ok"], name: "hc_ok"

  create_table "history_vendor", primary_key: "hv_seq", force: true do |t|
    t.string    "hv_vendor_num",  limit: 10
    t.decimal   "hv_num",                    precision: 9, scale: 0
    t.string    "hv_added_by",    limit: 4
    t.timestamp "hv_date"
    t.string    "hv_subject",     limit: 80
    t.integer   "hv_ok",          limit: 1
    t.string    "hv_for",         limit: 4
    t.text      "hv_desc"
    t.text      "hv_mail_to"
    t.string    "hv_cc",          limit: 80
    t.string    "hv_bcc",         limit: 80
    t.integer   "hv_notified",    limit: 1
    t.string    "hv_inv_num",     limit: 20
    t.string    "hv_edited_by",   limit: 4
    t.timestamp "hv_edited_when"
  end

  add_index "history_vendor", ["hv_added_by"], name: "hv_added_by"
  add_index "history_vendor", ["hv_date"], name: "hv_date"
  add_index "history_vendor", ["hv_ok"], name: "hv_ok"
  add_index "history_vendor", ["hv_vendor_num"], name: "hv_vendor_num"

  create_table "home_comments", primary_key: "comment_seq", force: true do |t|
    t.integer   "comment_home_seq"
    t.string    "comment_job_num",     limit: 15
    t.string    "comment_task",        limit: 4
    t.string    "comment_added_by",    limit: 10
    t.timestamp "comment_date_added"
    t.integer   "comment_kind",        limit: 1
    t.integer   "comment_reply",       limit: 1
    t.integer   "comment_private1",    limit: 1
    t.integer   "comment_private2",    limit: 1
    t.integer   "comment_priority",    limit: 1
    t.decimal   "comment_sort",                   precision: 15, scale: 0
    t.integer   "comment_choice",      limit: 1
    t.text      "comment_message"
    t.integer   "comment_locked",      limit: 1
    t.integer   "comment_added_kind",  limit: 1
    t.integer   "comment_rating",      limit: 1
    t.decimal   "comment_prod_status",            precision: 15, scale: 0
    t.text      "comment_file_name"
    t.string    "comment_x_phase",     limit: 20
    t.string    "comment_ping",        limit: 10
    t.integer   "comment_final",       limit: 1
    t.integer   "comment_star",        limit: 1
  end

  add_index "home_comments", ["comment_home_seq"], name: "comment_home_seq"

  create_table "homebase", primary_key: "home_seq", force: true do |t|
    t.string    "home_job_num",        limit: 15
    t.string    "home_task",           limit: 4
    t.integer   "home_status",         limit: 1
    t.string    "home_s_initials",     limit: 10
    t.string    "home_added_by",       limit: 4
    t.timestamp "home_date_added"
    t.timestamp "home_due_date"
    t.string    "home_subject",        limit: 200
    t.integer   "home_kind",           limit: 1
    t.integer   "home_reply",          limit: 1
    t.integer   "home_private1",       limit: 1
    t.integer   "home_private2",       limit: 1
    t.integer   "home_priority",       limit: 1
    t.decimal   "home_sort",                       precision: 15, scale: 0
    t.string    "home_choice1",        limit: 100
    t.string    "home_choice2",        limit: 100
    t.string    "home_choice3",        limit: 100
    t.string    "home_choice4",        limit: 100
    t.string    "home_choice5",        limit: 100
    t.string    "home_choice6",        limit: 100
    t.timestamp "home_last_reply"
    t.text      "home_message"
    t.integer   "home_locked",         limit: 1
    t.integer   "home_added_kind",     limit: 1
    t.text      "home_comment"
    t.decimal   "home_rating",                     precision: 15, scale: 1
    t.decimal   "home_prod_status",                precision: 15, scale: 0
    t.decimal   "home_orig_seq",                   precision: 15, scale: 0
    t.text      "home_file_name"
    t.string    "home_x_phase",        limit: 20
    t.integer   "home_avail_creative", limit: 1
    t.integer   "home_avail_prod",     limit: 1
    t.integer   "home_avail_staff",    limit: 1
    t.integer   "home_avail_clients",  limit: 1
    t.integer   "home_avail_vendors",  limit: 1
    t.integer   "home_email_it",       limit: 1
  end

  add_index "homebase", ["home_job_num"], name: "home_job_num"

  create_table "int_items", primary_key: "int_seq", force: true do |t|
    t.string    "int_item",        limit: 10
    t.string    "int_size",        limit: 6
    t.string    "int_key",         limit: 16
    t.string    "int_desc",        limit: 40
    t.string    "int_task",        limit: 4
    t.decimal   "int_cost_ea",                precision: 9, scale: 2
    t.string    "int_unit",        limit: 8
    t.decimal   "int_gross_ea",               precision: 9, scale: 2
    t.string    "int_added_by",    limit: 4
    t.timestamp "int_added_when"
    t.string    "int_edited_by",   limit: 4
    t.timestamp "int_edited_when"
  end

  add_index "int_items", ["int_item"], name: "int_item"
  add_index "int_items", ["int_key"], name: "int_key"
  add_index "int_items", ["int_size"], name: "int_size"

  create_table "je", primary_key: "je_seq", force: true do |t|
    t.date      "je_date"
    t.string    "je_ref",         limit: 30
    t.date      "je_posted"
    t.text      "je_desc"
    t.decimal   "je_debit",                  precision: 15, scale: 2
    t.decimal   "je_credit",                 precision: 15, scale: 2
    t.decimal   "je_ac_num",                 precision: 15, scale: 2
    t.decimal   "je_period",                 precision: 9,  scale: 0
    t.string    "je_job_num",     limit: 10
    t.string    "je_client_num",  limit: 10
    t.decimal   "je_reconcile",              precision: 9,  scale: 2
    t.integer   "je_source",      limit: 1
    t.string    "je_added_by",    limit: 4
    t.timestamp "je_added_when"
    t.string    "je_vendor_num",  limit: 10
    t.integer   "je_auto_rev",    limit: 1
    t.integer   "je_auto_acc",    limit: 1
    t.integer   "je_temp_rec",    limit: 1
    t.integer   "je_kind",        limit: 1
    t.string    "je_pay_batch",   limit: 10
    t.integer   "je_gl_rec",      limit: 1
    t.date      "je_exported"
    t.string    "je_edited_by",   limit: 4
    t.timestamp "je_edited_when"
    t.string    "je_posted_by",   limit: 4
    t.timestamp "je_posted_when"
  end

  add_index "je", ["je_ac_num"], name: "je_ac_num"
  add_index "je", ["je_added_by"], name: "je_added_by"
  add_index "je", ["je_client_num"], name: "je_client_num"
  add_index "je", ["je_date"], name: "je_date"
  add_index "je", ["je_gl_rec"], name: "je_gl_rec"
  add_index "je", ["je_job_num"], name: "je_job_num"
  add_index "je", ["je_kind"], name: "je_kind"
  add_index "je", ["je_period"], name: "je_period"
  add_index "je", ["je_posted"], name: "je_posted"
  add_index "je", ["je_reconcile"], name: "je_reconcile"
  add_index "je", ["je_ref"], name: "je_ref"
  add_index "je", ["je_source"], name: "je_source"
  add_index "je", ["je_vendor_num"], name: "je_vendor_num"

  create_table "je2", primary_key: "je2_seq", force: true do |t|
    t.date      "je2_date"
    t.string    "je2_ref",              limit: 30
    t.date      "je2_posted"
    t.text      "je2_desc"
    t.decimal   "je2_debit",                       precision: 15, scale: 2
    t.decimal   "je2_credit",                      precision: 15, scale: 1
    t.decimal   "je2_ac_num",                      precision: 15, scale: 2
    t.integer   "je2_period",           limit: 1
    t.string    "je2_job_num",          limit: 15
    t.string    "je2_client_num",       limit: 10
    t.decimal   "je2_reconcile",                   precision: 9,  scale: 2
    t.integer   "je2_source",           limit: 1
    t.string    "je2_added_by",         limit: 4
    t.timestamp "je2_added_when"
    t.string    "je2_vendor_num",       limit: 10
    t.integer   "je2_auto_rev",         limit: 1
    t.integer   "je2_auto_acc",         limit: 1
    t.integer   "je2_temp_rec",         limit: 1
    t.integer   "je2_kind",             limit: 1
    t.string    "je2_pay_batch",        limit: 10
    t.integer   "je2_gl_rec",           limit: 1
    t.date      "je2_exported"
    t.string    "je2_edited_by",        limit: 4
    t.timestamp "je2_edited_when"
    t.string    "je2_posted_by",        limit: 4
    t.timestamp "je2_posted_when"
    t.string    "je2_fiscal_year",      limit: 15
    t.date      "je2_period_first_day"
  end

  add_index "je2", ["je2_ref"], name: "je2_ref"

  create_table "job_order", primary_key: "cb_seq", force: true do |t|
    t.string    "cb_job_num",       limit: 10
    t.string    "cb_client_num",    limit: 10
    t.text      "cb_1_label"
    t.text      "cb_1"
    t.text      "cb_2_label"
    t.text      "cb_2"
    t.text      "cb_3_label"
    t.text      "cb_3"
    t.text      "cb_4_label"
    t.text      "cb_4"
    t.text      "cb_5_label"
    t.text      "cb_5"
    t.text      "cb_6_label"
    t.text      "cb_6"
    t.text      "cb_7_label"
    t.text      "cb_7"
    t.text      "cb_8_label"
    t.text      "cb_8"
    t.decimal   "cb_rev",                      precision: 9, scale: 0
    t.text      "cb_9_label"
    t.text      "cb_9"
    t.text      "cb_10_label"
    t.text      "cb_10"
    t.text      "cb_11_label"
    t.text      "cb_11"
    t.text      "cb_12_label"
    t.text      "cb_12"
    t.text      "cb_13_label"
    t.text      "cb_13"
    t.text      "cb_14_label"
    t.text      "cb_14"
    t.text      "cb_15_label"
    t.text      "cb_15"
    t.string    "cb_added_by",      limit: 4
    t.string    "cb_rev_by",        limit: 4
    t.timestamp "cb_rev_date"
    t.integer   "cb_ok",            limit: 1
    t.string    "cb_ok_by",         limit: 4
    t.timestamp "cb_ok_date"
    t.integer   "cb_approved",      limit: 1
    t.timestamp "cb_approved_date"
    t.string    "cb_approved_by",   limit: 4
    t.string    "cb_edited_by",     limit: 4
    t.timestamp "cb_edited_when"
  end

  add_index "job_order", ["cb_client_num"], name: "cb_client_num"
  add_index "job_order", ["cb_job_num"], name: "cb_job_num"

  create_table "job_task", primary_key: "x_seq", force: true do |t|
    t.string    "x_job_num",           limit: 15
    t.string    "x_task",              limit: 4
    t.text      "x_desc"
    t.decimal   "x_estimate",                     precision: 15, scale: 2
    t.decimal   "x_budget",                       precision: 15, scale: 2
    t.decimal   "x_hours_est",                    precision: 15, scale: 2
    t.decimal   "x_hours_act",                    precision: 15, scale: 2
    t.decimal   "x_labor",                        precision: 15, scale: 2
    t.decimal   "x_cost",                         precision: 15, scale: 2
    t.decimal   "x_expenses",                     precision: 15, scale: 2
    t.decimal   "x_po_net",                       precision: 15, scale: 2
    t.decimal   "x_po_gross",                     precision: 15, scale: 2
    t.decimal   "x_unbilled",                     precision: 15, scale: 2
    t.decimal   "x_bill_rate",                    precision: 15, scale: 2
    t.decimal   "x_markup",                       precision: 15, scale: 2
    t.decimal   "x_status",                       precision: 15, scale: 0
    t.text      "x_note"
    t.integer   "x_taxable1",          limit: 1
    t.integer   "x_taxable2",          limit: 1
    t.integer   "x_finished",          limit: 1
    t.date      "x_due_date"
    t.date      "x_start_date"
    t.integer   "x_kind",              limit: 1
    t.string    "x_resource",          limit: 10
    t.decimal   "x_lead_time",                    precision: 9,  scale: 0
    t.string    "x_key",               limit: 19
    t.decimal   "x_sort",                         precision: 9,  scale: 0
    t.decimal   "x_group",                        precision: 9,  scale: 0
    t.decimal   "x_cgl",                          precision: 15, scale: 2
    t.decimal   "x_dgl",                          precision: 15, scale: 2
    t.date      "x_last_work"
    t.integer   "x_show_desc",         limit: 1
    t.integer   "x_pc",                limit: 1
    t.string    "x_name",              limit: 50
    t.decimal   "x_tax1_rate",                    precision: 15, scale: 4
    t.decimal   "x_tax2_rate",                    precision: 15, scale: 4
    t.decimal   "x_est1",                         precision: 15, scale: 2
    t.decimal   "x_est2",                         precision: 15, scale: 2
    t.decimal   "x_est3",                         precision: 15, scale: 2
    t.decimal   "x_billed",                       precision: 15, scale: 2
    t.string    "x_roll_up",           limit: 4
    t.decimal   "x_change_amt",                   precision: 15, scale: 2
    t.string    "x_char30",            limit: 30
    t.string    "x_char20",            limit: 20
    t.decimal   "x_media_comm",                   precision: 15, scale: 2
    t.decimal   "x_change_hrs",                   precision: 15, scale: 2
    t.decimal   "x_change_budget",                precision: 15, scale: 2
    t.decimal   "x_amt4",                         precision: 15, scale: 2
    t.string    "x_key_resource",      limit: 29
    t.string    "x_group_prod",        limit: 10
    t.string    "x_char10_2",          limit: 10
    t.string    "x_char10_3",          limit: 10
    t.decimal   "x_sort_prod",                    precision: 15, scale: 0
    t.decimal   "x_rate_kind",                    precision: 15, scale: 0
    t.decimal   "x_sub_est_hrs",                  precision: 15, scale: 2
    t.decimal   "x_sub_act_hrs",                  precision: 15, scale: 2
    t.decimal   "x_num2d_5",                      precision: 15, scale: 2
    t.decimal   "x_num2d_6",                      precision: 15, scale: 2
    t.decimal   "x_num2d_7",                      precision: 15, scale: 2
    t.decimal   "x_hrs_unbilled",                 precision: 15, scale: 2
    t.integer   "x_unbillable",        limit: 1
    t.decimal   "x_gross_costs",                  precision: 15, scale: 2
    t.decimal   "x_gross_labor",                  precision: 15, scale: 2
    t.decimal   "x_gross_exp",                    precision: 15, scale: 2
    t.decimal   "x_mu_amt",                       precision: 15, scale: 2
    t.text      "x_specs"
    t.date      "x_date_finished"
    t.time      "x_due_when"
    t.decimal   "x_hours_billed",                 precision: 15, scale: 2
    t.decimal   "x_est_hrs1",                     precision: 9,  scale: 2
    t.decimal   "x_est_hrs2",                     precision: 9,  scale: 2
    t.decimal   "x_est_hrs3",                     precision: 9,  scale: 2
    t.integer   "x_commissionable",    limit: 1
    t.string    "x_added_by",          limit: 4
    t.timestamp "x_added_when"
    t.string    "x_edited_by",         limit: 4
    t.timestamp "x_edited_when"
    t.text      "x_tags"
    t.decimal   "x_completed",                    precision: 15, scale: 0
    t.integer   "x_relation"
    t.integer   "x_relation_type",     limit: 1
    t.decimal   "x_color",                        precision: 15, scale: 0
    t.integer   "x_client_sched",      limit: 1
    t.string    "x_phase",             limit: 20
    t.decimal   "x_hours_wk1_1",                  precision: 15, scale: 2
    t.decimal   "x_hours_wk1_2",                  precision: 15, scale: 2
    t.decimal   "x_hours_wk1_3",                  precision: 15, scale: 2
    t.decimal   "x_hours_wk1_4",                  precision: 15, scale: 2
    t.decimal   "x_hours_wk1_5",                  precision: 15, scale: 2
    t.decimal   "x_hours_wk2_1",                  precision: 15, scale: 2
    t.decimal   "x_hours_wk2_2",                  precision: 15, scale: 2
    t.decimal   "x_hours_wk2_3",                  precision: 15, scale: 2
    t.decimal   "x_hours_wk2_4",                  precision: 15, scale: 2
    t.decimal   "x_hours_wk2_5",                  precision: 15, scale: 2
    t.decimal   "x_taxable3",                     precision: 15, scale: 0
    t.decimal   "x_tax3_rate",                    precision: 15, scale: 4
    t.decimal   "x_next_bill_amt",                precision: 15, scale: 2
    t.decimal   "x_next_bill_hrs",                precision: 15, scale: 2
    t.date      "x_next_bill_date"
    t.integer   "x_no_time",           limit: 1
    t.integer   "x_milestone",         limit: 1
    t.integer   "x_req_approval",      limit: 1
    t.timestamp "x_req_approved_date"
    t.decimal   "x_priority",                     precision: 9,  scale: 0
  end

  add_index "job_task", ["x_date_finished"], name: "x_date_finished"
  add_index "job_task", ["x_due_date"], name: "x_due_date"
  add_index "job_task", ["x_finished"], name: "x_finished"
  add_index "job_task", ["x_job_num"], name: "x_job_num"
  add_index "job_task", ["x_key"], name: "x_key"
  add_index "job_task", ["x_key_resource"], name: "x_key_resource"
  add_index "job_task", ["x_kind"], name: "x_kind"
  add_index "job_task", ["x_resource"], name: "x_resource"
  add_index "job_task", ["x_start_date"], name: "x_start_date"
  add_index "job_task", ["x_task"], name: "x_task"

  create_table "job_types", primary_key: "type_seq", force: true do |t|
    t.string    "type_code",           limit: 15
    t.string    "type_name",           limit: 40
    t.text      "type_disclaimer"
    t.string    "type_traffic1",       limit: 7
    t.string    "type_traffic2",       limit: 7
    t.string    "type_traffic3",       limit: 7
    t.string    "type_traffic4",       limit: 7
    t.string    "type_traffic5",       limit: 7
    t.string    "type_traffic6",       limit: 7
    t.string    "type_traffic7",       limit: 7
    t.string    "type_traffic8",       limit: 7
    t.string    "type_traffic9",       limit: 7
    t.string    "type_traffic10",      limit: 7
    t.decimal   "type_markup",                    precision: 9, scale: 2
    t.decimal   "type_rate",                      precision: 9, scale: 2
    t.binary    "type_task_list"
    t.string    "type_heading",        limit: 20
    t.string    "type_est_col1",       limit: 15
    t.string    "type_est_col2",       limit: 15
    t.string    "type_est_col3",       limit: 15
    t.string    "type_traffic11",      limit: 7
    t.string    "type_traffic12",      limit: 7
    t.string    "type_field1",         limit: 20
    t.string    "type_field2",         limit: 20
    t.string    "type_field3",         limit: 20
    t.string    "type_field4",         limit: 20
    t.string    "type_field5",         limit: 20
    t.string    "type_field6",         limit: 20
    t.integer   "type_conting",        limit: 1
    t.decimal   "type_con_pc",                    precision: 9, scale: 2
    t.decimal   "type_con_amt",                   precision: 9, scale: 2
    t.text      "type_con_note"
    t.integer   "type_show_hrs",       limit: 1
    t.string    "type_ae_title",       limit: 20
    t.text      "type_job_specs"
    t.integer   "type_rate_kind",      limit: 1
    t.integer   "type_tax",            limit: 1
    t.text      "type_cb_1_label"
    t.text      "type_cb_2_label"
    t.text      "type_cb_3_label"
    t.text      "type_cb_4_label"
    t.text      "type_cb_5_label"
    t.text      "type_cb_6_label"
    t.text      "type_cb_7_label"
    t.text      "type_cb_8_label"
    t.text      "type_cb_9_label"
    t.text      "type_cb_10_label"
    t.text      "type_cb_11_label"
    t.text      "type_cb_12_label"
    t.text      "type_cb_13_label"
    t.text      "type_cb_14_label"
    t.text      "type_cb_15_label"
    t.integer   "type_commissionable", limit: 1
    t.decimal   "type_comm_rate",                 precision: 9, scale: 2
    t.decimal   "type_comm_spiff",                precision: 9, scale: 2
    t.integer   "type_comm_type_ae",   limit: 1
    t.decimal   "type_comm_rate_biz",             precision: 9, scale: 2
    t.integer   "type_active",         limit: 1
    t.string    "type_added_by",       limit: 4
    t.timestamp "type_added_when"
    t.string    "type_edited_by",      limit: 4
    t.timestamp "type_edited_when"
    t.text      "type_wo_1_label"
    t.text      "type_wo_2_label"
    t.text      "type_wo_3_label"
    t.text      "type_wo_4_label"
    t.text      "type_wo_5_label"
    t.text      "type_wo_6_label"
    t.text      "type_wo_7_label"
    t.text      "type_wo_8_label"
    t.text      "type_wo_9_label"
    t.text      "type_wo_10_label"
    t.text      "type_wo_11_label"
    t.text      "type_wo_12_label"
    t.text      "type_wo_13_label"
    t.text      "type_wo_14_label"
    t.text      "type_wo_15_label"
    t.string    "type_pc",             limit: 10
    t.integer   "type_checklist1",     limit: 1
    t.integer   "type_checklist2",     limit: 1
    t.integer   "type_checklist3",     limit: 1
    t.integer   "type_checklist4",     limit: 1
    t.integer   "type_checklist5",     limit: 1
    t.integer   "type_checklist6",     limit: 1
    t.integer   "type_checklist7",     limit: 1
    t.integer   "type_checklist8",     limit: 1
    t.string    "type_check1_name",    limit: 40
    t.string    "type_check2_name",    limit: 40
    t.string    "type_check3_name",    limit: 40
    t.string    "type_check4_name",    limit: 40
    t.string    "type_check5_name",    limit: 40
    t.string    "type_check6_name",    limit: 40
    t.string    "type_check7_name",    limit: 40
    t.string    "type_check8_name",    limit: 40
    t.decimal   "type_forecast_costs",            precision: 9, scale: 0
    t.decimal   "type_forecast_labor",            precision: 9, scale: 0
    t.string    "type_user_date1",     limit: 40
    t.string    "type_user_date2",     limit: 40
    t.string    "type_reviewer",       limit: 10
    t.integer   "type_requestable",    limit: 1
    t.string    "type_j_field1_label", limit: 20
    t.string    "type_j_field2_label", limit: 20
    t.string    "type_j_field3_label", limit: 20
    t.string    "type_j_field4_label", limit: 20
    t.string    "type_j_field5_label", limit: 20
    t.string    "type_j_field6_label", limit: 20
    t.integer   "type_req_j_field1",   limit: 1
    t.integer   "type_req_j_field2",   limit: 1
    t.integer   "type_req_j_field3",   limit: 1
    t.integer   "type_req_j_field4",   limit: 1
    t.integer   "type_req_j_field5",   limit: 1
    t.integer   "type_req_j_field6",   limit: 1
    t.string    "type_category",       limit: 25
    t.string    "type_job_option1",    limit: 25
    t.string    "type_job_option2",    limit: 25
    t.string    "type_job_option3",    limit: 25
    t.string    "type_job_option4",    limit: 25
    t.string    "type_job_option5",    limit: 25
    t.string    "type_job_option6",    limit: 25
    t.string    "type_job_option7",    limit: 25
    t.string    "type_job_option8",    limit: 25
    t.integer   "type_home_cb1",       limit: 1
    t.integer   "type_home_cb2",       limit: 1
    t.integer   "type_home_cb3",       limit: 1
    t.integer   "type_home_cb4",       limit: 1
    t.integer   "type_home_cb5",       limit: 1
    t.integer   "type_home_cb6",       limit: 1
    t.integer   "type_home_cb7",       limit: 1
    t.integer   "type_home_cb8",       limit: 1
    t.integer   "type_home_cb9",       limit: 1
    t.integer   "type_home_cb10",      limit: 1
    t.integer   "type_home_cb11",      limit: 1
    t.integer   "type_home_cb12",      limit: 1
    t.integer   "type_home_cb13",      limit: 1
    t.integer   "type_home_cb14",      limit: 1
    t.integer   "type_home_cb15",      limit: 1
    t.integer   "type_home_wo1",       limit: 1
    t.integer   "type_home_wo2",       limit: 1
    t.integer   "type_home_wo3",       limit: 1
    t.integer   "type_home_wo4",       limit: 1
    t.integer   "type_home_wo5",       limit: 1
    t.integer   "type_home_wo6",       limit: 1
    t.integer   "type_home_wo7",       limit: 1
    t.integer   "type_home_wo8",       limit: 1
    t.integer   "type_home_wo9",       limit: 1
    t.integer   "type_home_wo10",      limit: 1
    t.integer   "type_home_wo11",      limit: 1
    t.integer   "type_home_wo12",      limit: 1
    t.integer   "type_home_wo13",      limit: 1
    t.integer   "type_home_wo14",      limit: 1
    t.integer   "type_home_wo15",      limit: 1
    t.integer   "type_check_rule1",    limit: 1
    t.integer   "type_check_rule2",    limit: 1
    t.integer   "type_check_rule3",    limit: 1
    t.integer   "type_check_rule4",    limit: 1
    t.integer   "type_job_requests",   limit: 1
    t.string    "type_reviewer2",      limit: 10
    t.string    "type_reviewer3",      limit: 10
  end

  add_index "job_types", ["type_code"], name: "type_code"

  create_table "job_user_fields", primary_key: "ju_seq", force: true do |t|
    t.string "ju_field", limit: 20
    t.string "ju_value", limit: 20
  end

  add_index "job_user_fields", ["ju_field"], name: "ju_field"

  create_table "jobs", primary_key: "j_seq", force: true do |t|
    t.string    "j_num",                  limit: 15
    t.date      "j_start_date"
    t.string    "j_name",                 limit: 60
    t.string    "j_client_num",           limit: 10
    t.integer   "j_closed",               limit: 1
    t.date      "j_due_date"
    t.string    "j_user_field2",          limit: 15
    t.decimal   "j_cont_amt",                        precision: 15, scale: 2
    t.decimal   "j_revision",                        precision: 9,  scale: 0
    t.string    "j_user_field1",          limit: 20
    t.decimal   "j_prod_status",                     precision: 9,  scale: 0
    t.text      "j_desc"
    t.string    "j_who",                  limit: 4
    t.string    "j_client_contact",       limit: 30
    t.string    "j_agency_contact",       limit: 30
    t.string    "j_ae_team",              limit: 10
    t.string    "j_type",                 limit: 15
    t.decimal   "j_amt1",                            precision: 9,  scale: 2
    t.decimal   "j_amt2",                            precision: 9,  scale: 2
    t.decimal   "j_amt3",                            precision: 9,  scale: 2
    t.decimal   "j_amt4",                            precision: 9,  scale: 2
    t.decimal   "j_amt5",                            precision: 9,  scale: 2
    t.decimal   "j_amt6",                            precision: 9,  scale: 2
    t.text      "j_next_steps"
    t.timestamp "j_date_added"
    t.string    "j_pc",                   limit: 10
    t.text      "j_cont_note"
    t.decimal   "j_bill_status",                     precision: 9,  scale: 0
    t.string    "j_mile1",                limit: 6
    t.string    "j_mile2",                limit: 6
    t.string    "j_mile3",                limit: 6
    t.string    "j_mile4",                limit: 6
    t.string    "j_mile5",                limit: 6
    t.string    "j_mile6",                limit: 6
    t.string    "j_mile7",                limit: 6
    t.string    "j_mile8",                limit: 6
    t.string    "j_mile9",                limit: 6
    t.string    "j_mile10",               limit: 6
    t.string    "j_mile11",               limit: 6
    t.string    "j_mile12",               limit: 6
    t.decimal   "j_history_count",                   precision: 9,  scale: 0
    t.integer   "j_contingency",          limit: 1
    t.decimal   "j_cont_pc",                         precision: 9,  scale: 2
    t.string    "j_est_form",             limit: 20
    t.string    "j_approval1",            limit: 40
    t.string    "j_approval2",            limit: 40
    t.string    "j_approval3",            limit: 40
    t.string    "j_show_zero_as",         limit: 15
    t.string    "j_heading",              limit: 25
    t.integer   "j_show_hours",           limit: 1
    t.integer   "j_show_dates",           limit: 1
    t.integer   "j_show_totals",          limit: 1
    t.text      "j_disclaimer"
    t.string    "j_est_custom",           limit: 12
    t.string    "j_est_column1",          limit: 15
    t.string    "j_est_column2",          limit: 15
    t.string    "j_est_column3",          limit: 15
    t.decimal   "j_final_est",                       precision: 9,  scale: 0
    t.string    "j_to1",                  limit: 10
    t.string    "j_to2",                  limit: 10
    t.string    "j_to3",                  limit: 10
    t.string    "j_to4",                  limit: 10
    t.string    "j_to5",                  limit: 10
    t.string    "j_ae_title",             limit: 20
    t.decimal   "j_adv_billed",                      precision: 15, scale: 2
    t.decimal   "j_est_to_go",                       precision: 15, scale: 2
    t.decimal   "j_hours_to_go",                     precision: 15, scale: 2
    t.date      "j_snap_updated"
    t.decimal   "j_costs_to_go",                     precision: 15, scale: 2
    t.decimal   "j_next_bill_amt",                   precision: 15, scale: 2
    t.date      "j_next_bill_date"
    t.decimal   "j_hide_est_tasks",                  precision: 15, scale: 2
    t.decimal   "j_client_billed",                   precision: 15, scale: 2
    t.decimal   "j_client_paid",                     precision: 15, scale: 2
    t.integer   "j_unbillable",           limit: 1
    t.string    "j_client_phone",         limit: 15
    t.string    "j_client_title",         limit: 20
    t.string    "j_ae_phone",             limit: 15
    t.string    "j_field1_label",         limit: 20
    t.string    "j_field2_label",         limit: 20
    t.string    "j_field3_label",         limit: 20
    t.string    "j_user_field3",          limit: 20
    t.string    "j_charge_num",           limit: 20
    t.string    "j_field4_label",         limit: 20
    t.string    "j_field5_label",         limit: 20
    t.string    "j_field6_label",         limit: 20
    t.string    "j_user_field4",          limit: 20
    t.string    "j_user_field5",          limit: 20
    t.string    "j_user_field6",          limit: 20
    t.date      "j_last_billed"
    t.date      "j_date_closed"
    t.date      "j_date3"
    t.string    "j_status_note",          limit: 40
    t.integer   "j_rate_kind",            limit: 1
    t.text      "j_work_order"
    t.string    "j_traf1",                limit: 4
    t.string    "j_traf2",                limit: 4
    t.string    "j_traf3",                limit: 4
    t.string    "j_traf4",                limit: 4
    t.string    "j_traf5",                limit: 4
    t.string    "j_traf6",                limit: 4
    t.string    "j_address1",             limit: 50
    t.string    "j_address2",             limit: 50
    t.string    "j_address3",             limit: 50
    t.string    "j_address4",             limit: 50
    t.string    "j_address5",             limit: 50
    t.string    "j_address6",             limit: 50
    t.decimal   "j_budget",                          precision: 9,  scale: 2
    t.string    "j_ship_to1",             limit: 50
    t.string    "j_ship_to2",             limit: 50
    t.string    "j_ship_to3",             limit: 50
    t.string    "j_ship_to4",             limit: 50
    t.string    "j_archived_on",          limit: 15
    t.string    "j_bill_to",              limit: 10
    t.integer   "j_est_ok",               limit: 1
    t.string    "j_est_ok_by",            limit: 4
    t.timestamp "j_est_ok_when"
    t.date      "j_exported"
    t.string    "j_closed_by",            limit: 4
    t.decimal   "j_priority",                        precision: 9,  scale: 0
    t.decimal   "j_all_revs",                        precision: 9,  scale: 0
    t.decimal   "j_sched_revs",                      precision: 9,  scale: 0
    t.decimal   "j_all_sch_revs",                    precision: 9,  scale: 0
    t.integer   "j_commissionable",       limit: 1
    t.string    "j_bizdev_ae",            limit: 10
    t.integer   "j_sched_ok",             limit: 1
    t.string    "j_sched_ok_by",          limit: 4
    t.timestamp "j_sched_ok_when"
    t.string    "j_edited_by",            limit: 4
    t.timestamp "j_edited_when"
    t.string    "j_adr_name",             limit: 20
    t.string    "j_project",              limit: 20
    t.text      "j_tags"
    t.text      "j_discussion_members"
    t.integer   "j_checklist1",           limit: 1
    t.integer   "j_checklist2",           limit: 1
    t.integer   "j_checklist3",           limit: 1
    t.integer   "j_checklist4",           limit: 1
    t.integer   "j_checklist5",           limit: 1
    t.integer   "j_checklist6",           limit: 1
    t.integer   "j_checklist7",           limit: 1
    t.integer   "j_checklist8",           limit: 1
    t.string    "j_user_date1",           limit: 10
    t.string    "j_user_date2",           limit: 10
    t.string    "j_hilite",               limit: 1
    t.string    "j_po",                   limit: 15
    t.integer   "j_finished",             limit: 1
    t.timestamp "j_finished_date"
    t.string    "j_fast_score_f",         limit: 2
    t.string    "j_fast_score_a",         limit: 2
    t.string    "j_fast_score_s",         limit: 2
    t.string    "j_fast_score_t",         limit: 2
    t.decimal   "j_forecast_jan",                    precision: 15, scale: 2
    t.decimal   "j_forecast_feb",                    precision: 15, scale: 2
    t.decimal   "j_forecast_mar",                    precision: 15, scale: 2
    t.decimal   "j_forecast_apr",                    precision: 15, scale: 2
    t.decimal   "j_forecast_may",                    precision: 15, scale: 2
    t.decimal   "j_forecast_jun",                    precision: 15, scale: 2
    t.decimal   "j_forecast_jul",                    precision: 15, scale: 2
    t.decimal   "j_forecast_aug",                    precision: 15, scale: 2
    t.decimal   "j_forecast_sep",                    precision: 15, scale: 2
    t.decimal   "j_forecast_oct",                    precision: 15, scale: 2
    t.decimal   "j_forecast_nov",                    precision: 15, scale: 2
    t.decimal   "j_forecast_dec",                    precision: 15, scale: 2
    t.integer   "j_added_how",            limit: 1
    t.integer   "j_option1",              limit: 1
    t.integer   "j_option2",              limit: 1
    t.integer   "j_option3",              limit: 1
    t.integer   "j_option4",              limit: 1
    t.integer   "j_option5",              limit: 1
    t.integer   "j_option6",              limit: 1
    t.integer   "j_option7",              limit: 1
    t.integer   "j_option8",              limit: 1
    t.integer   "j_billing_step1",        limit: 1
    t.integer   "j_billing_step2",        limit: 1
    t.integer   "j_billing_step3",        limit: 1
    t.integer   "j_billing_step4",        limit: 1
    t.integer   "j_billing_step5",        limit: 1
    t.integer   "j_billing_step6",        limit: 1
    t.integer   "j_billing_step7",        limit: 1
    t.integer   "j_billing_step8",        limit: 1
    t.decimal   "j_client_rating",                   precision: 15, scale: 1
    t.integer   "j_est_ok_client",        limit: 1
    t.string    "j_est_ok_client_by",     limit: 10
    t.timestamp "j_est_ok_client_when"
    t.integer   "j_sched_ok_client",      limit: 1
    t.string    "j_sched_ok_client_by",   limit: 10
    t.timestamp "j_sched_ok_client_when"
    t.string    "j_ad_id",                limit: 20
  end

  add_index "jobs", ["j_ae_team"], name: "j_ae_team"
  add_index "jobs", ["j_bill_status"], name: "j_bill_status"
  add_index "jobs", ["j_charge_num"], name: "j_charge_num"
  add_index "jobs", ["j_client_contact"], name: "j_client_contact"
  add_index "jobs", ["j_client_num"], name: "j_client_num"
  add_index "jobs", ["j_closed"], name: "j_closed"
  add_index "jobs", ["j_date_added"], name: "j_date_added"
  add_index "jobs", ["j_due_date"], name: "j_due_date"
  add_index "jobs", ["j_name"], name: "j_name"
  add_index "jobs", ["j_next_bill_date"], name: "j_next_bill_date"
  add_index "jobs", ["j_num"], name: "j_num"
  add_index "jobs", ["j_pc"], name: "j_pc"
  add_index "jobs", ["j_priority"], name: "j_priority"
  add_index "jobs", ["j_prod_status"], name: "j_prod_status"
  add_index "jobs", ["j_project"], name: "j_project"
  add_index "jobs", ["j_start_date"], name: "j_start_date"
  add_index "jobs", ["j_type"], name: "j_type"
  add_index "jobs", ["j_user_field1"], name: "j_user_field1"
  add_index "jobs", ["j_user_field2"], name: "j_user_field2"
  add_index "jobs", ["j_who"], name: "j_who"

  create_table "log", primary_key: "log_seq", force: true do |t|
    t.date      "log_date"
    t.timestamp "log_time"
    t.string    "log_user",  limit: 4
    t.text      "log_notes"
  end

  add_index "log", ["log_date"], name: "log_date"

  create_table "media_briefs", primary_key: "br_seq", force: true do |t|
    t.string    "br_campaign",          limit: 10
    t.string    "br_name",              limit: 40
    t.text      "br_desc"
    t.decimal   "br_budget_amt",                    precision: 9, scale: 2
    t.decimal   "br_cost_amt",                      precision: 9, scale: 2
    t.date      "br_camp_start"
    t.date      "br_camp_end"
    t.decimal   "br_spots",                         precision: 9, scale: 0
    t.decimal   "br_ratings",                       precision: 9, scale: 2
    t.decimal   "br_cost",                          precision: 9, scale: 2
    t.decimal   "br_cpp",                           precision: 9, scale: 2
    t.decimal   "br_cps",                           precision: 9, scale: 2
    t.decimal   "br_rf",                            precision: 9, scale: 2
    t.string    "br_client_num",        limit: 10
    t.date      "br_due_date"
    t.text      "br_objective"
    t.text      "br_target_age"
    t.text      "br_target_gender"
    t.text      "br_target_occupation"
    t.text      "br_target_lifestyle"
    t.text      "br_media_rec"
    t.text      "br_media_sched"
    t.text      "br_exhibits"
    t.decimal   "br_bud_bcast",                     precision: 9, scale: 0
    t.decimal   "br_bud_cable",                     precision: 9, scale: 0
    t.decimal   "br_bud_radio",                     precision: 9, scale: 0
    t.decimal   "br_bud_news",                      precision: 9, scale: 0
    t.decimal   "br_bud_mag",                       precision: 9, scale: 0
    t.decimal   "br_bud_out",                       precision: 9, scale: 0
    t.decimal   "br_bud_inter",                     precision: 9, scale: 0
    t.decimal   "br_bud_other",                     precision: 9, scale: 0
    t.string    "br_added_by",          limit: 4
    t.string    "br_ae",                limit: 4
    t.string    "br_rep",               limit: 40
    t.string    "br_status",            limit: 200
    t.integer   "br_status_num",        limit: 1
    t.string    "br_edited_by",         limit: 4
    t.timestamp "br_edited_when"
    t.integer   "br_approved",          limit: 1
    t.string    "br_approved_by",       limit: 4
    t.timestamp "br_approved_date"
  end

  add_index "media_briefs", ["br_bud_cable"], name: "br_bud_cable"
  add_index "media_briefs", ["br_campaign"], name: "br_campaign"
  add_index "media_briefs", ["br_client_num"], name: "br_client_num"

  create_table "media_est", primary_key: "me_seq", force: true do |t|
    t.string    "me_num",           limit: 10
    t.string    "me_client_num",    limit: 10
    t.string    "me_campaign",      limit: 20
    t.date      "me_date"
    t.text      "me_desc"
    t.string    "me_buyer",         limit: 3
    t.decimal   "me_gross",                    precision: 15, scale: 2
    t.string    "me_label1",        limit: 20
    t.string    "me_label2",        limit: 20
    t.string    "me_label3",        limit: 20
    t.string    "me_label4",        limit: 20
    t.string    "me_label5",        limit: 20
    t.string    "me_status",        limit: 60
    t.decimal   "me_cost",                     precision: 15, scale: 2
    t.integer   "me_closed",        limit: 1
    t.integer   "me_show_desc",     limit: 1
    t.text      "me_disclaimer"
    t.string    "me_approval1",     limit: 30
    t.string    "me_approval2",     limit: 30
    t.string    "me_approval3",     limit: 30
    t.decimal   "me_comm",                     precision: 9,  scale: 2
    t.string    "me_job_num",       limit: 10
    t.string    "me_task",          limit: 4
    t.string    "me_brand",         limit: 20
    t.integer   "me_inactive",      limit: 1
    t.integer   "me_type",          limit: 1
    t.integer   "me_approved",      limit: 1
    t.string    "me_approved_by",   limit: 4
    t.timestamp "me_approved_date"
    t.string    "me_edited_by",     limit: 4
    t.timestamp "me_edited_when"
  end

  add_index "media_est", ["me_buyer"], name: "me_buyer"
  add_index "media_est", ["me_campaign"], name: "me_campaign"
  add_index "media_est", ["me_client_num"], name: "me_client_num"
  add_index "media_est", ["me_date"], name: "me_date"
  add_index "media_est", ["me_num"], name: "me_num"
  add_index "media_est", ["me_type"], name: "me_type"

  create_table "media_est_items", primary_key: "mi_seq", force: true do |t|
    t.string    "mi_me_num",        limit: 10
    t.string    "mi_pub",           limit: 20
    t.string    "mi_issue_date",    limit: 12
    t.date      "mi_close_date"
    t.string    "mi_ad_name",       limit: 25
    t.string    "mi_ad_size",       limit: 30
    t.decimal   "mi_gross",                    precision: 15, scale: 2
    t.decimal   "mi_cost",                     precision: 15, scale: 2
    t.decimal   "mi_comm",                     precision: 15, scale: 2
    t.string    "mi_vendor_num",    limit: 5
    t.string    "mi_po_num",        limit: 10
    t.decimal   "mi_po_amt",                   precision: 15, scale: 2
    t.date      "mi_po_date"
    t.string    "mi_job_num",       limit: 10
    t.string    "mi_task",          limit: 4
    t.string    "mi_status",        limit: 30
    t.text      "mi_notes"
    t.integer   "mi_show_notes",    limit: 1
    t.date      "mi_materials_due"
    t.integer   "mi_period",        limit: 1
    t.integer   "mi_bill_net",      limit: 1
    t.date      "mi_run_date"
    t.string    "mi_added_by",      limit: 4
    t.timestamp "mi_added_when"
    t.string    "mi_edited_by",     limit: 4
    t.timestamp "mi_edited_when"
  end

  add_index "media_est_items", ["mi_close_date"], name: "mi_close_date"
  add_index "media_est_items", ["mi_materials_due"], name: "mi_materials_due"
  add_index "media_est_items", ["mi_me_num"], name: "mi_me_num"
  add_index "media_est_items", ["mi_pub"], name: "mi_pub"
  add_index "media_est_items", ["mi_run_date"], name: "mi_run_date"

  create_table "media_items", primary_key: "mx_seq", force: true do |t|
    t.string    "mx_campaign_num",  limit: 10
    t.timestamp "mx_date"
    t.string    "mx_station",       limit: 20
    t.string    "mx_group",         limit: 6
    t.string    "mx_time_pgm",      limit: 30
    t.decimal   "mx_gross_ea",                 precision: 15, scale: 2
    t.decimal   "mx_f1",                       precision: 15, scale: 0
    t.decimal   "mx_sa1",                      precision: 15, scale: 0
    t.decimal   "mx_su1",                      precision: 15, scale: 0
    t.decimal   "mx_m1",                       precision: 15, scale: 0
    t.decimal   "mx_t1",                       precision: 15, scale: 0
    t.decimal   "mx_w1",                       precision: 15, scale: 0
    t.decimal   "mx_th1",                      precision: 15, scale: 0
    t.decimal   "mx_f2",                       precision: 15, scale: 0
    t.decimal   "mx_sa2",                      precision: 15, scale: 0
    t.decimal   "mx_su2",                      precision: 15, scale: 0
    t.decimal   "mx_m2",                       precision: 15, scale: 0
    t.decimal   "mx_t2",                       precision: 15, scale: 0
    t.decimal   "mx_w2",                       precision: 15, scale: 0
    t.decimal   "mx_th2",                      precision: 15, scale: 0
    t.decimal   "mx_f3",                       precision: 15, scale: 0
    t.decimal   "mx_rating_ea",                precision: 15, scale: 1
    t.decimal   "mx_rating",                   precision: 15, scale: 1
    t.decimal   "mx_gross_amt",                precision: 15, scale: 2
    t.decimal   "mx_spots",                    precision: 15, scale: 0
    t.string    "mx_week1_1",       limit: 30
    t.string    "mx_week1_2",       limit: 25
    t.decimal   "mx_week1_cost",               precision: 15, scale: 2
    t.string    "mx_week2_1",       limit: 30
    t.string    "mx_week2_2",       limit: 25
    t.decimal   "mx_week2_cost",               precision: 15, scale: 2
    t.string    "mx_week3_1",       limit: 30
    t.string    "mx_week3_2",       limit: 25
    t.decimal   "mx_week3_cost",               precision: 15, scale: 2
    t.string    "mx_week4_1",       limit: 30
    t.string    "mx_week4_2",       limit: 25
    t.decimal   "mx_week4_cost",               precision: 15, scale: 2
    t.string    "mx_week5_1",       limit: 30
    t.string    "mx_week5_2",       limit: 25
    t.decimal   "mx_week5_cost",               precision: 15, scale: 2
    t.text      "mx_notes"
    t.string    "mx_m_num",         limit: 10
    t.string    "mx_media1",        limit: 40
    t.string    "mx_media2",        limit: 40
    t.string    "mx_media3",        limit: 40
    t.string    "mx_po_num",        limit: 10
    t.date      "mx_date_ordered"
    t.string    "mx_ordered",       limit: 1
    t.string    "mx_week6_1",       limit: 30
    t.string    "mx_week6_2",       limit: 25
    t.decimal   "mx_week6_cost",               precision: 15, scale: 2
    t.string    "mx_week7_1",       limit: 30
    t.string    "mx_week7_2",       limit: 25
    t.decimal   "mx_week7_cost",               precision: 15, scale: 2
    t.string    "mx_week8_1",       limit: 30
    t.string    "mx_week8_2",       limit: 25
    t.decimal   "mx_week8_cost",               precision: 15, scale: 2
    t.string    "mx_week9_1",       limit: 30
    t.string    "mx_week9_2",       limit: 25
    t.decimal   "mx_week9_cost",               precision: 15, scale: 2
    t.string    "mx_week10_1",      limit: 30
    t.string    "mx_week10_2",      limit: 25
    t.decimal   "mx_week10_cost",              precision: 15, scale: 2
    t.string    "mx_week11_1",      limit: 30
    t.string    "mx_week11_2",      limit: 25
    t.decimal   "mx_week11_cost",              precision: 15, scale: 2
    t.string    "mx_week12_1",      limit: 30
    t.string    "mx_week12_2",      limit: 25
    t.decimal   "mx_week12_cost",              precision: 15, scale: 2
    t.decimal   "mx_amt_ordered",              precision: 15, scale: 2
    t.string    "mx_week1_po",      limit: 12
    t.string    "mx_week2_po",      limit: 12
    t.string    "mx_week3_po",      limit: 12
    t.string    "mx_week4_po",      limit: 12
    t.string    "mx_week5_po",      limit: 12
    t.string    "mx_week6_po",      limit: 12
    t.string    "mx_week7_po",      limit: 12
    t.string    "mx_week8_po",      limit: 12
    t.string    "mx_week9_po",      limit: 12
    t.string    "mx_week10_po",     limit: 12
    t.string    "mx_week11_po",     limit: 12
    t.string    "mx_week12_po",     limit: 12
    t.string    "mx_ad_caption",    limit: 50
    t.string    "mx_week1_3",       limit: 25
    t.string    "mx_week2_3",       limit: 25
    t.string    "mx_week3_3",       limit: 25
    t.string    "mx_week4_3",       limit: 25
    t.string    "mx_week5_3",       limit: 25
    t.string    "mx_week6_3",       limit: 25
    t.string    "mx_week7_3",       limit: 25
    t.string    "mx_week8_3",       limit: 25
    t.string    "mx_week9_3",       limit: 25
    t.string    "mx_week10_3",      limit: 25
    t.string    "mx_week11_3",      limit: 25
    t.string    "mx_week12_3",      limit: 25
    t.string    "mx_rate_basis",    limit: 5
    t.date      "mx_space_close1"
    t.date      "mx_space_close2"
    t.date      "mx_space_close3"
    t.date      "mx_space_close4"
    t.date      "mx_space_close5"
    t.date      "mx_space_close6"
    t.date      "mx_space_close7"
    t.date      "mx_space_close8"
    t.date      "mx_space_close9"
    t.date      "mx_space_close10"
    t.date      "mx_space_close11"
    t.date      "mx_space_close12"
    t.date      "mx_mat_due1"
    t.date      "mx_mat_due2"
    t.date      "mx_mat_due3"
    t.date      "mx_mat_due4"
    t.date      "mx_mat_due5"
    t.date      "mx_mat_due6"
    t.date      "mx_mat_due7"
    t.date      "mx_mat_due8"
    t.date      "mx_mat_due9"
    t.date      "mx_mat_due10"
    t.date      "mx_mat_due11"
    t.date      "mx_mat_due12"
    t.string    "mx_length",        limit: 6
    t.string    "mx_day",           limit: 12
    t.string    "mx_dates",         limit: 25
    t.string    "mx_time",          limit: 25
    t.decimal   "mx_qty",                      precision: 9,  scale: 0
    t.date      "mx_start_date"
    t.date      "mx_run_date1"
    t.date      "mx_run_date2"
    t.date      "mx_run_date3"
    t.date      "mx_run_date4"
    t.date      "mx_run_date5"
    t.date      "mx_run_date6"
    t.date      "mx_run_date7"
    t.date      "mx_run_date8"
    t.date      "mx_run_date9"
    t.date      "mx_run_date10"
    t.date      "mx_run_date11"
    t.date      "mx_run_date12"
    t.string    "mx_added_by",      limit: 4
    t.timestamp "mx_added_when"
    t.string    "mx_edited_by",     limit: 4
    t.timestamp "mx_edited_when"
  end

  add_index "media_items", ["mx_campaign_num"], name: "mx_campaign_num"
  add_index "media_items", ["mx_m_num"], name: "mx_m_num"
  add_index "media_items", ["mx_media1"], name: "mx_media1"
  add_index "media_items", ["mx_space_close3"], name: "mx_space_close3"
  add_index "media_items", ["mx_station"], name: "mx_station"

  create_table "media_plans", primary_key: "m_seq", force: true do |t|
    t.string    "m_campaign",      limit: 10
    t.string    "m_name",          limit: 100
    t.text      "m_desc"
    t.decimal   "m_budget",                    precision: 15, scale: 2
    t.decimal   "m_cost",                      precision: 15, scale: 2
    t.date      "m_start_date"
    t.date      "m_end_start"
    t.decimal   "m_spots_total",               precision: 15, scale: 0
    t.decimal   "m_rating_total",              precision: 15, scale: 2
    t.decimal   "m_cost_total",                precision: 15, scale: 2
    t.decimal   "m_cpp_total",                 precision: 15, scale: 2
    t.decimal   "m_cps_total",                 precision: 15, scale: 2
    t.decimal   "m_rf_total",                  precision: 15, scale: 2
    t.string    "m_client_num",    limit: 10
    t.timestamp "m_date_added"
    t.string    "m_added_by",      limit: 4
    t.decimal   "m_revision",                  precision: 9,  scale: 0
    t.string    "m_rev_note",      limit: 40
    t.string    "m_status_note",   limit: 40
    t.decimal   "m_po_cost",                   precision: 15, scale: 2
    t.decimal   "m_po_gross",                  precision: 15, scale: 2
    t.decimal   "m_billed",                    precision: 15, scale: 2
    t.string    "m_period1",       limit: 10
    t.string    "m_period2",       limit: 10
    t.string    "m_period3",       limit: 10
    t.string    "m_period4",       limit: 10
    t.string    "m_period5",       limit: 10
    t.decimal   "m_type",                      precision: 15, scale: 0
    t.text      "m_memo"
    t.string    "m_num",           limit: 10
    t.string    "m_field_label1",  limit: 20
    t.string    "m_field_label2",  limit: 20
    t.string    "m_field_label3",  limit: 20
    t.string    "m_field_label4",  limit: 20
    t.string    "m_field_label5",  limit: 20
    t.string    "m_field_label6",  limit: 20
    t.string    "m_field1",        limit: 20
    t.string    "m_field2",        limit: 20
    t.string    "m_field3",        limit: 20
    t.string    "m_field4",        limit: 20
    t.string    "m_field5",        limit: 20
    t.string    "m_field6",        limit: 20
    t.string    "m_ae_team",       limit: 10
    t.string    "m_client_cont",   limit: 40
    t.string    "m_client_phone",  limit: 20
    t.string    "m_f1",            limit: 2
    t.string    "m_sa1",           limit: 2
    t.string    "m_su1",           limit: 2
    t.string    "m_m1",            limit: 2
    t.string    "m_tu1",           limit: 2
    t.string    "m_w1",            limit: 2
    t.string    "m_th1",           limit: 2
    t.string    "m_f2",            limit: 2
    t.string    "m_sa2",           limit: 2
    t.string    "m_su2",           limit: 2
    t.string    "m_m2",            limit: 2
    t.string    "m_tu2",           limit: 2
    t.string    "m_w2",            limit: 2
    t.string    "m_th2",           limit: 2
    t.string    "m_f3",            limit: 2
    t.string    "m_per_label1",    limit: 10
    t.string    "m_per_label2",    limit: 10
    t.string    "m_per_label3",    limit: 10
    t.string    "m_per_label4",    limit: 10
    t.string    "m_per_label5",    limit: 10
    t.string    "m_per_label6",    limit: 10
    t.string    "m_per_label7",    limit: 10
    t.string    "m_per_label8",    limit: 10
    t.string    "m_per_label9",    limit: 10
    t.string    "m_per_label10",   limit: 10
    t.string    "m_per_label11",   limit: 10
    t.string    "m_per_label12",   limit: 10
    t.string    "m_period6",       limit: 10
    t.string    "m_period7",       limit: 10
    t.string    "m_period8",       limit: 10
    t.string    "m_period9",       limit: 10
    t.string    "m_period10",      limit: 10
    t.string    "m_period11",      limit: 10
    t.string    "m_period12",      limit: 10
    t.string    "m_job_num",       limit: 10
    t.string    "m_task",          limit: 4
    t.string    "m_approval1",     limit: 30
    t.string    "m_approval2",     limit: 30
    t.string    "m_approval3",     limit: 30
    t.string    "m_flight",        limit: 100
    t.integer   "m_kind",          limit: 1
    t.decimal   "m_commission",                precision: 9,  scale: 2
    t.decimal   "m_status",                    precision: 9,  scale: 0
    t.string    "m_brand",         limit: 20
    t.integer   "m_closed",        limit: 1
    t.integer   "m_inactive",      limit: 1
    t.integer   "m_approved",      limit: 1
    t.string    "m_approved_by",   limit: 4
    t.timestamp "m_approved_date"
    t.string    "m_edited_by",     limit: 4
    t.timestamp "m_edited_when"
  end

  add_index "media_plans", ["m_ae_team"], name: "m_ae_team"
  add_index "media_plans", ["m_approved_date"], name: "m_approved_date"
  add_index "media_plans", ["m_campaign"], name: "m_campaign"
  add_index "media_plans", ["m_client_num"], name: "m_client_num"
  add_index "media_plans", ["m_job_num"], name: "m_job_num"
  add_index "media_plans", ["m_name"], name: "m_name"
  add_index "media_plans", ["m_num"], name: "m_num"
  add_index "media_plans", ["m_start_date"], name: "m_start_date"
  add_index "media_plans", ["m_type"], name: "m_type"

  create_table "media_prefs", primary_key: "mpf_seq", force: true do |t|
    t.decimal   "mpf_num",                    precision: 15, scale: 0
    t.string    "mpf_prefix",      limit: 3
    t.text      "mpf_disclaimer"
    t.string    "mpf_org",         limit: 50
    t.string    "mpf_address1",    limit: 50
    t.string    "mpf_address2",    limit: 50
    t.string    "mpf_address3",    limit: 50
    t.string    "mpf_phone",       limit: 50
    t.decimal   "mpf_comm",                   precision: 15, scale: 2
    t.string    "mpf_to1",         limit: 10
    t.string    "mpf_to2",         limit: 10
    t.string    "mpf_to3",         limit: 10
    t.string    "mpf_to4",         limit: 10
    t.string    "mpf_to5",         limit: 10
    t.string    "mpf_to6",         limit: 10
    t.string    "mpf_field1",      limit: 15
    t.string    "mpf_field2",      limit: 15
    t.string    "mpf_field3",      limit: 15
    t.string    "mpf_field4",      limit: 15
    t.string    "mpf_field5",      limit: 15
    t.integer   "mpf_auto_num",    limit: 1
    t.binary    "mpf_logo"
    t.integer   "mpf_show_cl",     limit: 1
    t.decimal   "mpf_radio_1q",               precision: 15, scale: 0
    t.decimal   "mpf_radio_2q",               precision: 15, scale: 0
    t.decimal   "mpf_radio_3q",               precision: 15, scale: 0
    t.decimal   "mpf_radio_4q",               precision: 15, scale: 0
    t.decimal   "mpf_tv_1q",                  precision: 15, scale: 0
    t.decimal   "mpf_tv_2q",                  precision: 15, scale: 0
    t.decimal   "mpf_tv_3q",                  precision: 15, scale: 0
    t.decimal   "mpf_tv_4q",                  precision: 15, scale: 0
    t.decimal   "mpf_cable_1q",               precision: 15, scale: 0
    t.decimal   "mpf_cable_2q",               precision: 15, scale: 0
    t.decimal   "mpf_cable_3q",               precision: 15, scale: 0
    t.decimal   "mpf_cable_4q",               precision: 15, scale: 0
    t.decimal   "mpf_news_1q",                precision: 15, scale: 0
    t.decimal   "mpf_news_2q",                precision: 15, scale: 0
    t.decimal   "mpf_news_3q",                precision: 15, scale: 0
    t.decimal   "mpf_news_4q",                precision: 15, scale: 0
    t.decimal   "mpf_mag_1q",                 precision: 15, scale: 0
    t.decimal   "mpf_mag_2q",                 precision: 15, scale: 0
    t.decimal   "mpf_mag_3q",                 precision: 15, scale: 0
    t.decimal   "mpf_mag_4q",                 precision: 15, scale: 0
    t.decimal   "mpf_out_1q",                 precision: 15, scale: 0
    t.decimal   "mpf_out_2q",                 precision: 15, scale: 0
    t.decimal   "mpf_out_3q",                 precision: 15, scale: 0
    t.decimal   "mpf_out_4q",                 precision: 15, scale: 0
    t.decimal   "mpf_int_1q",                 precision: 15, scale: 0
    t.decimal   "mpf_int_2q",                 precision: 15, scale: 0
    t.decimal   "mpf_int_3q",                 precision: 15, scale: 0
    t.decimal   "mpf_int_4q",                 precision: 15, scale: 0
    t.decimal   "mpf_other_1q",               precision: 15, scale: 0
    t.decimal   "mpf_other_2q",               precision: 15, scale: 0
    t.decimal   "mpf_other_3q",               precision: 15, scale: 0
    t.decimal   "mpf_other_4q",               precision: 15, scale: 0
    t.integer   "mpf_kind",        limit: 1
    t.string    "mpf_edited_by",   limit: 4
    t.timestamp "mpf_edited_when"
  end

  add_index "media_prefs", ["mpf_kind"], name: "mpf_kind"

  create_table "meetings", primary_key: "meet_seq", force: true do |t|
    t.date      "meet_date"
    t.timestamp "meet_time"
    t.string    "meet_added_by",     limit: 4
    t.decimal   "meet_duration",                 precision: 9, scale: 0
    t.string    "meet_topic",        limit: 100
    t.text      "meet_objective"
    t.text      "meet_discussion"
    t.string    "meet_location",     limit: 40
    t.text      "meet_directions"
    t.text      "meet_attendees"
    t.string    "meet_job_num",      limit: 10
    t.text      "meet_action_items"
    t.integer   "meet_fwd_sum",      limit: 1
    t.string    "meet_cc",           limit: 100
    t.string    "meet_coord",        limit: 4
    t.string    "meet_client_num",   limit: 10
    t.text      "meet_email_to"
    t.integer   "meet_notify",       limit: 1
    t.integer   "meet_status",       limit: 1
    t.timestamp "meet_next_date"
    t.string    "meet_edited_by",    limit: 4
    t.timestamp "meet_edited_when"
  end

  add_index "meetings", ["meet_client_num"], name: "meet_client_num"
  add_index "meetings", ["meet_date"], name: "meet_date"
  add_index "meetings", ["meet_job_num"], name: "meet_job_num"

  create_table "mlink_log", primary_key: "mlog_seq", force: true do |t|
    t.timestamp "mlog_date"
    t.string    "mlog_buyid",    limit: 15
    t.text      "mlog_status"
    t.string    "mlog_added_by", limit: 10
  end

  add_index "mlink_log", ["mlog_date"], name: "mlog_date"

  create_table "mlink_prefs", primary_key: "mlink_seq", force: true do |t|
    t.integer   "mlink_enable_log",      limit: 1
    t.text      "mlink_path"
    t.integer   "mlink_auto_import",     limit: 1
    t.integer   "mlink_import_every",    limit: 1
    t.time      "mlink_import_time"
    t.decimal   "mlink_import_minutes",              precision: 9,  scale: 0
    t.integer   "mlink_clients_pref",    limit: 1
    t.integer   "mlink_after_pref",      limit: 1
    t.text      "mlink_move_path"
    t.string    "mlink_system",          limit: 30
    t.string    "mlink_status",          limit: 100
    t.timestamp "mlink_last_import"
    t.decimal   "mlink_count_today",                 precision: 9,  scale: 0
    t.decimal   "mlink_count_total",                 precision: 9,  scale: 0
    t.decimal   "mlink_amt",                         precision: 15, scale: 2
    t.string    "mlink_import_interval", limit: 40
    t.date      "mlink_date"
    t.integer   "mlink_vendors_pref",    limit: 1
    t.integer   "mlink_bell",            limit: 1
    t.integer   "mlink_notify",          limit: 1
    t.string    "mlink_email_name",      limit: 50
    t.string    "mlink_email_address",   limit: 50
    t.integer   "mlink_tv_bill_net",     limit: 1
    t.integer   "mlink_print_bill_net",  limit: 1
    t.integer   "mlink_broad_comm",      limit: 1
    t.integer   "mlink_print_comm",      limit: 1
    t.string    "mlink_edited_by",       limit: 4
    t.timestamp "mlink_edited_when"
  end

  create_table "odbcusers", id: false, force: true do |t|
    t.string  "odbcusername",   limit: 32
    t.string  "odbcpassword",   limit: 64
    t.integer "odbcaccessmask"
  end

  add_index "odbcusers", ["odbcusername"], name: "odbcusername"

  create_table "outbox", primary_key: "out_seq", force: true do |t|
    t.string    "out_from_email", limit: 40
    t.string    "out_to_email",   limit: 40
    t.string    "out_subject",    limit: 120
    t.text      "out_body"
    t.string    "out_cc",         limit: 40
    t.string    "out_bcc",        limit: 40
    t.string    "out_real_name",  limit: 60
    t.string    "out_attachment", limit: 40
    t.timestamp "out_date_added"
    t.string    "out_added_by",   limit: 4
    t.timestamp "out_send_date"
    t.integer   "out_ok",         limit: 1
  end

  add_index "outbox", ["out_ok"], name: "out_ok"
  add_index "outbox", ["out_send_date"], name: "out_send_date"

  create_table "palm_cats", primary_key: "palm_cat_seq", force: true do |t|
    t.string  "palm_cat_name", limit: 15
    t.integer "palm_cat_id",   limit: 1
    t.string  "palm_cat_user", limit: 10
  end

  add_index "palm_cats", ["palm_cat_id"], name: "palm_cat_id"
  add_index "palm_cats", ["palm_cat_user"], name: "palm_cat_user"

  create_table "palm_jobs", primary_key: "palm_job_seq", force: true do |t|
    t.integer "palm_job_id"
    t.string  "palm_job_attribs",  limit: 4
    t.integer "palm_job_category", limit: 1
    t.string  "palm_job_num",      limit: 10
    t.string  "palm_job_name",     limit: 73
    t.string  "palm_job_user",     limit: 10
    t.integer "palm_job_plus",     limit: 1
  end

  add_index "palm_jobs", ["palm_job_num"], name: "palm_job_num"
  add_index "palm_jobs", ["palm_job_user"], name: "palm_job_user"

  create_table "palm_tasks", primary_key: "palm_task_seq", force: true do |t|
    t.string  "palm_task_code",    limit: 4
    t.string  "palm_task_name",    limit: 57
    t.string  "palm_task_user",    limit: 10
    t.integer "palm_task_id"
    t.integer "palm_task_cat",     limit: 1
    t.string  "palm_task_attribs", limit: 4
  end

  add_index "palm_tasks", ["palm_task_code"], name: "palm_task_code"
  add_index "palm_tasks", ["palm_task_id"], name: "palm_task_id"
  add_index "palm_tasks", ["palm_task_user"], name: "palm_task_user"

  create_table "payment_items", primary_key: "px_seq", force: true do |t|
    t.string    "px_ar_num",      limit: 10
    t.decimal   "px_amt",                    precision: 15, scale: 2
    t.decimal   "px_cgl",                    precision: 15, scale: 2
    t.date      "px_posted"
    t.decimal   "px_period",                 precision: 9,  scale: 0
    t.string    "px_check_num",   limit: 12
    t.string    "px_client_num",  limit: 10
    t.decimal   "px_disc_amt",               precision: 15, scale: 2
    t.decimal   "px_disc_gl",                precision: 15, scale: 2
    t.string    "px_added_by",    limit: 4
    t.timestamp "px_added_when"
    t.string    "px_edited_by",   limit: 4
    t.timestamp "px_edited_when"
  end

  add_index "payment_items", ["px_ar_num"], name: "px_ar_num"
  add_index "payment_items", ["px_check_num"], name: "px_check_num"
  add_index "payment_items", ["px_client_num"], name: "px_client_num"
  add_index "payment_items", ["px_period"], name: "px_period"
  add_index "payment_items", ["px_posted"], name: "px_posted"

  create_table "payments", primary_key: "pay_seq", force: true do |t|
    t.string    "pay_client_num",  limit: 10
    t.string    "pay_check_num",   limit: 10
    t.decimal   "pay_amt",                    precision: 15, scale: 2
    t.date      "pay_check_date"
    t.string    "pay_type",        limit: 10
    t.date      "pay_date"
    t.text      "pay_desc"
    t.decimal   "pay_dgl",                    precision: 15, scale: 2
    t.boolean   "pay_boolean"
    t.date      "pay_posted"
    t.string    "pay_added_by",    limit: 4
    t.date      "pay_added_when"
    t.integer   "pay_ok",          limit: 1
    t.decimal   "pay_period",                 precision: 9,  scale: 0
    t.string    "pay_bank",        limit: 10
    t.integer   "pay_kind",        limit: 1
    t.string    "pay_batch",       limit: 10
    t.string    "pay_bank_id",     limit: 10
    t.string    "pay_edited_by",   limit: 4
    t.timestamp "pay_edited_when"
    t.string    "pay_posted_by",   limit: 4
    t.timestamp "pay_posted_when"
  end

  add_index "payments", ["pay_added_by"], name: "pay_added_by"
  add_index "payments", ["pay_added_when"], name: "pay_added_when"
  add_index "payments", ["pay_batch"], name: "pay_batch"
  add_index "payments", ["pay_check_date"], name: "pay_check_date"
  add_index "payments", ["pay_check_num"], name: "pay_check_num"
  add_index "payments", ["pay_client_num"], name: "pay_client_num"
  add_index "payments", ["pay_date"], name: "pay_date"
  add_index "payments", ["pay_ok"], name: "pay_ok"
  add_index "payments", ["pay_period"], name: "pay_period"
  add_index "payments", ["pay_posted"], name: "pay_posted"

  create_table "pc", primary_key: "pc_seq", force: true do |t|
    t.string    "pc_num",           limit: 10
    t.string    "pc_name",          limit: 40
    t.text      "pc_desc"
    t.string    "pc_corp_id",       limit: 100
    t.string    "pc_added_by",      limit: 4
    t.timestamp "pc_added_when"
    t.string    "pc_edited_by",     limit: 4
    t.timestamp "pc_edited_when"
    t.string    "pc_bus_unit",      limit: 20
    t.integer   "pc_outdated",      limit: 1
    t.integer   "pc_ar_show",       limit: 1
    t.string    "pc_bill_org",      limit: 60
    t.string    "pc_bill_address1", limit: 60
    t.string    "pc_bill_address2", limit: 60
    t.string    "pc_bill_address3", limit: 60
  end

  add_index "pc", ["pc_num"], name: "pc_num"

  create_table "pictures", primary_key: "picture_seq", force: true do |t|
    t.string    "picture_num",         limit: 10
    t.binary    "picture_photo"
    t.text      "picture_text"
    t.string    "picture_added_by",    limit: 4
    t.timestamp "picture_added_when"
    t.string    "picture_edited_by",   limit: 4
    t.timestamp "picture_edited_when"
  end

  add_index "pictures", ["picture_num"], name: "picture_num"

  create_table "po_items", primary_key: "pox_seq", force: true do |t|
    t.integer   "pox_line_number"
    t.string    "pox_job_num",     limit: 10
    t.string    "pox_task",        limit: 4
    t.text      "pox_desc"
    t.string    "pox_program",     limit: 30
    t.decimal   "pox_qty",                    precision: 9,  scale: 0
    t.decimal   "pox_cost_each",              precision: 15, scale: 4
    t.decimal   "pox_cost",                   precision: 15, scale: 2
    t.decimal   "pox_markup",                 precision: 9,  scale: 2
    t.decimal   "pox_gross",                  precision: 15, scale: 2
    t.decimal   "pox_cost_paid",              precision: 15, scale: 2
    t.decimal   "pox_gross_paid",             precision: 15, scale: 2
    t.string    "pox_po_num",      limit: 12
    t.integer   "pox_billable",    limit: 1
    t.string    "pox_unit",        limit: 6
    t.string    "pox_name",        limit: 40
    t.string    "pox_key",         limit: 15
    t.decimal   "pox_buydetid",               precision: 9,  scale: 0
    t.date      "pox_due_date"
    t.date      "pox_due_date2"
    t.string    "pox_issue_date",  limit: 12
    t.string    "pox_revision",    limit: 10
    t.string    "pox_ap_ok",       limit: 10
    t.string    "pox_ad_size",     limit: 25
    t.string    "pox_ad_name",     limit: 25
    t.string    "pox_ar_num",      limit: 12
    t.string    "pox_pub",         limit: 25
    t.string    "pox_client_num",  limit: 10
    t.integer   "pox_bill_net",    limit: 1
    t.decimal   "pox_type",                   precision: 9,  scale: 0
    t.decimal   "pox_rating",                 precision: 9,  scale: 2
    t.decimal   "pox_cpp",                    precision: 9,  scale: 2
    t.decimal   "pox_cpm",                    precision: 9,  scale: 2
    t.integer   "pox_makegood",    limit: 1
    t.decimal   "pox_ar_amt",                 precision: 9,  scale: 2
    t.string    "pox_cost_num",    limit: 20
    t.date      "pox_bill_date"
    t.integer   "pox_sales_tax",   limit: 1
    t.date      "pox_issue_date2"
    t.integer   "pox_trade",       limit: 1
    t.date      "pox_run_date"
    t.string    "pox_added_by",    limit: 5
    t.timestamp "pox_added_when"
    t.string    "pox_edited_by",   limit: 4
    t.timestamp "pox_edited_when"
    t.integer   "pox_taxable1",    limit: 1
    t.integer   "pox_taxable2",    limit: 1
  end

  add_index "po_items", ["pox_ar_num"], name: "pox_ar_num"
  add_index "po_items", ["pox_bill_date"], name: "pox_bill_date"
  add_index "po_items", ["pox_client_num"], name: "pox_client_num"
  add_index "po_items", ["pox_due_date"], name: "pox_due_date"
  add_index "po_items", ["pox_due_date2"], name: "pox_due_date2"
  add_index "po_items", ["pox_issue_date2"], name: "pox_issue_date2"
  add_index "po_items", ["pox_job_num"], name: "pox_job_num"
  add_index "po_items", ["pox_key"], name: "pox_key"
  add_index "po_items", ["pox_po_num"], name: "pox_po_num"
  add_index "po_items", ["pox_program"], name: "pox_program"
  add_index "po_items", ["pox_run_date"], name: "pox_run_date"
  add_index "po_items", ["pox_trade"], name: "pox_trade"
  add_index "po_items", ["pox_type"], name: "pox_type"

  create_table "po_template", primary_key: "pt_seq", force: true do |t|
    t.string    "pt_template",         limit: 20
    t.string    "pt_job_num",          limit: 10
    t.string    "pt_task",             limit: 4
    t.string    "pt_desc_label",       limit: 15
    t.text      "pt_desc"
    t.string    "pt_vendor_num",       limit: 10
    t.decimal   "pt_cost",                        precision: 15, scale: 2
    t.decimal   "pt_markup",                      precision: 9,  scale: 2
    t.decimal   "pt_tax",                         precision: 9,  scale: 2
    t.decimal   "pt_gross",                       precision: 15, scale: 2
    t.integer   "pt_type",             limit: 1
    t.text      "pt_ship_note"
    t.string    "pt_ship1",            limit: 40
    t.string    "pt_ship2",            limit: 40
    t.string    "pt_ship3",            limit: 40
    t.string    "pt_ship4",            limit: 40
    t.string    "pt_qty_label",        limit: 15
    t.string    "pt_qty",              limit: 20
    t.string    "pt_approval1",        limit: 30
    t.string    "pt_approval2",        limit: 30
    t.string    "pt_approval3",        limit: 30
    t.decimal   "pt_terms1",                      precision: 9,  scale: 2
    t.decimal   "pt_terms2",                      precision: 9,  scale: 0
    t.decimal   "pt_terms3",                      precision: 9,  scale: 0
    t.string    "pt_pc",               limit: 10
    t.string    "pt_to1",              limit: 10
    t.string    "pt_to2",              limit: 10
    t.string    "pt_to3",              limit: 10
    t.string    "pt_to4",              limit: 10
    t.string    "pt_to5",              limit: 10
    t.string    "pt_vendor1",          limit: 40
    t.string    "pt_vendor2",          limit: 40
    t.string    "pt_vendor3",          limit: 40
    t.string    "pt_vendor4",          limit: 40
    t.string    "pt_vendor5",          limit: 40
    t.string    "pt_field_label1",     limit: 15
    t.string    "pt_field_label2",     limit: 15
    t.string    "pt_field_label3",     limit: 15
    t.string    "pt_field_label4",     limit: 15
    t.string    "pt_field_label5",     limit: 15
    t.string    "pt_field1",           limit: 15
    t.string    "pt_field2",           limit: 15
    t.string    "pt_field3",           limit: 15
    t.string    "pt_field4",           limit: 15
    t.string    "pt_field5",           limit: 15
    t.integer   "pt_tax_exempt",       limit: 1
    t.text      "pt_disclaimer"
    t.string    "pt_item_desc",        limit: 50
    t.integer   "pt_kind",             limit: 1
    t.string    "pt_added_by",         limit: 4
    t.timestamp "pt_added_when"
    t.string    "pt_edited_by",        limit: 4
    t.timestamp "pt_edited_when"
    t.text      "pt_terms_conditions"
    t.text      "pt_terms_header"
    t.integer   "pt_terms_print1",     limit: 1
    t.integer   "pt_terms_print2",     limit: 1
    t.integer   "pt_terms_print3",     limit: 1
    t.integer   "pt_terms_print4",     limit: 1
    t.integer   "pt_terms_print5",     limit: 1
  end

  add_index "po_template", ["pt_kind"], name: "pt_kind"
  add_index "po_template", ["pt_template"], name: "pt_template"

  create_table "prefs", primary_key: "pref_seq", force: true do |t|
    t.integer   "pref_gl",                   limit: 1
    t.integer   "pref_ap_aging",             limit: 1
    t.integer   "pref_ar_aging",             limit: 1
    t.integer   "pref_diary",                limit: 1
    t.integer   "pref_charge_num",           limit: 1
    t.integer   "pref_job_type",             limit: 1
    t.integer   "pref_close_job_costs",      limit: 1
    t.integer   "pref_rate_kind",            limit: 1
    t.integer   "pref_shared_picts",         limit: 1
    t.integer   "pref_dates",                limit: 1
    t.integer   "pref_find_time",            limit: 1
    t.integer   "pref_mail",                 limit: 1
    t.integer   "pref_ck_copies",            limit: 1
    t.integer   "pref_wip",                  limit: 1
    t.integer   "pref_proof_printer",        limit: 1
    t.integer   "pref_close_job_tasks",      limit: 1
    t.integer   "pref_overdue_email",        limit: 1
    t.string    "pref_code",                 limit: 4
    t.string    "pref_traffic1",             limit: 25
    t.string    "pref_traffic2",             limit: 25
    t.string    "pref_traffic3",             limit: 25
    t.string    "pref_traffic4",             limit: 25
    t.string    "pref_traffic5",             limit: 25
    t.string    "pref_traffic6",             limit: 25
    t.string    "pref_traf1_init",           limit: 2
    t.string    "pref_traf2_init",           limit: 2
    t.string    "pref_traf3_init",           limit: 2
    t.string    "pref_traf4_init",           limit: 2
    t.string    "pref_traf5_init",           limit: 2
    t.string    "pref_traf6_init",           limit: 2
    t.string    "pref_tax_id1",              limit: 20
    t.string    "pref_tax_id2",              limit: 20
    t.string    "pref_address1",             limit: 60
    t.string    "pref_address2",             limit: 60
    t.string    "pref_address3",             limit: 60
    t.string    "pref_bill_org",             limit: 60
    t.string    "pref_bill_address1",        limit: 60
    t.string    "pref_bill_address2",        limit: 60
    t.string    "pref_bill_address3",        limit: 60
    t.string    "pref_org",                  limit: 60
    t.string    "pref_currency",             limit: 5
    t.decimal   "pref_std_markup",                       precision: 9,  scale: 2
    t.string    "pref_sys_mgr",              limit: 40
    t.date      "pref_date_started"
    t.string    "pref_smtp_server",          limit: 40
    t.string    "pref_sys_mgr_email",        limit: 100
    t.decimal   "pref_je_ref",                           precision: 9,  scale: 0
    t.decimal   "pref_ar_num",                           precision: 9,  scale: 0
    t.string    "pref_office_num",           limit: 10
    t.text      "pref_help_sys_text"
    t.date      "pref_time_checked"
    t.text      "pref_time_msg"
    t.decimal   "pref_est_t_margin",                     precision: 9,  scale: 2
    t.decimal   "pref_est_b_margin",                     precision: 9,  scale: 2
    t.decimal   "pref_est_l_margin",                     precision: 9,  scale: 2
    t.decimal   "pref_inv_t_margin",                     precision: 9,  scale: 2
    t.decimal   "pref_inv_b_margin",                     precision: 9,  scale: 2
    t.decimal   "pref_inv_l_margin",                     precision: 9,  scale: 2
    t.decimal   "pref_po_t_margin",                      precision: 9,  scale: 2
    t.decimal   "pref_po_b_margin",                      precision: 9,  scale: 2
    t.decimal   "pref_po_l_margin",                      precision: 9,  scale: 2
    t.decimal   "pref_stmt_t_margin",                    precision: 9,  scale: 2
    t.decimal   "pref_stmt_b_margin",                    precision: 9,  scale: 2
    t.decimal   "pref_stmt_l_margin",                    precision: 9,  scale: 2
    t.integer   "pref_ar_show_addr",         limit: 1
    t.string    "pref_bill1",                limit: 30
    t.string    "pref_bill2",                limit: 30
    t.string    "pref_bill3",                limit: 30
    t.string    "pref_bill4",                limit: 30
    t.string    "pref_bill5",                limit: 30
    t.string    "pref_bill6",                limit: 30
    t.string    "pref_bill7",                limit: 30
    t.string    "pref_bill8",                limit: 30
    t.integer   "pref_overbudget_email",     limit: 1
    t.integer   "pref_close_write_off",      limit: 1
    t.integer   "pref_spell",                limit: 1
    t.string    "pref_curr_name",            limit: 12
    t.integer   "pref_approve_ar",           limit: 1
    t.string    "pref_ar_approval1",         limit: 40
    t.string    "pref_ar_approval2",         limit: 40
    t.string    "pref_ar_approval3",         limit: 40
    t.integer   "pref_ar_show_est",          limit: 1
    t.integer   "pref_ar_show_job",          limit: 1
    t.text      "pref_bill_instructions"
    t.integer   "pref_ar_return_days",       limit: 1
    t.string    "pref_help_email",           limit: 100
    t.string    "pref_wish_email",           limit: 100
    t.integer   "pref_user_field1",          limit: 1
    t.integer   "pref_user_field2",          limit: 1
    t.integer   "pref_user_field3",          limit: 1
    t.integer   "pref_user_field4",          limit: 1
    t.integer   "pref_user_field5",          limit: 1
    t.integer   "pref_user_field6",          limit: 1
    t.integer   "pref_pc",                   limit: 1
    t.integer   "pref_bill_email",           limit: 1
    t.integer   "pref_bill_email_ae",        limit: 1
    t.integer   "pref_bill_email_traf1",     limit: 1
    t.integer   "pref_bill_email_traf2",     limit: 1
    t.integer   "pref_bill_email_traf3",     limit: 1
    t.integer   "pref_bill_email_traf4",     limit: 1
    t.integer   "pref_bill_email_traf5",     limit: 1
    t.integer   "pref_bill_email_traf6",     limit: 1
    t.integer   "pref_ping_server",          limit: 1
    t.integer   "pref_export_format",        limit: 1
    t.integer   "pref_job_complete",         limit: 1
    t.integer   "pref_status_amin",          limit: 1
    t.string    "pref_client_kind1",         limit: 20
    t.string    "pref_client_kind2",         limit: 20
    t.string    "pref_client_kind3",         limit: 20
    t.string    "pref_client_kind4",         limit: 20
    t.string    "pref_client_kind5",         limit: 20
    t.string    "pref_client_kind6",         limit: 20
    t.integer   "pref_pdf_driver",           limit: 1
    t.integer   "pref_user_guide",           limit: 1
    t.text      "pref_email_body_inv"
    t.text      "pref_email_body_est"
    t.string    "pref_priority1",            limit: 20
    t.string    "pref_priority2",            limit: 20
    t.string    "pref_priority3",            limit: 20
    t.string    "pref_priority4",            limit: 20
    t.string    "pref_priority5",            limit: 20
    t.string    "pref_priority6",            limit: 20
    t.integer   "pref_time_approve",         limit: 1
    t.date      "pref_verify"
    t.integer   "pref_no_merchant_imp",      limit: 1
    t.integer   "pref_no_graphs_jobs",       limit: 1
    t.integer   "pref_no_graphs_clients",    limit: 1
    t.decimal   "pref_lnum",                             precision: 9,  scale: 0
    t.decimal   "pref_lserial",                          precision: 9,  scale: 0
    t.date      "pref_last_update"
    t.integer   "pref_web_running",          limit: 1
    t.text      "pref_appr_ftp_path"
    t.string    "pref_appr_ftp_login",       limit: 200
    t.string    "pref_appr_ftp_pw",          limit: 200
    t.decimal   "pref_appr_expires",                     precision: 9,  scale: 0
    t.text      "pref_appr_header"
    t.string    "pref_support_exp",          limit: 200
    t.integer   "pref_req_j_field1",         limit: 1
    t.integer   "pref_req_j_field2",         limit: 1
    t.integer   "pref_req_j_field3",         limit: 1
    t.integer   "pref_req_j_field4",         limit: 1
    t.integer   "pref_req_j_field5",         limit: 1
    t.integer   "pref_req_j_field6",         limit: 1
    t.string    "pref_j_field1_label",       limit: 20
    t.string    "pref_j_field2_label",       limit: 20
    t.string    "pref_j_field3_label",       limit: 20
    t.string    "pref_j_field4_label",       limit: 20
    t.string    "pref_j_field5_label",       limit: 20
    t.string    "pref_j_field6_label",       limit: 20
    t.text      "pref_psx_std_terms"
    t.text      "pref_psx_win_email"
    t.text      "pref_psx_loser_email"
    t.integer   "pref_psx_notify_winner",    limit: 1
    t.integer   "pref_psx_notify_losers",    limit: 1
    t.integer   "pref_req_appr_props",       limit: 1
    t.integer   "pref_req_appr_cb",          limit: 1
    t.integer   "pref_req_appr_est",         limit: 1
    t.integer   "pref_req_appr_sched",       limit: 1
    t.integer   "pref_req_appr_job",         limit: 1
    t.integer   "pref_req_appr_po",          limit: 1
    t.integer   "pref_req_appr_ap",          limit: 1
    t.integer   "pref_req_appr_ar",          limit: 1
    t.integer   "pref_req_appr_mo",          limit: 1
    t.integer   "pref_req_appr_media",       limit: 1
    t.text      "pref_appr_email"
    t.integer   "pref_appr_online_oks",      limit: 1
    t.string    "pref_req_cb_by",            limit: 4
    t.string    "pref_req_props_by",         limit: 4
    t.string    "pref_req_est_by",           limit: 4
    t.string    "pref_req_sched_by",         limit: 4
    t.string    "pref_req_job_by",           limit: 4
    t.string    "pref_req_po_by",            limit: 4
    t.string    "pref_req_ap_by",            limit: 4
    t.string    "pref_req_ar_by",            limit: 4
    t.string    "pref_req_mo_by",            limit: 4
    t.string    "pref_req_media_by",         limit: 4
    t.integer   "pref_overhours_email",      limit: 1
    t.integer   "pref_hide_tax_on_ests",     limit: 1
    t.text      "pref_appr_server_url"
    t.text      "pref_appr_myx_url"
    t.integer   "pref_disable_bad_login",    limit: 1
    t.integer   "pref_skip_sat",             limit: 1
    t.integer   "pref_skip_sun",             limit: 1
    t.integer   "pref_skip_holidays",        limit: 1
    t.string    "pref_edited_by",            limit: 4
    t.timestamp "pref_edited_when"
    t.string    "pref_country",              limit: 3
    t.decimal   "pref_hours_overtime",                   precision: 9,  scale: 2
    t.integer   "pref_paper_size",           limit: 1
    t.integer   "pref_ar_numbering",         limit: 1
    t.integer   "pref_share_proj_num",       limit: 1
    t.integer   "pref_outbox",               limit: 1
    t.binary    "pref_owrite_styles"
    t.string    "pref_db_nickname",          limit: 30
    t.integer   "pref_disable_sw_update",    limit: 1
    t.integer   "pref_fast_f_score",         limit: 1
    t.integer   "pref_fast_a_score",         limit: 1
    t.integer   "pref_fast_s_score",         limit: 1
    t.integer   "pref_fast_t_score",         limit: 1
    t.string    "pref_grade_a",              limit: 25
    t.string    "pref_grade_b",              limit: 25
    t.string    "pref_grade_c",              limit: 25
    t.string    "pref_grade_d",              limit: 25
    t.string    "pref_grade_f",              limit: 25
    t.string    "pref_language",             limit: 35
    t.integer   "pref_winners_do_time",      limit: 1
    t.string    "pref_winners_notify_email", limit: 100
    t.date      "pref_winners_checked"
    t.string    "pref_job_user_date1",       limit: 20
    t.string    "pref_job_user_date2",       limit: 20
    t.integer   "pref_ical_sync",            limit: 1
    t.integer   "pref_tax3_option1",         limit: 1
    t.integer   "pref_tax3_option2",         limit: 1
    t.decimal   "pref_tax3_percent",                     precision: 15, scale: 2
    t.string    "pref_homebase_dropbox",     limit: 100
    t.text      "pref_homebase_pw"
    t.decimal   "pref_job_complete_pc",                  precision: 15, scale: 0
    t.decimal   "pref_rush_chg1",                        precision: 15, scale: 0
    t.decimal   "pref_rush_chg2",                        precision: 15, scale: 0
    t.decimal   "pref_rush_chg3",                        precision: 15, scale: 0
    t.integer   "pref_email_pw",             limit: 1
    t.integer   "pref_strong_pw",            limit: 1
    t.integer   "pref_time_point1",          limit: 1
    t.integer   "pref_time_point2",          limit: 1
    t.integer   "pref_time_point3",          limit: 1
    t.integer   "pref_window_logo",          limit: 1
    t.integer   "pref_job_req_user_fields",  limit: 1
    t.integer   "pref_expire_pw"
    t.integer   "pref_req_pc_tasks",         limit: 1
    t.integer   "pref_prj_invite"
    t.integer   "pref_smtp_port"
    t.integer   "pref_smtp_ssl",             limit: 1
  end

  add_index "prefs", ["pref_code"], name: "pref_code"

  create_table "print_spec_values", primary_key: "psv_seq", force: true do |t|
    t.string    "psv_cat",         limit: 25
    t.text      "psv_value"
    t.string    "psv_added_by",    limit: 4
    t.timestamp "psv_added_when"
    t.string    "psv_edited_by",   limit: 4
    t.timestamp "psv_edited_when"
  end

  add_index "print_spec_values", ["psv_cat"], name: "psv_cat"

  create_table "print_specs", primary_key: "pspec_seq", force: true do |t|
    t.string    "pspec_job_num",          limit: 10
    t.string    "pspec_prod_coord",       limit: 10
    t.date      "pspec_date"
    t.date      "pspec_date_needed"
    t.text      "pspec_description"
    t.date      "pspec_art_due"
    t.date      "pspec_final_due"
    t.string    "pspec_qty",              limit: 30
    t.string    "pspec_overrun",          limit: 30
    t.string    "pspec_cov_flatsize",     limit: 30
    t.string    "pspec_cov_foldsize",     limit: 30
    t.string    "pspec_cov_stock",        limit: 60
    t.string    "pspec_cov_outside",      limit: 60
    t.string    "pspec_cov_inside",       limit: 60
    t.string    "pspec_cov_o_bleeds",     limit: 30
    t.string    "pspec_cov_i_bleeds",     limit: 30
    t.string    "pspec_cov_pantone",      limit: 60
    t.string    "pspec_tx_flatsize",      limit: 30
    t.string    "pspec_tx_foldsize",      limit: 30
    t.string    "pspec_tx_stock",         limit: 60
    t.string    "pspec_tx_colors",        limit: 60
    t.string    "pspec_tx_bleeds",        limit: 30
    t.string    "pspec_tx_pantone",       limit: 60
    t.string    "pspec_tx_pages",         limit: 30
    t.string    "pspec_in_flatsize",      limit: 30
    t.string    "pspec_in_foldsize",      limit: 30
    t.string    "pspec_in_stock",         limit: 60
    t.string    "pspec_in_colors",        limit: 60
    t.string    "pspec_in_pages",         limit: 30
    t.string    "pspec_in_bleeds",        limit: 30
    t.string    "pspec_in_pantone",       limit: 60
    t.boolean   "pspec_in_collate"
    t.boolean   "pspec_mech"
    t.boolean   "pspec_elec"
    t.boolean   "pspec_film"
    t.string    "pspec_no_images",        limit: 60
    t.string    "pspec_t1",               limit: 60
    t.string    "pspec_t2",               limit: 60
    t.string    "pspec_t3",               limit: 60
    t.string    "pspec_t4",               limit: 60
    t.string    "pspec_trans_spec",       limit: 60
    t.string    "pspec_r1",               limit: 60
    t.string    "pspec_r2",               limit: 60
    t.string    "pspec_r3",               limit: 60
    t.string    "pspec_r4",               limit: 60
    t.string    "pspec_ref_spec",         limit: 60
    t.text      "pspec_stripping"
    t.text      "pspec_proofing"
    t.text      "pspec_bindery"
    t.text      "pspec_package"
    t.string    "pspec_added_by",         limit: 4
    t.text      "pspec_status"
    t.string    "psx_prod_contact",       limit: 200
    t.string    "psx_format",             limit: 40
    t.string    "psx_format_other",       limit: 200
    t.decimal   "psx_qty_each",                       precision: 9, scale: 0
    t.decimal   "psx_qty_total",                      precision: 9, scale: 0
    t.integer   "psx_prepress",           limit: 1
    t.text      "psx_prepress_other"
    t.text      "psx_status"
    t.string    "psx_trim",               limit: 50
    t.string    "psx_folds_to",           limit: 20
    t.string    "psx_folds_other",        limit: 50
    t.string    "psx_weight",             limit: 10
    t.string    "psx_finish",             limit: 40
    t.string    "psx_type",               limit: 40
    t.string    "psx_special_stock",      limit: 100
    t.string    "psx_available_from",     limit: 40
    t.integer   "psx_client_supplied",    limit: 1
    t.string    "psx_drill",              limit: 40
    t.string    "psx_fold_glue",          limit: 40
    t.integer   "psx_cut",                limit: 1
    t.integer   "psx_collate",            limit: 1
    t.string    "psx_stitching",          limit: 200
    t.string    "psx_wrapping",           limit: 40
    t.string    "psx_tabs",               limit: 200
    t.integer   "psx_special_diecut",     limit: 1
    t.integer   "psx_special_foil",       limit: 1
    t.integer   "psx_special_lam",        limit: 1
    t.integer   "psx_special_presscheck", limit: 1
    t.integer   "psx_special_spotuv",     limit: 1
    t.integer   "psx_special_bind",       limit: 1
    t.integer   "psx_special_glue",       limit: 1
    t.text      "psx_special_other"
    t.text      "psx_special_notes"
    t.string    "psx_color1_process",     limit: 20
    t.string    "psx_color2_process",     limit: 20
    t.decimal   "psx_covr1_process",                  precision: 9, scale: 0
    t.decimal   "psx_covr2_process",                  precision: 9, scale: 0
    t.string    "psx_color1_pms",         limit: 20
    t.string    "psx_color2_pms",         limit: 20
    t.decimal   "psx_covr1_pms",                      precision: 9, scale: 0
    t.decimal   "psx_covr2_pms",                      precision: 9, scale: 0
    t.string    "psx_color1_metal",       limit: 20
    t.string    "psx_color2_metal",       limit: 20
    t.decimal   "psx_covr1_metal",                    precision: 9, scale: 0
    t.decimal   "psx_covr2_metal",                    precision: 9, scale: 0
    t.string    "psx_side1_coating",      limit: 40
    t.string    "psx_side2_coating",      limit: 40
    t.integer   "psx_special_option",     limit: 1
    t.date      "psx_del_date"
    t.integer   "psx_delivery",           limit: 1
    t.string    "psx_deliver1_to1",       limit: 40
    t.string    "psx_deliver1_to2",       limit: 40
    t.string    "psx_deliver1_to3",       limit: 40
    t.string    "psx_deliver1_to4",       limit: 40
    t.string    "psx_deliver1_qty",       limit: 15
    t.string    "psx_deliver2_to1",       limit: 40
    t.string    "psx_deliver2_to2",       limit: 40
    t.string    "psx_deliver2_to3",       limit: 40
    t.string    "psx_deliver2_to4",       limit: 40
    t.string    "psx_deliver2_qty",       limit: 15
    t.string    "psx_deliver3_to1",       limit: 40
    t.string    "psx_deliver3_to2",       limit: 40
    t.string    "psx_deliver3_to3",       limit: 40
    t.string    "psx_deliver3_to4",       limit: 40
    t.string    "psx_deliver3_qty",       limit: 15
    t.text      "psx_del_instructions"
    t.text      "psx_spec_instructions"
    t.text      "psx_inv_instructions"
    t.string    "psx_vendor1",            limit: 10
    t.string    "psx_vendor2",            limit: 10
    t.string    "psx_vendor3",            limit: 10
    t.string    "psx_bid1_1",             limit: 40
    t.string    "psx_bid1_2",             limit: 40
    t.string    "psx_bid1_3",             limit: 40
    t.string    "psx_bid1_4",             limit: 40
    t.string    "psx_bid2_1",             limit: 40
    t.string    "psx_bid2_2",             limit: 40
    t.string    "psx_bid2_3",             limit: 40
    t.string    "psx_bid2_4",             limit: 40
    t.string    "psx_bid3_1",             limit: 40
    t.string    "psx_bid3_2",             limit: 40
    t.string    "psx_bid3_3",             limit: 40
    t.string    "psx_bid3_4",             limit: 40
    t.decimal   "psx_bid1_amt",                       precision: 9, scale: 2
    t.decimal   "psx_bid2_amt",                       precision: 9, scale: 2
    t.decimal   "psx_bid3_amt",                       precision: 9, scale: 2
    t.decimal   "psx_bid4_amt",                       precision: 9, scale: 2
    t.text      "psx_bid1_notes"
    t.text      "psx_bid2_notes"
    t.text      "psx_bid3_notes"
    t.integer   "psx_bid_winner",         limit: 1
    t.date      "psx_date_awarded"
    t.string    "psx_awarded_by",         limit: 4
    t.integer   "psx_taxable",            limit: 1
    t.string    "psx_prod_contact_ph",    limit: 40
    t.string    "psx_prod_contact_email", limit: 40
    t.string    "psx_task",               limit: 4
    t.date      "psx_need_quote_by"
    t.string    "psx_drill_other",        limit: 40
    t.string    "psx_added_by",           limit: 4
    t.timestamp "psx_added_when"
    t.string    "psx_edited_by",          limit: 4
    t.timestamp "psx_edited_when"
  end

  add_index "print_specs", ["pspec_job_num"], name: "pspec_job_num"
  add_index "print_specs", ["psx_covr2_process"], name: "psx_covr2_process"

  create_table "programs", primary_key: "pgm_seq", force: true do |t|
    t.string    "pgm_code",        limit: 20
    t.string    "pgm_time_pgm",    limit: 30
    t.decimal   "pgm_rating_ea",              precision: 9,  scale: 2
    t.decimal   "pgm_cost_ea",                precision: 9,  scale: 2
    t.string    "pgm_group",       limit: 6
    t.text      "pgm_note"
    t.string    "pgm_type",        limit: 2
    t.string    "ad_name",         limit: 30
    t.string    "ad_position",     limit: 30
    t.text      "ad_notes"
    t.decimal   "ad_gross_amt",               precision: 15, scale: 2
    t.decimal   "ad_comm",                    precision: 9,  scale: 2
    t.decimal   "ad_net_amt",                 precision: 15, scale: 2
    t.decimal   "ad_extra_amt",               precision: 15, scale: 2
    t.decimal   "ad_bill_net",                precision: 9,  scale: 0
    t.string    "ad_issue_date",   limit: 30
    t.string    "ad_space_close",  limit: 30
    t.decimal   "ad_mat_close",               precision: 9,  scale: 0
    t.string    "pgm_key",         limit: 60
    t.string    "pgm_client_num",  limit: 10
    t.string    "ad_rate_basis",   limit: 4
    t.string    "pgm_added_by",    limit: 4
    t.timestamp "pgm_added_when"
    t.string    "pgm_edited_by",   limit: 4
    t.timestamp "pgm_edited_when"
  end

  add_index "programs", ["pgm_client_num"], name: "pgm_client_num"
  add_index "programs", ["pgm_code"], name: "pgm_code"
  add_index "programs", ["pgm_key"], name: "pgm_key"
  add_index "programs", ["pgm_time_pgm"], name: "pgm_time_pgm"
  add_index "programs", ["pgm_type"], name: "pgm_type"

  create_table "projects", primary_key: "proj_seq", force: true do |t|
    t.string    "proj_client_num",  limit: 10
    t.string    "proj_name",        limit: 20
    t.text      "proj_desc"
    t.decimal   "proj_budget",                 precision: 15, scale: 2
    t.decimal   "proj_num1",                   precision: 15, scale: 2
    t.decimal   "proj_num2",                   precision: 15, scale: 2
    t.decimal   "proj_num3",                   precision: 15, scale: 2
    t.decimal   "proj_num4",                   precision: 15, scale: 2
    t.decimal   "proj_num5",                   precision: 15, scale: 2
    t.decimal   "proj_num6",                   precision: 15, scale: 2
    t.decimal   "proj_num7",                   precision: 15, scale: 2
    t.decimal   "proj_num8",                   precision: 15, scale: 2
    t.decimal   "proj_num9",                   precision: 15, scale: 2
    t.decimal   "proj_num10",                  precision: 15, scale: 2
    t.decimal   "proj_num11",                  precision: 15, scale: 2
    t.decimal   "proj_num12",                  precision: 15, scale: 2
    t.string    "proj_status",      limit: 20
    t.string    "proj_added_by",    limit: 4
    t.timestamp "proj_added_when"
    t.string    "proj_edited_by",   limit: 4
    t.timestamp "proj_edited_when"
  end

  add_index "projects", ["proj_client_num"], name: "proj_client_num"
  add_index "projects", ["proj_name"], name: "proj_name"

  create_table "proposals", primary_key: "props_seq", force: true do |t|
    t.string    "props_client_num",    limit: 10
    t.date      "props_date_added"
    t.string    "props_requestor",     limit: 100
    t.string    "props_type",          limit: 15
    t.decimal   "props_budget",                    precision: 15, scale: 2
    t.date      "props_start_date"
    t.date      "props_due_date"
    t.string    "props_ok_by",         limit: 10
    t.text      "props_cb1"
    t.text      "props_cb2"
    t.text      "props_cb3"
    t.text      "props_cb4"
    t.text      "props_cb5"
    t.text      "props_cb6"
    t.text      "props_cb7"
    t.text      "props_cb8"
    t.text      "props_cb9"
    t.text      "props_cb10"
    t.text      "props_cb11"
    t.text      "props_cb12"
    t.text      "props_cb13"
    t.text      "props_cb14"
    t.text      "props_cb15"
    t.string    "props_name",          limit: 60
    t.date      "props_ok_date"
    t.text      "props_desc"
    t.string    "props_charge_num",    limit: 20
    t.string    "props_status_desc",   limit: 40
    t.integer   "props_status",        limit: 1
    t.string    "props_added_by",      limit: 10
    t.integer   "props_approved",      limit: 1
    t.string    "props_approved_by",   limit: 4
    t.timestamp "props_approved_date"
    t.string    "props_edited_by",     limit: 4
    t.timestamp "props_edited_when"
    t.string    "props_reviewer",      limit: 10
  end

  add_index "proposals", ["props_client_num"], name: "props_client_num"
  add_index "proposals", ["props_due_date"], name: "props_due_date"
  add_index "proposals", ["props_start_date"], name: "props_start_date"

  create_table "purchase_order", primary_key: "po_seq", force: true do |t|
    t.string    "po_num",           limit: 12
    t.string    "po_job_num",       limit: 15
    t.string    "po_task",          limit: 4
    t.string    "po_desc_label",    limit: 15
    t.text      "po_desc"
    t.string    "po_vendor_num",    limit: 10
    t.decimal   "po_cost",                     precision: 9,  scale: 2
    t.decimal   "po_markup",                   precision: 9,  scale: 2
    t.decimal   "po_comm",                     precision: 9,  scale: 2
    t.decimal   "po_tax",                      precision: 9,  scale: 2
    t.decimal   "po_gross",                    precision: 15, scale: 2
    t.decimal   "po_amt_paid",                 precision: 9,  scale: 2
    t.decimal   "po_type",                     precision: 9,  scale: 0
    t.string    "po_client_num",    limit: 10
    t.text      "po_ship_note"
    t.string    "po_ship1",         limit: 40
    t.string    "po_ship2",         limit: 40
    t.string    "po_ship3",         limit: 40
    t.string    "po_ship4",         limit: 40
    t.string    "po_qty_label",     limit: 15
    t.string    "po_qty",           limit: 20
    t.string    "po_approval1",     limit: 30
    t.string    "po_approval2",     limit: 30
    t.string    "po_approval3",     limit: 30
    t.string    "po_ordered_by",    limit: 4
    t.string    "po_status",        limit: 80
    t.date      "po_due_date"
    t.decimal   "po_terms1",                   precision: 9,  scale: 2
    t.decimal   "po_terms2",                   precision: 9,  scale: 0
    t.decimal   "po_terms3",                   precision: 9,  scale: 0
    t.date      "po_date"
    t.decimal   "po_pc",                       precision: 9,  scale: 0
    t.string    "po_to1",           limit: 10
    t.string    "po_to2",           limit: 10
    t.string    "po_to3",           limit: 10
    t.string    "po_to4",           limit: 10
    t.string    "po_to5",           limit: 10
    t.string    "po_vendor1",       limit: 40
    t.string    "po_vendor2",       limit: 40
    t.string    "po_vendor3",       limit: 40
    t.string    "po_vendor4",       limit: 40
    t.string    "po_vendor5",       limit: 40
    t.string    "po_field_label1",  limit: 20
    t.string    "po_field_label2",  limit: 20
    t.string    "po_field_label3",  limit: 20
    t.string    "po_field_label4",  limit: 20
    t.string    "po_field_label5",  limit: 20
    t.string    "po_field1",        limit: 30
    t.string    "po_field2",        limit: 30
    t.string    "po_field3",        limit: 30
    t.string    "po_field4",        limit: 30
    t.string    "po_field5",        limit: 30
    t.integer   "po_hold",          limit: 1
    t.integer   "po_approved",      limit: 1
    t.timestamp "po_approved_dat"
    t.string    "po_approved_by",   limit: 4
    t.string    "po_ap_alert",      limit: 40
    t.integer   "po_tax_exempt",    limit: 1
    t.integer   "po_period",        limit: 1
    t.decimal   "po_ar_billed",                precision: 15, scale: 2
    t.decimal   "po_to_be_billed",             precision: 15, scale: 2
    t.string    "po_ar_num",        limit: 10
    t.decimal   "po_lines",                    precision: 15, scale: 0
    t.text      "po_disclaimer"
    t.decimal   "po_closed",                   precision: 9,  scale: 0
    t.decimal   "po_form",                     precision: 9,  scale: 0
    t.string    "po_total_title",   limit: 20
    t.string    "po_mat_due_label", limit: 20
    t.string    "po_import_from",   limit: 15
    t.text      "po_traffic_instr"
    t.text      "po_rep_instr"
    t.string    "po_added_by",      limit: 3
    t.decimal   "po_rev",                      precision: 9,  scale: 0
    t.string    "po_field6",        limit: 15
    t.string    "po_field_label6",  limit: 20
    t.string    "po_rep_name",      limit: 40
    t.string    "po_rep_phone",     limit: 20
    t.string    "po_rep_fax",       limit: 20
    t.string    "po_campaign",      limit: 20
    t.string    "po_brand",         limit: 20
    t.integer   "po_blanket",       limit: 1
    t.string    "po_edited_by",     limit: 4
    t.timestamp "po_edited_when"
    t.timestamp "po_added_when"
    t.integer   "po_ownership",     limit: 1
    t.string    "po_pt_template",   limit: 20
  end

  add_index "purchase_order", ["po_approved"], name: "po_approved"
  add_index "purchase_order", ["po_client_num"], name: "po_client_num"
  add_index "purchase_order", ["po_closed"], name: "po_closed"
  add_index "purchase_order", ["po_date"], name: "po_date"
  add_index "purchase_order", ["po_due_date"], name: "po_due_date"
  add_index "purchase_order", ["po_field1"], name: "po_field1"
  add_index "purchase_order", ["po_job_num"], name: "po_job_num"
  add_index "purchase_order", ["po_num"], name: "po_num"
  add_index "purchase_order", ["po_period"], name: "po_period"
  add_index "purchase_order", ["po_task"], name: "po_task"
  add_index "purchase_order", ["po_type"], name: "po_type"
  add_index "purchase_order", ["po_vendor_num"], name: "po_vendor_num"

  create_table "rates", primary_key: "rate_seq", force: true do |t|
    t.string    "rate_staff",       limit: 10
    t.string    "rate_client_num",  limit: 10
    t.string    "rate_task",        limit: 4
    t.string    "rate_key",         limit: 24
    t.text      "rate_note"
    t.decimal   "special_rate",                precision: 15, scale: 2
    t.string    "rate_added_by",    limit: 4
    t.timestamp "rate_added_when"
    t.string    "rate_edited_by",   limit: 4
    t.timestamp "rate_edited_when"
  end

  add_index "rates", ["rate_key"], name: "rate_key"
  add_index "rates", ["rate_staff"], name: "rate_staff"

  create_table "recur_ap", primary_key: "rap_seq", force: true do |t|
    t.string    "rap_vendor",      limit: 10
    t.date      "rap_date"
    t.decimal   "rap_amt1",                   precision: 9,  scale: 2
    t.text      "rap_desc"
    t.decimal   "rap_cgl",                    precision: 15, scale: 2
    t.decimal   "rap_dgl1",                   precision: 15, scale: 2
    t.string    "rap_added_by",    limit: 3
    t.string    "rap_inv_num",     limit: 20
    t.integer   "rap_period",      limit: 1
    t.date      "rap_inv_date"
    t.decimal   "rap_dgl2",                   precision: 15, scale: 2
    t.decimal   "rap_dgl3",                   precision: 15, scale: 2
    t.decimal   "rap_dgl4",                   precision: 15, scale: 2
    t.decimal   "rap_dgl5",                   precision: 15, scale: 2
    t.decimal   "rap_dgl6",                   precision: 15, scale: 2
    t.decimal   "rap_amt2",                   precision: 9,  scale: 2
    t.decimal   "rap_amt3",                   precision: 9,  scale: 2
    t.decimal   "rap_amt4",                   precision: 9,  scale: 2
    t.decimal   "rap_amt5",                   precision: 9,  scale: 2
    t.decimal   "rap_amt6",                   precision: 9,  scale: 2
    t.timestamp "rap_added_when"
    t.string    "rap_edited_by",   limit: 4
    t.timestamp "rap_edited_when"
  end

  add_index "recur_ap", ["rap_date"], name: "rap_date"
  add_index "recur_ap", ["rap_vendor"], name: "rap_vendor"

  create_table "recur_ar", primary_key: "rar_seq", force: true do |t|
    t.string    "rar_client_num",  limit: 10
    t.date      "rar_date"
    t.decimal   "rar_amt1",                   precision: 9, scale: 2
    t.text      "rar_desc"
    t.decimal   "rar_dgl",                    precision: 9, scale: 2
    t.string    "rar_added_by",    limit: 4
    t.string    "rar_inv_num",     limit: 10
    t.integer   "rar_period",      limit: 1
    t.string    "rar_job_num",     limit: 10
    t.date      "rar_inv_date"
    t.string    "rar_ax_task1",    limit: 4
    t.string    "rar_ax_name1",    limit: 50
    t.decimal   "rar_ax_hours1",              precision: 9, scale: 2
    t.decimal   "rar_ax_amt1",                precision: 9, scale: 2
    t.string    "rar_ax_task2",    limit: 4
    t.string    "rar_ax_name2",    limit: 50
    t.decimal   "rar_ax_hours2",              precision: 9, scale: 2
    t.decimal   "rar_ax_amt2",                precision: 9, scale: 2
    t.string    "rar_ax_task3",    limit: 4
    t.string    "rar_ax_name3",    limit: 50
    t.decimal   "rar_ax_hours3",              precision: 9, scale: 2
    t.decimal   "rar_ax_amt3",                precision: 9, scale: 2
    t.string    "rar_ax_task4",    limit: 4
    t.string    "rar_ax_name4",    limit: 50
    t.decimal   "rar_ax_hours4",              precision: 9, scale: 2
    t.decimal   "rar_ax_amt4",                precision: 9, scale: 2
    t.string    "rar_ax_task5",    limit: 4
    t.string    "rar_ax_name5",    limit: 50
    t.decimal   "rar_ax_hours5",              precision: 9, scale: 2
    t.decimal   "rar_ax_amt5",                precision: 9, scale: 2
    t.string    "rar_ax_task6",    limit: 4
    t.string    "rar_ax_name6",    limit: 50
    t.decimal   "rar_ax_hours6",              precision: 9, scale: 2
    t.decimal   "rar_ax_amt6",                precision: 9, scale: 2
    t.decimal   "rar_ax_cgl1",                precision: 9, scale: 2
    t.decimal   "rar_ax_cgl2",                precision: 9, scale: 2
    t.decimal   "rar_ax_cgl3",                precision: 9, scale: 2
    t.decimal   "rar_ax_cgl4",                precision: 9, scale: 2
    t.decimal   "rar_ax_cgl5",                precision: 9, scale: 2
    t.decimal   "rar_ax_cgl6",                precision: 9, scale: 2
    t.integer   "rar_option1",     limit: 1
    t.integer   "rar_option2",     limit: 1
    t.integer   "rar_option3",     limit: 1
    t.timestamp "rar_added_when"
    t.string    "rar_edited_by",   limit: 4
    t.timestamp "rar_edited_when"
  end

  add_index "recur_ar", ["rar_client_num"], name: "rar_client_num"
  add_index "recur_ar", ["rar_date"], name: "rar_date"
  add_index "recur_ar", ["rar_job_num"], name: "rar_job_num"

  create_table "retainers", id: false, force: true do |t|
    t.string    "ret_client_num",  limit: 10
    t.decimal   "ret_amt1",                   precision: 15, scale: 2
    t.decimal   "ret_amt2",                   precision: 15, scale: 2
    t.decimal   "ret_amt3",                   precision: 15, scale: 2
    t.decimal   "ret_amt4",                   precision: 15, scale: 2
    t.decimal   "ret_amt5",                   precision: 15, scale: 2
    t.decimal   "ret_amt6",                   precision: 15, scale: 2
    t.decimal   "ret_amt7",                   precision: 15, scale: 2
    t.decimal   "ret_amt8",                   precision: 15, scale: 2
    t.decimal   "ret_amt9",                   precision: 15, scale: 2
    t.decimal   "ret_amt10",                  precision: 15, scale: 2
    t.decimal   "ret_amt11",                  precision: 15, scale: 2
    t.decimal   "ret_amt12",                  precision: 15, scale: 2
    t.string    "ret_1",           limit: 40
    t.string    "ret_2",           limit: 40
    t.string    "ret_3",           limit: 40
    t.string    "ret_4",           limit: 40
    t.string    "ret_5",           limit: 40
    t.string    "ret_6",           limit: 40
    t.string    "ret_7",           limit: 40
    t.string    "ret_8",           limit: 40
    t.string    "ret_9",           limit: 40
    t.string    "ret_10",          limit: 40
    t.string    "ret_11",          limit: 40
    t.string    "ret_12",          limit: 40
    t.integer   "ret_1_ok",        limit: 1
    t.integer   "ret_2_ok",        limit: 1
    t.integer   "ret_3_ok",        limit: 1
    t.integer   "ret_4_ok",        limit: 1
    t.integer   "ret_5_ok",        limit: 1
    t.integer   "ret_6_ok",        limit: 1
    t.integer   "ret_7_ok",        limit: 1
    t.integer   "ret_8_ok",        limit: 1
    t.integer   "ret_9_ok",        limit: 1
    t.integer   "ret_10_ok",       limit: 1
    t.integer   "ret_11_ok",       limit: 1
    t.integer   "ret_12_ok",       limit: 1
    t.date      "ret_date1"
    t.date      "ret_date2"
    t.date      "ret_date3"
    t.date      "ret_date4"
    t.date      "ret_date5"
    t.date      "ret_date6"
    t.date      "ret_date7"
    t.date      "ret_date8"
    t.date      "ret_date9"
    t.date      "ret_date10"
    t.date      "ret_date11"
    t.date      "ret_date12"
    t.string    "ret_ar_num1",     limit: 10
    t.string    "ret_ar_num2",     limit: 10
    t.string    "ret_ar_num3",     limit: 10
    t.string    "ret_ar_num4",     limit: 10
    t.string    "ret_ar_num5",     limit: 10
    t.string    "ret_ar_num6",     limit: 10
    t.string    "ret_ar_num7",     limit: 10
    t.string    "ret_ar_num8",     limit: 10
    t.string    "ret_ar_num9",     limit: 10
    t.string    "ret_ar_num10",    limit: 10
    t.string    "ret_ar_num11",    limit: 10
    t.string    "ret_ar_num12",    limit: 10
    t.string    "ret_added_by",    limit: 4
    t.timestamp "ret_added_when"
    t.string    "ret_edited_by",   limit: 4
    t.timestamp "ret_edited_when"
  end

  add_index "retainers", ["ret_client_num"], name: "ret_client_num"

  create_table "rfq_items", primary_key: "rfqx_seq", force: true do |t|
    t.integer "rfqx_line_number"
    t.string  "rfqx_num",         limit: 12
    t.string  "rfqx_vendor2",     limit: 10
    t.string  "rfqx_job_num",     limit: 15
    t.string  "rfqx_task",        limit: 4
    t.string  "rfqx_name",        limit: 200
    t.text    "rfqx_desc2"
    t.decimal "rfqx_qty",                     precision: 15, scale: 0
    t.decimal "rfqx_unit_cost",               precision: 15, scale: 4
    t.decimal "rfqx_cost",                    precision: 15, scale: 2
    t.decimal "rfqx_gross",                   precision: 15, scale: 2
    t.decimal "rfqx_markup",                  precision: 15, scale: 2
    t.string  "rfqx_po_num",      limit: 12
    t.integer "rfqx_taxable1",    limit: 1
    t.integer "rfqx_taxable2",    limit: 1
    t.integer "rfqx_include",     limit: 1
    t.string  "rfqx_type",        limit: 20
  end

  add_index "rfq_items", ["rfqx_num"], name: "rfqx_num"
  add_index "rfq_items", ["rfqx_vendor2"], name: "rfqx_vendor2"

  create_table "rfq_skus", primary_key: "rfqsku_seq", force: true do |t|
    t.decimal "rfqsku_part_num",              precision: 15, scale: 0
    t.string  "rfqsku_name",       limit: 40
    t.text    "rfqsku_desc"
    t.string  "rfqsku_type",       limit: 20
    t.decimal "rfqsku_markup",                precision: 15, scale: 2
    t.decimal "rfqsku_unit_cost",             precision: 15, scale: 4
    t.string  "rfqsku_vendor_num", limit: 10
    t.string  "rfqsku_task",       limit: 4
    t.string  "rfqsku_job_type",   limit: 15
  end

  add_index "rfq_skus", ["rfqsku_name"], name: "rfqsku_name"
  add_index "rfq_skus", ["rfqsku_part_num"], name: "rfqsku_part_num"

  create_table "rfq_vendors", primary_key: "rfqv_seq", force: true do |t|
    t.string  "rfqv_num",        limit: 12
    t.string  "rfqv_vendor_num", limit: 10
    t.string  "rfqv_contact",    limit: 50
    t.string  "rfqv_phone",      limit: 30
    t.string  "rfqv_fax",        limit: 30
    t.integer "rfqv_winner",     limit: 1
    t.string  "rfqv_vorg",       limit: 40
    t.string  "rfqv_type",       limit: 20
  end

  add_index "rfq_vendors", ["rfqv_num"], name: "rfqv_num"

  create_table "rfqs", primary_key: "rfq_seq", force: true do |t|
    t.string    "rfq_num",                limit: 12
    t.string    "rfq_job_num",            limit: 15
    t.string    "rfq_task",               limit: 4
    t.string    "rfq_vendor_num",         limit: 10
    t.timestamp "rfq_date"
    t.string    "rfq_prod_contact",       limit: 50
    t.string    "rfq_name",               limit: 200
    t.text      "rfq_desc"
    t.decimal   "rfq_qty",                            precision: 15, scale: 0
    t.string    "rfq_client_num",         limit: 10
    t.string    "rfq_client_contact",     limit: 100
    t.string    "rfq_client_addr1",       limit: 50
    t.string    "rfq_client_addr2",       limit: 50
    t.string    "rfq_client_addr3",       limit: 50
    t.string    "rfq_client_addr4",       limit: 50
    t.string    "rfq_client_addr5",       limit: 50
    t.string    "rfq_client_addr6",       limit: 50
    t.text      "rfq_prep"
    t.text      "rfq_kitting"
    t.text      "rfq_shipping"
    t.text      "rfq_client_notes"
    t.text      "rfq_terms"
    t.integer   "rfq_approved",           limit: 1
    t.integer   "rfq_client_ok",          limit: 1
    t.timestamp "rfq_client_ok_date"
    t.string    "rfq_client_ok_by",       limit: 10
    t.decimal   "rfq_total_cost",                     precision: 15, scale: 2
    t.decimal   "rfq_total_gross",                    precision: 15, scale: 2
    t.text      "rfq_special_instr"
    t.text      "rfq_del_instr"
    t.text      "rfq_auth"
    t.string    "rfq_status",             limit: 30
    t.string    "rfq_added_by",           limit: 4
    t.timestamp "rfq_quote_needed"
    t.timestamp "rfq_del_date"
    t.string    "rfq_prod_contact_email", limit: 40
    t.integer   "rfq_taxable1",           limit: 1
    t.integer   "rfq_taxable2",           limit: 1
    t.string    "rfq_prod_contact_ph",    limit: 40
  end

  add_index "rfqs", ["rfq_job_num"], name: "rfq_job_num"

  create_table "sales_actions", primary_key: "sact_seq", force: true do |t|
    t.integer   "sact_kind",        limit: 1
    t.date      "sact_date"
    t.time      "sact_time"
    t.integer   "sact_length",      limit: 1
    t.string    "sact_campaign",    limit: 20
    t.decimal   "sact_con_seq",                precision: 9, scale: 0
    t.integer   "sact_priority",    limit: 1
    t.decimal   "sact_sltr_seq",               precision: 9, scale: 0
    t.string    "sact_from_staff",  limit: 4
    t.timestamp "sact_printed"
    t.string    "sact_printed_by",  limit: 4
    t.string    "sact_client_num",  limit: 10
    t.string    "sact_added_by",    limit: 4
    t.text      "sact_subject"
    t.text      "sact_body"
    t.text      "sact_ps"
    t.timestamp "sact_added_when"
    t.string    "sact_edited_by",   limit: 4
    t.timestamp "sact_edited_when"
  end

  add_index "sales_actions", ["sact_client_num"], name: "sact_client_num"
  add_index "sales_actions", ["sact_date"], name: "sact_date"
  add_index "sales_actions", ["sact_from_staff"], name: "sact_from_staff"
  add_index "sales_actions", ["sact_kind"], name: "sact_kind"

  create_table "sales_campaigns", primary_key: "scam_seq", force: true do |t|
    t.string    "scam_id",           limit: 20
    t.text      "scam_desc"
    t.string    "scam_added_by",     limit: 4
    t.date      "scam_start"
    t.date      "scam_end"
    t.decimal   "scam_action",                  precision: 9, scale: 0
    t.decimal   "scam_action1",                 precision: 9, scale: 0
    t.integer   "scam_action1_days", limit: 1
    t.decimal   "scam_action2",                 precision: 9, scale: 0
    t.integer   "scam_action2_days", limit: 1
    t.decimal   "scam_action3",                 precision: 9, scale: 0
    t.integer   "scam_action3_days", limit: 1
    t.string    "scam_client_num",   limit: 10
    t.integer   "scam_ok",           limit: 1
    t.string    "scam_ok_by",        limit: 4
    t.timestamp "scam_added_when"
    t.string    "scam_edited_by",    limit: 4
    t.timestamp "scam_edited_when"
  end

  add_index "sales_campaigns", ["scam_client_num"], name: "scam_client_num"
  add_index "sales_campaigns", ["scam_id"], name: "scam_id"

  create_table "sales_letters", primary_key: "sltr_seq", force: true do |t|
    t.string    "sltr_id",          limit: 20
    t.integer   "sltr_kind",        limit: 1
    t.date      "sltr_start"
    t.date      "sltr_end"
    t.string    "sltr_client_num",  limit: 10
    t.text      "sltr_desc"
    t.string    "sltr_author",      limit: 4
    t.integer   "sltr_ok",          limit: 1
    t.string    "sltr_ok_by",       limit: 4
    t.text      "sltr_subject"
    t.text      "sltr_body"
    t.text      "sltr_ps"
    t.decimal   "sltr_count",                  precision: 9, scale: 0
    t.date      "sltr_last_use"
    t.integer   "sltr_one_time",    limit: 1
    t.string    "sltr_added_by",    limit: 4
    t.timestamp "sltr_added_when"
    t.string    "sltr_edited_by",   limit: 4
    t.timestamp "sltr_edited_when"
  end

  add_index "sales_letters", ["sltr_client_num"], name: "sltr_client_num"
  add_index "sales_letters", ["sltr_edited_when"], name: "sltr_edited_when"
  add_index "sales_letters", ["sltr_id"], name: "sltr_id"
  add_index "sales_letters", ["sltr_kind"], name: "sltr_kind"

  create_table "sched_revs", primary_key: "scv_seq", force: true do |t|
    t.string    "scv_job_num",        limit: 10
    t.string    "scv_task",           limit: 4
    t.decimal   "scv_sort",                       precision: 9, scale: 0
    t.string    "scv_task_name",      limit: 100
    t.text      "scv_task_specs"
    t.date      "scv_due_date"
    t.time      "scv_due_when"
    t.string    "scv_resource",       limit: 10
    t.decimal   "scv_lead_time",                  precision: 9, scale: 0
    t.date      "scv_start_date"
    t.date      "scv_date_finished"
    t.integer   "scv_finished",       limit: 1
    t.integer   "scv_final",          limit: 1
    t.integer   "scv_revision",       limit: 1
    t.date      "scv_j_due_date"
    t.date      "scv_j_start_date"
    t.string    "scv_revised_by",     limit: 4
    t.timestamp "scv_revision_date"
    t.text      "scv_revision_notes"
    t.integer   "scv_reason",         limit: 1
    t.string    "scv_rev_okd_by",     limit: 4
    t.timestamp "scv_rev_okd_date"
    t.integer   "scv_kind",           limit: 1
    t.string    "scv_added_by",       limit: 4
    t.timestamp "scv_added_when"
    t.string    "scv_edited_by",      limit: 4
    t.timestamp "scv_edited_when"
  end

  create_table "schedule_chart", primary_key: "sc_seq", force: true do |t|
    t.string "sc_j_num",      limit: 10
    t.string "sc_1",          limit: 10
    t.string "sc_2",          limit: 10
    t.string "sc_3",          limit: 10
    t.string "sc_4",          limit: 10
    t.string "sc_5",          limit: 10
    t.string "sc_6",          limit: 10
    t.string "sc_7",          limit: 10
    t.string "sc_8",          limit: 10
    t.string "sc_9",          limit: 10
    t.string "sc_10",         limit: 10
    t.string "sc_11",         limit: 10
    t.string "sc_12",         limit: 10
    t.string "sc_client_num", limit: 10
  end

  add_index "schedule_chart", ["sc_j_num"], name: "sc_j_num"

  create_table "schedule_header", primary_key: "sh_seq", force: true do |t|
    t.date   "sh_date1"
    t.date   "sh_date2"
    t.string "sh_client_num", limit: 10
    t.string "sh_job_num",    limit: 10
    t.string "sh_1",          limit: 10
    t.string "sh_2",          limit: 10
    t.string "sh_3",          limit: 10
    t.string "sh_4",          limit: 10
    t.string "sh_5",          limit: 10
    t.string "sh_6",          limit: 10
    t.string "sh_7",          limit: 10
    t.string "sh_8",          limit: 10
    t.string "sh_9",          limit: 10
    t.string "sh_10",         limit: 10
    t.string "sh_11",         limit: 10
    t.string "sh_12",         limit: 10
  end

  add_index "schedule_header", ["sh_job_num"], name: "sh_job_num"

  create_table "staff", primary_key: "s_seq", force: true do |t|
    t.string    "s_initials",             limit: 10
    t.string    "s_name",                 limit: 40
    t.string    "s_address1",             limit: 50
    t.string    "s_address2",             limit: 50
    t.string    "s_address3",             limit: 50
    t.string    "s_task",                 limit: 4
    t.decimal   "s_bill_rate",                        precision: 9,  scale: 2
    t.decimal   "s_cost_rate",                        precision: 9,  scale: 2
    t.string    "s_ssn",                  limit: 20
    t.string    "s_pc_num",               limit: 10
    t.decimal   "s_mtd",                              precision: 9,  scale: 2
    t.decimal   "s_ytd",                              precision: 9,  scale: 2
    t.decimal   "s_hours",                            precision: 9,  scale: 2
    t.decimal   "s_1",                                precision: 9,  scale: 2
    t.decimal   "s_2",                                precision: 9,  scale: 2
    t.decimal   "s_3",                                precision: 9,  scale: 2
    t.decimal   "s_4",                                precision: 9,  scale: 2
    t.decimal   "s_5",                                precision: 9,  scale: 2
    t.decimal   "s_6",                                precision: 9,  scale: 2
    t.decimal   "s_7",                                precision: 9,  scale: 2
    t.decimal   "s_8",                                precision: 9,  scale: 2
    t.decimal   "s_9",                                precision: 9,  scale: 2
    t.decimal   "s_10",                               precision: 9,  scale: 2
    t.decimal   "s_11",                               precision: 9,  scale: 2
    t.decimal   "s_12",                               precision: 9,  scale: 2
    t.decimal   "s_b1",                               precision: 9,  scale: 2
    t.decimal   "s_b2",                               precision: 9,  scale: 2
    t.decimal   "s_b3",                               precision: 9,  scale: 2
    t.decimal   "s_b4",                               precision: 9,  scale: 2
    t.decimal   "s_b5",                               precision: 9,  scale: 2
    t.decimal   "s_b6",                               precision: 9,  scale: 2
    t.decimal   "s_b7",                               precision: 9,  scale: 2
    t.decimal   "s_b8",                               precision: 9,  scale: 2
    t.decimal   "s_b9",                               precision: 9,  scale: 2
    t.decimal   "s_b10",                              precision: 9,  scale: 2
    t.decimal   "s_b11",                              precision: 9,  scale: 2
    t.decimal   "s_b12",                              precision: 9,  scale: 2
    t.decimal   "s_lstyr_1",                          precision: 9,  scale: 2
    t.decimal   "s_lstyr_2",                          precision: 9,  scale: 2
    t.decimal   "s_lstyr_3",                          precision: 9,  scale: 2
    t.decimal   "s_lstyr_4",                          precision: 9,  scale: 2
    t.decimal   "s_lstyr_5",                          precision: 9,  scale: 2
    t.decimal   "s_lstyr_6",                          precision: 9,  scale: 2
    t.decimal   "s_lstyr_7",                          precision: 9,  scale: 2
    t.decimal   "s_lstyr_8",                          precision: 9,  scale: 2
    t.decimal   "s_lstyr_9",                          precision: 9,  scale: 2
    t.decimal   "s_lstyr_10",                         precision: 9,  scale: 2
    t.decimal   "s_lstyr_11",                         precision: 9,  scale: 2
    t.decimal   "s_lstyr_12",                         precision: 9,  scale: 2
    t.string    "s_office_phone",         limit: 20
    t.decimal   "s_hours_week",                       precision: 15, scale: 2
    t.integer   "s_face",                 limit: 1
    t.integer   "s_type",                 limit: 1
    t.text      "s_notes"
    t.string    "s_dept",                 limit: 15
    t.decimal   "s_hours_act",                        precision: 15, scale: 2
    t.string    "s_team",                 limit: 10
    t.decimal   "s_plan_week",                        precision: 15, scale: 2
    t.decimal   "s_plan_monday",                      precision: 15, scale: 2
    t.decimal   "s_plan_tuesday",                     precision: 15, scale: 2
    t.decimal   "s_plan_wednesday",                   precision: 15, scale: 2
    t.decimal   "s_plan_thursday",                    precision: 15, scale: 2
    t.decimal   "s_plan_friday",                      precision: 15, scale: 2
    t.integer   "s_req_time",             limit: 1
    t.decimal   "s_act_monday",                       precision: 9,  scale: 2
    t.decimal   "s_act_tuesday",                      precision: 9,  scale: 2
    t.decimal   "s_act_wednesday",                    precision: 9,  scale: 2
    t.decimal   "s_act_thursday",                     precision: 9,  scale: 2
    t.decimal   "s_act_friday",                       precision: 9,  scale: 2
    t.decimal   "s_act_saturday",                     precision: 9,  scale: 2
    t.decimal   "s_act_sunday",                       precision: 9,  scale: 2
    t.decimal   "s_plan_saturday",                    precision: 9,  scale: 2
    t.decimal   "s_plan_sunday",                      precision: 9,  scale: 2
    t.integer   "s_req_plan",             limit: 1
    t.string    "s_home_phone",           limit: 12
    t.decimal   "s_ot_cost_rate",                     precision: 9,  scale: 2
    t.decimal   "s_ot_bill_rate",                     precision: 9,  scale: 2
    t.string    "s_title",                limit: 40
    t.integer   "s_active",               limit: 1
    t.string    "s_email",                limit: 100
    t.string    "s_backup_person",        limit: 4
    t.integer   "s_freelance",            limit: 1
    t.integer   "s_period",               limit: 1
    t.integer   "s_time_cop",             limit: 1
    t.text      "s_email_sig"
    t.integer   "s_supervisor",           limit: 1
    t.string    "s_fax",                  limit: 20
    t.string    "s_web_access",           limit: 100
    t.text      "s_smtp_auth_id"
    t.text      "s_smtp_auth_pw"
    t.string    "s_vendor",               limit: 10
    t.string    "s_added_by",             limit: 4
    t.timestamp "s_added_when"
    t.string    "s_edited_by",            limit: 4
    t.timestamp "s_edited_when"
    t.date      "s_date_hired"
    t.date      "s_date_term"
    t.binary    "s_oa"
    t.string    "s_app_version",          limit: 15
    t.integer   "s_appr_exempt",          limit: 1
    t.integer   "s_sw_update_now",        limit: 1
    t.integer   "s_homebase_email",       limit: 1
    t.integer   "s_jobr",                 limit: 1
    t.integer   "s_web_access1",          limit: 1
    t.integer   "s_web_access2",          limit: 1
    t.integer   "s_web_access3",          limit: 1
    t.integer   "s_web_access4",          limit: 1
    t.integer   "s_web_access5",          limit: 1
    t.integer   "s_web_access6",          limit: 1
    t.integer   "s_web_access7",          limit: 1
    t.integer   "s_web_access8",          limit: 1
    t.integer   "s_web_access9",          limit: 1
    t.integer   "s_web_access10",         limit: 1
    t.integer   "s_web_access11",         limit: 1
    t.integer   "s_web_access12",         limit: 1
    t.integer   "s_schedulable",          limit: 1
    t.integer   "s_winners_opt_in",       limit: 1
    t.integer   "s_time_point_opt_in",    limit: 1
    t.integer   "s_send_chirps",          limit: 1
    t.string    "s_send_chirps_to",       limit: 100
    t.integer   "s_cside_status_report",  limit: 1
    t.integer   "s_cside_traffic_report", limit: 1
    t.integer   "s_cside_jobs",           limit: 1
    t.integer   "s_cside_job_requests",   limit: 1
    t.integer   "s_cside_appr_ests",      limit: 1
    t.integer   "s_cside_appr_scheds",    limit: 1
    t.integer   "s_cside_appr_changes",   limit: 1
    t.integer   "s_cside_appr_art",       limit: 1
    t.integer   "s_cside_proposals",      limit: 1
    t.integer   "s_gets_homebase_emails", limit: 1
    t.integer   "s_cside_rate_jobs",      limit: 1
    t.string    "s_client_num",           limit: 10
    t.integer   "s_cside_appr_crebrief",  limit: 1
    t.integer   "s_web_access_suspended", limit: 1
    t.text      "s_cside_clients"
    t.date      "s_web_access_expires"
    t.integer   "s_email_overdues",       limit: 1
    t.string    "s_cal1_key",             limit: 10
    t.string    "s_cal2_key",             limit: 10
    t.string    "s_cal3_key",             limit: 10
    t.string    "s_cal4_key",             limit: 10
    t.string    "s_cal5_key",             limit: 10
    t.text      "s_cside_type_cat"
  end

  add_index "staff", ["s_dept"], name: "s_dept"
  add_index "staff", ["s_initials"], name: "s_initials"
  add_index "staff", ["s_name"], name: "s_name"
  add_index "staff", ["s_task"], name: "s_task"
  add_index "staff", ["s_team"], name: "s_team"

  create_table "statements", primary_key: "st_seq", force: true do |t|
    t.date    "st_date"
    t.string  "st_ar_num",     limit: 10
    t.string  "st_ck_num",     limit: 10
    t.string  "st_client_num", limit: 10
    t.string  "st_type",       limit: 10
    t.string  "st_job_num",    limit: 10
    t.decimal "st_charge_amt",            precision: 9, scale: 2
    t.decimal "st_pmt_amt",               precision: 9, scale: 2
    t.string  "st_po_num",     limit: 10
    t.string  "st_division",   limit: 10
  end

  create_table "stations", primary_key: "pub_seq", force: true do |t|
    t.string    "pub_code",         limit: 20
    t.string    "pub_name",         limit: 40
    t.string    "pub_rep",          limit: 40
    t.string    "pub_phone",        limit: 20
    t.string    "pub_address1",     limit: 40
    t.string    "pub_address2",     limit: 40
    t.string    "pub_address3",     limit: 40
    t.string    "pub_address4",     limit: 40
    t.text      "pub_note"
    t.string    "pub_fax",          limit: 15
    t.string    "pub_vendor_num",   limit: 10
    t.decimal   "pub_comm_pc",                 precision: 9, scale: 2
    t.string    "pub_type",         limit: 2
    t.string    "pub_rep_address1", limit: 40
    t.string    "pub_rep_address2", limit: 40
    t.string    "pub_rep_address3", limit: 40
    t.string    "pub_rep_address4", limit: 40
    t.string    "pub_rep_address5", limit: 40
    t.string    "pub_issue_date",   limit: 30
    t.string    "pub_close_date",   limit: 30
    t.string    "pub_circ",         limit: 20
    t.string    "pub_market",       limit: 40
    t.string    "pub_added_by",     limit: 4
    t.timestamp "pub_added_when"
    t.string    "pub_edited_by",    limit: 4
    t.timestamp "pub_edited_when"
  end

  add_index "stations", ["pub_code"], name: "pub_code"
  add_index "stations", ["pub_name"], name: "pub_name"
  add_index "stations", ["pub_type"], name: "pub_type"
  add_index "stations", ["pub_vendor_num"], name: "pub_vendor_num"

  create_table "status_codes", primary_key: "status_seq", force: true do |t|
    t.decimal   "status_num",                      precision: 9,  scale: 0
    t.string    "status_desc",         limit: 40
    t.string    "status_alert",        limit: 240
    t.integer   "status_stop",         limit: 1
    t.integer   "status_prod_alert",   limit: 1
    t.integer   "status_bill_alert",   limit: 1
    t.string    "status_alert_button", limit: 20
    t.string    "status_cat",          limit: 20
    t.text      "status_mail_to"
    t.text      "status_mail_msg"
    t.string    "status_mail_cc",      limit: 40
    t.string    "status_mail_bcc",     limit: 40
    t.string    "status_added_by",     limit: 4
    t.timestamp "status_added_when"
    t.string    "status_edited_by",    limit: 4
    t.timestamp "status_edited_when"
    t.decimal   "status_color",                    precision: 15, scale: 0
    t.integer   "status_prod",         limit: 1
    t.integer   "status_acct",         limit: 1
    t.integer   "status_active",       limit: 1
  end

  add_index "status_codes", ["status_num"], name: "status_num"

  create_table "sub_classes", primary_key: "sub_seq", force: true do |t|
    t.decimal   "sub_num",                    precision: 15, scale: 0
    t.string    "sub_desc",        limit: 30
    t.string    "sub_added_by",    limit: 4
    t.timestamp "sub_added_when"
    t.string    "sub_edited_by",   limit: 4
    t.timestamp "sub_edited_when"
  end

  add_index "sub_classes", ["sub_num"], name: "sub_num"

  create_table "task_table", primary_key: "t_seq", force: true do |t|
    t.string    "t_task",            limit: 4
    t.string    "t_name",            limit: 50
    t.integer   "t_tax1",            limit: 1
    t.integer   "t_tax2",            limit: 1
    t.decimal   "t_markup",                     precision: 9,  scale: 2
    t.decimal   "t_bill_rate",                  precision: 9,  scale: 2
    t.decimal   "t_dgl",                        precision: 15, scale: 2
    t.decimal   "t_cgl",                        precision: 15, scale: 2
    t.decimal   "t_group",                      precision: 9,  scale: 0
    t.decimal   "t_sort",                       precision: 9,  scale: 0
    t.decimal   "t_lead_time",                  precision: 9,  scale: 0
    t.integer   "t_kind",            limit: 1
    t.decimal   "t_hours",                      precision: 9,  scale: 2
    t.decimal   "t_cost",                       precision: 9,  scale: 2
    t.string    "t_pc",              limit: 10
    t.text      "t_desc"
    t.string    "t_char2",           limit: 20
    t.string    "t_char3",           limit: 1
    t.string    "t_char4",           limit: 1
    t.string    "t_char5",           limit: 1
    t.string    "t_char6",           limit: 1
    t.string    "t_char7",           limit: 1
    t.decimal   "t_unbillable",                 precision: 9,  scale: 0
    t.decimal   "t_sort_prod",                  precision: 9,  scale: 0
    t.decimal   "t_pref3",                      precision: 9,  scale: 0
    t.decimal   "t_pref4",                      precision: 9,  scale: 0
    t.decimal   "t_amt1",                       precision: 9,  scale: 0
    t.decimal   "t_amt2",                       precision: 9,  scale: 0
    t.binary    "t_icon"
    t.string    "t_roll_up",         limit: 4
    t.integer   "t_active",          limit: 1
    t.integer   "t_commissionable",  limit: 1
    t.decimal   "t_comm_rate_ae",               precision: 9,  scale: 2
    t.decimal   "t_comm_rate_biz",              precision: 9,  scale: 2
    t.integer   "t_req_approval",    limit: 1
    t.string    "t_req_approval_by", limit: 10
    t.string    "t_added_by",        limit: 4
    t.timestamp "t_added_when"
    t.string    "t_edited_by",       limit: 4
    t.timestamp "t_edited_when"
    t.integer   "t_payroll",         limit: 1
    t.integer   "t_util_cat",        limit: 1
    t.text      "t_tags"
    t.integer   "t_client_sched",    limit: 1
    t.integer   "t_milestone",       limit: 1
    t.integer   "t_tax3",            limit: 1
    t.binary    "t_small_icon"
    t.integer   "t_always_discuss",  limit: 1
    t.integer   "t_no_time",         limit: 1
    t.decimal   "t_status_finished",            precision: 9,  scale: 0
  end

  add_index "task_table", ["t_task"], name: "t_task"

  create_table "temp_tasks", primary_key: "tt_seq", force: true do |t|
    t.string    "tt_type",        limit: 15
    t.string    "tt_task",        limit: 4
    t.decimal   "tt_est1",                   precision: 15, scale: 2
    t.decimal   "tt_lead1",                  precision: 9,  scale: 0
    t.string    "tt_name",        limit: 40
    t.decimal   "tt_est2",                   precision: 15, scale: 2
    t.decimal   "tt_lead2",                  precision: 9,  scale: 0
    t.decimal   "tt_est3",                   precision: 15, scale: 2
    t.decimal   "tt_lead3",                  precision: 9,  scale: 0
    t.decimal   "tt_est_hours",              precision: 9,  scale: 2
    t.text      "tt_task_desc"
    t.string    "tt_added_by",    limit: 4
    t.timestamp "tt_added_when"
    t.string    "tt_edited_by",   limit: 4
    t.timestamp "tt_edited_when"
  end

  add_index "temp_tasks", ["tt_task"], name: "tt_task"
  add_index "temp_tasks", ["tt_type"], name: "tt_type"

  create_table "thoughts", primary_key: "msg_seq", force: true do |t|
    t.date   "msg_date"
    t.string "msg_text",           limit: 100
    t.string "msg_1",              limit: 100
    t.string "msg_daily_info_ctr", limit: 80
  end

  add_index "thoughts", ["msg_date"], name: "msg_date"

  create_table "time_card", primary_key: "time_seq", force: true do |t|
    t.time    "time_start1"
    t.time    "time_start2"
    t.time    "time_start3"
    t.time    "time_start4"
    t.time    "time_start5"
    t.time    "time_start6"
    t.time    "time_start7"
    t.time    "time_start8"
    t.time    "time_start9"
    t.time    "time_start10"
    t.time    "time_start11"
    t.time    "time_start12"
    t.time    "time_start13"
    t.time    "time_start14"
    t.time    "time_start15"
    t.time    "time_start16"
    t.time    "time_start17"
    t.time    "time_start18"
    t.time    "time_start19"
    t.time    "time_start20"
    t.time    "time_end1"
    t.time    "time_end2"
    t.time    "time_end3"
    t.time    "time_end4"
    t.time    "time_end5"
    t.time    "time_end6"
    t.time    "time_end7"
    t.time    "time_end8"
    t.time    "time_end9"
    t.time    "time_end10"
    t.time    "time_end11"
    t.time    "time_end12"
    t.time    "time_end13"
    t.time    "time_end14"
    t.time    "time_end15"
    t.time    "time_end16"
    t.time    "time_end17"
    t.time    "time_end18"
    t.time    "time_end19"
    t.time    "time_end20"
    t.string  "time_job1",       limit: 10
    t.string  "time_job2",       limit: 10
    t.string  "time_job3",       limit: 10
    t.string  "time_job4",       limit: 10
    t.string  "time_job5",       limit: 10
    t.string  "time_job6",       limit: 10
    t.string  "time_job7",       limit: 10
    t.string  "time_job8",       limit: 10
    t.string  "time_job9",       limit: 10
    t.string  "time_job10",      limit: 10
    t.string  "time_job11",      limit: 10
    t.string  "time_job12",      limit: 10
    t.string  "time_job13",      limit: 10
    t.string  "time_job14",      limit: 10
    t.string  "time_job15",      limit: 10
    t.string  "time_job16",      limit: 10
    t.string  "time_job17",      limit: 10
    t.string  "time_job18",      limit: 10
    t.string  "time_job19",      limit: 10
    t.string  "time_job20",      limit: 10
    t.string  "time_task1",      limit: 4
    t.string  "time_task2",      limit: 4
    t.string  "time_task3",      limit: 4
    t.string  "time_task4",      limit: 4
    t.string  "time_task5",      limit: 4
    t.string  "time_task6",      limit: 4
    t.string  "time_task7",      limit: 4
    t.string  "time_task8",      limit: 4
    t.string  "time_task9",      limit: 4
    t.string  "time_task10",     limit: 4
    t.string  "time_task11",     limit: 4
    t.string  "time_task12",     limit: 4
    t.string  "time_task13",     limit: 4
    t.string  "time_task14",     limit: 4
    t.string  "time_task15",     limit: 4
    t.string  "time_task16",     limit: 4
    t.string  "time_task17",     limit: 4
    t.string  "time_task18",     limit: 4
    t.string  "time_task19",     limit: 4
    t.string  "time_task20",     limit: 4
    t.decimal "time_hours1",                precision: 9, scale: 2
    t.decimal "time_hours2",                precision: 9, scale: 2
    t.decimal "time_hours3",                precision: 9, scale: 2
    t.decimal "time_hours4",                precision: 9, scale: 2
    t.decimal "time_hours5",                precision: 9, scale: 2
    t.decimal "time_hours6",                precision: 9, scale: 2
    t.decimal "time_hours7",                precision: 9, scale: 2
    t.decimal "time_hours8",                precision: 9, scale: 2
    t.decimal "time_hours9",                precision: 9, scale: 2
    t.decimal "time_hours10",               precision: 9, scale: 2
    t.decimal "time_hours11",               precision: 9, scale: 2
    t.decimal "time_hours12",               precision: 9, scale: 2
    t.decimal "time_hours13",               precision: 9, scale: 2
    t.decimal "time_hours14",               precision: 9, scale: 2
    t.decimal "time_hours15",               precision: 9, scale: 2
    t.decimal "time_hours16",               precision: 9, scale: 2
    t.decimal "time_hours17",               precision: 9, scale: 2
    t.decimal "time_hours18",               precision: 9, scale: 2
    t.decimal "time_hours19",               precision: 9, scale: 2
    t.decimal "time_hours20",               precision: 9, scale: 2
    t.string  "time_desc1",      limit: 40
    t.string  "time_desc2",      limit: 40
    t.string  "time_desc3",      limit: 40
    t.string  "time_desc4",      limit: 40
    t.string  "time_desc5",      limit: 40
    t.string  "time_desc6",      limit: 40
    t.string  "time_desc7",      limit: 40
    t.string  "time_desc8",      limit: 40
    t.string  "time_desc9",      limit: 40
    t.string  "time_desc10",     limit: 40
    t.string  "time_desc11",     limit: 40
    t.string  "time_desc12",     limit: 40
    t.string  "time_desc13",     limit: 40
    t.string  "time_desc14",     limit: 40
    t.string  "time_desc15",     limit: 40
    t.string  "time_desc16",     limit: 40
    t.string  "time_desc17",     limit: 40
    t.string  "time_desc18",     limit: 40
    t.string  "time_desc19",     limit: 40
    t.string  "time_desc20",     limit: 40
    t.boolean "time_billable1"
    t.boolean "time_billable2"
    t.boolean "time_billable3"
    t.boolean "time_billable4"
    t.boolean "time_billable5"
    t.boolean "time_billable6"
    t.boolean "time_billable7"
    t.boolean "time_billable8"
    t.boolean "time_billable9"
    t.boolean "time_billable10"
    t.boolean "time_billable11"
    t.boolean "time_billable12"
    t.boolean "time_billable13"
    t.boolean "time_billable14"
    t.boolean "time_billable15"
    t.boolean "time_billable16"
    t.boolean "time_billable17"
    t.boolean "time_billable18"
    t.boolean "time_billable19"
    t.boolean "time_billable20"
    t.string  "time_staff",      limit: 10
    t.date    "time_date"
    t.string  "time_key",        limit: 20
    t.boolean "time_posted"
    t.decimal "time_ot1",                   precision: 9, scale: 0
    t.decimal "time_ot2",                   precision: 9, scale: 0
    t.decimal "time_ot3",                   precision: 9, scale: 0
    t.decimal "time_ot4",                   precision: 9, scale: 0
    t.decimal "time_ot5",                   precision: 9, scale: 0
    t.decimal "time_ot6",                   precision: 9, scale: 0
    t.decimal "time_ot7",                   precision: 9, scale: 0
    t.decimal "time_ot8",                   precision: 9, scale: 0
    t.decimal "time_ot9",                   precision: 9, scale: 0
    t.decimal "time_ot10",                  precision: 9, scale: 0
    t.decimal "time_ot11",                  precision: 9, scale: 0
    t.decimal "time_ot12",                  precision: 9, scale: 0
    t.decimal "time_ot13",                  precision: 9, scale: 0
    t.decimal "time_ot14",                  precision: 9, scale: 0
    t.decimal "time_ot15",                  precision: 9, scale: 0
    t.decimal "time_ot16",                  precision: 9, scale: 0
    t.decimal "time_ot17",                  precision: 9, scale: 0
    t.decimal "time_ot18",                  precision: 9, scale: 0
    t.decimal "time_ot19",                  precision: 9, scale: 0
    t.decimal "time_ot20",                  precision: 9, scale: 0
    t.binary  "time_card_list"
    t.string  "time_new",        limit: 50
  end

  add_index "time_card", ["time_date"], name: "time_date"
  add_index "time_card", ["time_key"], name: "time_key"
  add_index "time_card", ["time_staff"], name: "time_staff"

  create_table "time_import", primary_key: "tm_seq", force: true do |t|
    t.date    "tm_date"
    t.string  "tm_job_num",       limit: 10
    t.string  "tm_task",          limit: 4
    t.decimal "tm_hours",                    precision: 15, scale: 2
    t.string  "tm_staff",         limit: 10
    t.text    "tm_desc"
    t.decimal "tm_bad",                      precision: 15, scale: 2
    t.decimal "tm_cost_rate",                precision: 15, scale: 2
    t.decimal "tm_bill_rate",                precision: 15, scale: 2
    t.string  "tm_client_num",    limit: 10
    t.integer "tm_billable",      limit: 1
    t.integer "tm_period",        limit: 1
    t.integer "tm_palm_id"
    t.integer "tm_palm_category", limit: 1
    t.string  "tm_palm_attribs",  limit: 4
    t.integer "tm_ot",            limit: 1
  end

  add_index "time_import", ["tm_date"], name: "tm_date"
  add_index "time_import", ["tm_job_num"], name: "tm_job_num"
  add_index "time_import", ["tm_palm_id"], name: "tm_palm_id"
  add_index "time_import", ["tm_staff"], name: "tm_staff"
  add_index "time_import", ["tm_task"], name: "tm_task"

  create_table "timers", primary_key: "timer_seq", force: true do |t|
    t.string    "timer_initials",     limit: 4
    t.timestamp "timer_start"
    t.timestamp "timer_paused"
    t.timestamp "timer_resumed"
    t.decimal   "timer_elapsed_secs",            precision: 15, scale: 0
    t.string    "timer_job_num",      limit: 15
    t.string    "timer_task",         limit: 4
    t.text      "timer_note"
  end

  add_index "timers", ["timer_initials"], name: "timer_initials"

  create_table "un_checks", primary_key: "uncks_seq", force: true do |t|
    t.decimal "uncks_debit",                precision: 9, scale: 2
    t.decimal "uncks_credit",               precision: 9, scale: 2
    t.text    "uncks_desc"
    t.string  "uncks_ref",       limit: 15
    t.integer "uncks_temp_rec",  limit: 1
    t.string  "uncks_pay_batch", limit: 10
    t.integer "uncks_source",    limit: 1
    t.decimal "uncks_reconcile",            precision: 9, scale: 2
    t.date    "uncks_date"
    t.decimal "uncks_ac_num",               precision: 9, scale: 2
  end

  create_table "user_info_ctr", primary_key: "ui_seq", force: true do |t|
    t.string "ui_work",   limit: 4
    t.string "ui_proc1",  limit: 100
    t.string "ui_proc2",  limit: 100
    t.string "ui_proc3",  limit: 100
    t.string "ui_proc4",  limit: 100
    t.string "ui_proc5",  limit: 100
    t.string "ui_proc6",  limit: 100
    t.string "ui_label1", limit: 25
    t.string "ui_label2", limit: 25
    t.string "ui_label3", limit: 25
    t.string "ui_label4", limit: 25
    t.string "ui_label5", limit: 25
    t.string "ui_label6", limit: 25
  end

  add_index "user_info_ctr", ["ui_work"], name: "ui_work"

  create_table "user_windows", primary_key: "uw_seq", force: true do |t|
    t.string "uw_work",                     limit: 4
    t.string "uw_wpopar",                   limit: 100
    t.string "uw_wpopcalendar",             limit: 100
    t.string "uw_wpopcampaigns",            limit: 100
    t.string "uw_wpopchargeitems",          limit: 100
    t.string "uw_wpopclients",              limit: 100
    t.string "uw_wpopcoa",                  limit: 100
    t.string "uw_wpopcontacts",             limit: 100
    t.string "uw_wpopdept",                 limit: 100
    t.string "uw_wpopgroups",               limit: 100
    t.string "uw_wpopjobs",                 limit: 100
    t.string "uw_wpopjobtasks",             limit: 100
    t.string "uw_wpoppc",                   limit: 100
    t.string "uw_wpoppos",                  limit: 100
    t.string "uw_wpopprojects",             limit: 100
    t.string "uw_wpopstaff",                limit: 100
    t.string "uw_wpopstatus",               limit: 100
    t.string "uw_wpoptasktable",            limit: 100
    t.string "uw_wpoptraffic",              limit: 100
    t.string "uw_wpopvendors",              limit: 100
    t.string "uw_wpopspecsheets",           limit: 100
    t.string "uw_winoutboard",              limit: 100
    t.string "uw_wsmarttimer",              limit: 20
    t.string "uw_wtimecard",                limit: 100
    t.string "uw_wtimecardweek",            limit: 100
    t.string "uw_wupdatetraffic",           limit: 100
    t.string "uw_wworktodo",                limit: 100
    t.string "uw_wdailyjobstatus",          limit: 100
    t.string "uw_wprodplanner",             limit: 100
    t.string "uw_wweeklytraffic",           limit: 100
    t.string "uw_wtaskmaster",              limit: 100
    t.string "uw_wjobs",                    limit: 100
    t.string "uw_wjobschedule",             limit: 100
    t.string "uw_shortcut1",                limit: 100
    t.string "uw_shortcut2",                limit: 100
    t.string "uw_shortcut3",                limit: 100
    t.string "uw_shortcut4",                limit: 100
    t.string "uw_shortcut5",                limit: 100
    t.string "uw_shortcut6",                limit: 100
    t.string "uw_shortcut7",                limit: 100
    t.string "uw_shortcut8",                limit: 100
    t.string "uw_shortcut9",                limit: 100
    t.string "uw_shortcut10",               limit: 100
    t.string "uw_shortcut11",               limit: 100
    t.string "uw_shortcut12",               limit: 100
    t.string "uw_wclienttrafficcontroller", limit: 100
    t.string "uw_wjobdiary",                limit: 100
    t.string "uw_war",                      limit: 100
    t.string "uw_wcheckbook",               limit: 100
    t.string "uw_wgl",                      limit: 100
    t.string "uw_wpo",                      limit: 100
    t.string "uw_wmo",                      limit: 100
    t.string "uw_wtimesheets",              limit: 100
    t.string "uw_wpayments",                limit: 100
    t.string "uw_wcalendar",                limit: 100
    t.string "uw_wcollectionmgr",           limit: 100
    t.string "uw_wprojectmanager",          limit: 100
    t.string "uw_wtimecardclick",           limit: 100
    t.string "uw_wcreativedashboard",       limit: 100
    t.string "uw_waedashboard",             limit: 100
    t.string "uw_wacctdashboard",           limit: 100
    t.string "uw_wexecdashboard",           limit: 100
    t.string "uw_wbillinghotsheet",         limit: 100
    t.string "uw_wtimecardglance",          limit: 100
    t.string "uw_wproductioncalendar",      limit: 100
    t.string "uw_wprodcalendar",            limit: 100
    t.string "uw_wmediacalendar",           limit: 100
    t.string "uw_wexpensereport",           limit: 100
    t.string "uw_wjobestimate",             limit: 100
    t.string "uw_wtimecardhourly",          limit: 100
    t.string "uw_wjobcreativebrief",        limit: 100
  end

  add_index "user_windows", ["uw_work"], name: "uw_work"

  create_table "vendors", primary_key: "v_seq", force: true do |t|
    t.string    "v_num",          limit: 10
    t.string    "v_org",          limit: 50
    t.string    "v_note1",        limit: 50
    t.string    "v_street",       limit: 50
    t.string    "v_city",         limit: 50
    t.string    "v_note2",        limit: 50
    t.string    "v_zip",          limit: 50
    t.string    "v_contact",      limit: 50
    t.string    "v_phone",        limit: 20
    t.decimal   "v_ytd",                      precision: 15, scale: 2
    t.decimal   "v_markup",                   precision: 15, scale: 2
    t.string    "v_note3",        limit: 55
    t.string    "v_task",         limit: 4
    t.string    "v_type",         limit: 20
    t.boolean   "v_open"
    t.boolean   "v_allocate"
    t.string    "v_tax_id",       limit: 15
    t.string    "v_acct_num",     limit: 10
    t.decimal   "v_currn",                    precision: 15, scale: 2
    t.decimal   "v_30day",                    precision: 15, scale: 2
    t.decimal   "v_60day",                    precision: 15, scale: 2
    t.decimal   "v_90day",                    precision: 15, scale: 2
    t.decimal   "v_baln",                     precision: 15, scale: 2
    t.date      "v_last_ap"
    t.string    "v_added_by",     limit: 3
    t.date      "v_added_when"
    t.time      "v_time"
    t.decimal   "v_1",                        precision: 15, scale: 2
    t.decimal   "v_2",                        precision: 15, scale: 2
    t.decimal   "v_3",                        precision: 15, scale: 2
    t.decimal   "v_4",                        precision: 15, scale: 2
    t.decimal   "v_5",                        precision: 15, scale: 2
    t.decimal   "v_6",                        precision: 15, scale: 2
    t.decimal   "v_7",                        precision: 15, scale: 2
    t.decimal   "v_8",                        precision: 15, scale: 2
    t.decimal   "v_9",                        precision: 15, scale: 2
    t.decimal   "v_10",                       precision: 15, scale: 2
    t.decimal   "v_11",                       precision: 15, scale: 2
    t.decimal   "v_12",                       precision: 15, scale: 2
    t.decimal   "v_l1",                       precision: 15, scale: 2
    t.decimal   "v_l2",                       precision: 15, scale: 2
    t.decimal   "v_l3",                       precision: 15, scale: 2
    t.decimal   "v_l4",                       precision: 15, scale: 2
    t.decimal   "v_l5",                       precision: 15, scale: 2
    t.decimal   "v_l6",                       precision: 15, scale: 2
    t.decimal   "v_l7",                       precision: 15, scale: 2
    t.decimal   "v_l8",                       precision: 15, scale: 2
    t.decimal   "v_l9",                       precision: 15, scale: 2
    t.decimal   "v_l10",                      precision: 15, scale: 2
    t.decimal   "v_l11",                      precision: 15, scale: 2
    t.decimal   "v_l12",                      precision: 15, scale: 2
    t.decimal   "v_terms1",                   precision: 15, scale: 0
    t.decimal   "v_terms2",                   precision: 15, scale: 0
    t.decimal   "v_terms3",                   precision: 15, scale: 0
    t.decimal   "v_cgl",                      precision: 15, scale: 2
    t.decimal   "v_dgl",                      precision: 15, scale: 2
    t.string    "v_ck_memo",      limit: 80
    t.text      "v_notes"
    t.string    "v_fax",          limit: 20
    t.decimal   "v_disc_dgl",                 precision: 15, scale: 2
    t.string    "v_name1",        limit: 40
    t.string    "v_phone1",       limit: 20
    t.string    "v_fax1",         limit: 20
    t.string    "v_pager1",       limit: 20
    t.string    "v_car_phone1",   limit: 20
    t.string    "v_name2",        limit: 40
    t.string    "v_phone2",       limit: 20
    t.string    "v_fax2",         limit: 20
    t.string    "v_car_phone2",   limit: 20
    t.string    "v_pager2",       limit: 20
    t.string    "v_name3",        limit: 40
    t.string    "v_phone3",       limit: 20
    t.string    "v_fax3",         limit: 20
    t.string    "v_pager3",       limit: 20
    t.string    "v_car_phone3",   limit: 20
    t.string    "v_home_phone1",  limit: 20
    t.string    "v_home_phone2",  limit: 20
    t.string    "v_home_phone3",  limit: 20
    t.decimal   "v_active",                   precision: 9,  scale: 0
    t.decimal   "v_1099",                     precision: 9,  scale: 0
    t.string    "v_media_vnum",   limit: 10
    t.string    "v_address2_1",   limit: 50
    t.string    "v_address2_2",   limit: 50
    t.string    "v_address2_3",   limit: 50
    t.string    "v_address2_4",   limit: 50
    t.string    "v_address3_1",   limit: 50
    t.string    "v_address3_2",   limit: 50
    t.string    "v_address3_3",   limit: 50
    t.string    "v_address3_4",   limit: 50
    t.decimal   "v_comm",                     precision: 9,  scale: 2
    t.integer   "v_hold",         limit: 1
    t.text      "v_hold_why"
    t.integer   "v_media_kind",   limit: 1
    t.string    "v_web_url",      limit: 50
    t.string    "v_email",        limit: 100
    t.string    "v_corp_id",      limit: 100
    t.string    "v_market",       limit: 40
    t.string    "v_changed_by",   limit: 4
    t.timestamp "v_changed_when"
    t.integer   "v_no_rfq",       limit: 1
    t.string    "v_dba",          limit: 50
    t.integer   "v_1099_rent",    limit: 1
    t.string    "v_edited_by",    limit: 4
    t.timestamp "v_edited_when"
    t.integer   "v_paid_online",  limit: 1
    t.string    "v_ncf_prefix1",  limit: 18
    t.string    "v_rfq_type",     limit: 20
  end

  add_index "vendors", ["v_active"], name: "v_active"
  add_index "vendors", ["v_media_vnum"], name: "v_media_vnum"
  add_index "vendors", ["v_num"], name: "v_num"
  add_index "vendors", ["v_org"], name: "v_org"

  create_table "version", primary_key: "ver_seq", force: true do |t|
    t.integer "ver_program",  limit: 1
    t.string  "ver_name",     limit: 100
    t.decimal "ver_a",                    precision: 15, scale: 0
    t.decimal "ver_b",                    precision: 15, scale: 0
    t.decimal "ver_c",                    precision: 15, scale: 0
    t.decimal "ver_beta_num",             precision: 15, scale: 0
    t.decimal "ver_demo",                 precision: 15, scale: 0
  end

  create_table "web_ip_log", primary_key: "wip_seq", force: true do |t|
    t.string    "wip_ip",       limit: 20
    t.string    "wip_name",     limit: 60
    t.date      "wip_date"
    t.timestamp "wip_datetime"
  end

  add_index "web_ip_log", ["wip_date"], name: "wip_date"
  add_index "web_ip_log", ["wip_ip"], name: "wip_ip"

  create_table "web_log", primary_key: "wlog_seq", force: true do |t|
    t.timestamp "wlog_datetime"
    t.string    "wlog_user",     limit: 4
    t.integer   "wlog_status",   limit: 1
    t.text      "wlog_event"
    t.string    "wlog_page",     limit: 30
    t.string    "wlog_ip",       limit: 30
    t.date      "wlog_date"
    t.time      "wlog_time"
    t.integer   "wlog_day",      limit: 1
    t.integer   "wlog_hour",     limit: 1
  end

  add_index "web_log", ["wlog_date"], name: "wlog_date"
  add_index "web_log", ["wlog_user"], name: "wlog_user"

  create_table "web_prefs", primary_key: "wp_seq", force: true do |t|
    t.integer   "wp_bell_on_hits",      limit: 1
    t.string    "wp_current_event",     limit: 200
    t.integer   "wp_disable_log",       limit: 1
    t.integer   "wp_alert_pw",          limit: 1
    t.string    "wp_webmaster",         limit: 100
    t.string    "wp_webmstr_email",     limit: 100
    t.integer   "wp_alert_logon",       limit: 1
    t.string    "wp_smtp_server",       limit: 40
    t.integer   "wp_auto_start",        limit: 1
    t.integer   "wp_alert_id",          limit: 1
    t.date      "wp_date"
    t.string    "wp_user",              limit: 4
    t.text      "greeting"
    t.string    "dgl_name",             limit: 50
    t.string    "cgl_name",             limit: 50
    t.string    "kind",                 limit: 25
    t.string    "task_kind",            limit: 20
    t.string    "type",                 limit: 20
    t.string    "job_name",             limit: 60
    t.string    "task_name",            limit: 60
    t.integer   "wp_alert_error",       limit: 1
    t.string    "est_revision",         limit: 10
    t.string    "final_estimate",       limit: 20
    t.string    "status_desc1",         limit: 40
    t.string    "status_desc2",         limit: 40
    t.integer   "wp_remote_admin",      limit: 1
    t.string    "wp_remote_admin_ip",   limit: 20
    t.text      "lookup6"
    t.text      "lookup5"
    t.text      "lookup4"
    t.text      "lookup3"
    t.text      "lookup2"
    t.text      "lookup_jobs"
    t.timestamp "wp_datetime"
    t.decimal   "hit_duration",                     precision: 9, scale: 0
    t.decimal   "query_duration",                   precision: 9, scale: 0
    t.text      "transaction_type"
    t.integer   "bytes_received"
    t.integer   "bytes_sent"
    t.binary    "header_list"
    t.decimal   "wp_disconnect",                    precision: 9, scale: 0
    t.date      "wp_show_date"
    t.string    "ver",                  limit: 20
    t.integer   "alt_socket"
    t.text      "message_data"
    t.string    "posted",               limit: 20
    t.integer   "wp_port_number"
    t.integer   "wp_backup",            limit: 1
    t.time      "wp_close_time"
    t.time      "wp_open_time"
    t.string    "wp_font_open",         limit: 100
    t.string    "wp_font_close",        limit: 20
    t.integer   "wp_auto_archive_log",  limit: 1
    t.integer   "wp_log_ip_errors",     limit: 1
    t.date      "wp_last_archive"
    t.integer   "wp_disable_bad_login", limit: 1
    t.string    "wp_js_server",         limit: 100
    t.integer   "cal_day",              limit: 1
    t.integer   "cal_month",            limit: 1
    t.integer   "cal_year"
    t.string    "cal_mode",             limit: 10
    t.string    "wp_logo_url",          limit: 200
    t.string    "wp_logo_link",         limit: 200
    t.integer   "wp_auto_start_my",     limit: 1
    t.string    "wp_edited_by",         limit: 4
    t.timestamp "wp_edited_when"
    t.string    "wp_boxr_email",        limit: 100
    t.string    "wp_boxr_username",     limit: 50
    t.string    "wp_boxr_pw",           limit: 50
    t.string    "wp_boxr_server",       limit: 100
    t.integer   "wp_ssl",               limit: 1
    t.text      "wp_smtp_auth_id"
    t.text      "wp_smtp_auth_pw"
    t.integer   "wp_smtp_port"
    t.integer   "wp_smtp_ssl_type",     limit: 1
  end

  create_table "web_users", primary_key: "wu_seq", force: true do |t|
    t.string    "wu_work",            limit: 4
    t.string    "wu_name",            limit: 60
    t.string    "wu_org",             limit: 60
    t.date      "wu_expires"
    t.string    "wu_phone",           limit: 20
    t.string    "wu_email",           limit: 40
    t.string    "wu_phone_cell",      limit: 20
    t.string    "wu_pager",           limit: 20
    t.integer   "wu_staff",           limit: 1
    t.string    "wu_p",               limit: 20
    t.date      "wu_p_expires"
    t.string    "wu_dept",            limit: 20
    t.integer   "wu_web_admin",       limit: 1
    t.timestamp "wu_last_access"
    t.integer   "wu_kind",            limit: 1
    t.integer   "wu_a_time",          limit: 1
    t.date      "wu_access_exp"
    t.integer   "wu_admin",           limit: 1
    t.integer   "wu_a_job_tickets",   limit: 1
    t.integer   "wu_a_est",           limit: 1
    t.integer   "wu_a_sched",         limit: 1
    t.integer   "wu_a_traffic",       limit: 1
    t.integer   "wu_a_job_status",    limit: 1
    t.integer   "wu_a_po",            limit: 1
    t.integer   "wu_a_po_ok",         limit: 1
    t.integer   "wu_a_task_plan",     limit: 1
    t.integer   "wu_a_chg_ord",       limit: 1
    t.integer   "wu_a_client_diary",  limit: 1
    t.integer   "wu_a_est_revs",      limit: 1
    t.integer   "wu_a_costs",         limit: 1
    t.integer   "wu_a_client_status", limit: 1
    t.integer   "wu_a_unbilled",      limit: 1
    t.integer   "wu_a_bill_prvw",     limit: 1
    t.integer   "wu_a_wip",           limit: 1
    t.integer   "wu_a_billings",      limit: 1
    t.integer   "wu_a_snapshot",      limit: 1
    t.integer   "wu_a_cash_flash",    limit: 1
    t.integer   "wu_a_stmt",          limit: 1
    t.integer   "wu_a_ap",            limit: 1
    t.string    "wu_a_v_num",         limit: 10
    t.string    "wu_a_c_num",         limit: 10
    t.integer   "wu_a_work_to_do",    limit: 1
    t.integer   "wu_a_job_diary",     limit: 1
    t.integer   "wu_a_ar",            limit: 1
    t.string    "wu_ip",              limit: 20
    t.integer   "wu_suspend",         limit: 1
    t.string    "wu_last_job",        limit: 10
    t.date      "wu_last_date"
    t.integer   "wu_a_weekly_traf",   limit: 1
    t.integer   "wu_a_job_po",        limit: 1
    t.integer   "wu_a_job_prog",      limit: 1
    t.text      "wu_welcome_msg"
    t.string    "wu_last_po",         limit: 12
    t.integer   "wu_a_clients",       limit: 1
    t.integer   "wu_a_vendors",       limit: 1
    t.integer   "wu_a_exp",           limit: 1
    t.integer   "wu_a_add_jobs",      limit: 1
    t.integer   "wu_a_job_specs",     limit: 1
    t.string    "wu_added_by",        limit: 10
    t.date      "wu_added_when"
    t.string    "wu_home_page",       limit: 30
    t.integer   "wu_bad_logins",      limit: 1
    t.string    "wu_cookie",          limit: 200
    t.integer   "wu_a_proposals",     limit: 1
    t.integer   "wu_a_int_charges",   limit: 1
    t.integer   "wu_a_time_sheets",   limit: 1
    t.integer   "wu_a_prebill",       limit: 1
    t.integer   "wu_a_snaps_prod",    limit: 1
    t.integer   "wu_a_snaps_wip",     limit: 1
    t.string    "wu_id",              limit: 200
    t.string    "wu_edited_by",       limit: 4
    t.timestamp "wu_edited_when"
  end

  add_index "web_users", ["wu_work"], name: "wu_work"

  create_table "work_order", primary_key: "wo_seq", force: true do |t|
    t.string  "wo_job_num",       limit: 10
    t.string  "wo_client_num",    limit: 10
    t.text    "wo_1_label"
    t.text    "wo_2_label"
    t.text    "wo_3_label"
    t.text    "wo_4_label"
    t.text    "wo_5_label"
    t.text    "wo_6_label"
    t.text    "wo_7_label"
    t.text    "wo_8_label"
    t.text    "wo_9_label"
    t.text    "wo_10_label"
    t.text    "wo_11_label"
    t.text    "wo_12_label"
    t.text    "wo_13_label"
    t.text    "wo_14_label"
    t.string  "wo_15_label",      limit: nil
    t.text    "wo_1"
    t.text    "wo_2"
    t.text    "wo_3"
    t.text    "wo_4"
    t.text    "wo_5"
    t.text    "wo_6"
    t.text    "wo_7"
    t.text    "wo_8"
    t.text    "wo_9"
    t.text    "wo_10"
    t.text    "wo_11"
    t.text    "wo_12"
    t.text    "wo_13"
    t.text    "wo_14"
    t.text    "wo_15"
    t.string  "wo_added_by",      limit: 4
    t.string  "wo_rev_by",        limit: 4
    t.integer "wo_ok",            limit: 1
    t.string  "wo_ok_by",         limit: 4
    t.date    "wo_ok_date"
    t.integer "wo_approved",      limit: 1
    t.date    "wo_approved_date"
    t.string  "wo_approved_by",   limit: 4
    t.string  "wo_adr_name",      limit: 20
  end

  add_index "work_order", ["wo_client_num"], name: "wo_client_num"
  add_index "work_order", ["wo_job_num"], name: "wo_job_num"

  create_table "working", primary_key: "w_seq", force: true do |t|
    t.string    "w_work",                 limit: 4
    t.string    "w_org",                  limit: 60
    t.string    "w_database",             limit: 60
    t.string    "w_phone",                limit: 20
    t.date      "w_expires"
    t.string    "w_where",                limit: 30
    t.decimal   "w_in_out",                           precision: 9,  scale: 2
    t.decimal   "w_bill_rate",                        precision: 9,  scale: 2
    t.decimal   "w_finance_chg",                      precision: 9,  scale: 2
    t.string    "w_dept",                 limit: 15
    t.decimal   "w_a_add_tasks",                      precision: 9,  scale: 0
    t.decimal   "w_po_numbering",                     precision: 9,  scale: 0
    t.decimal   "w_year",                             precision: 9,  scale: 0
    t.decimal   "w_ck_stock",                         precision: 9,  scale: 0
    t.decimal   "w_demo",                             precision: 9,  scale: 0
    t.decimal   "w_a_edit_jobs",                      precision: 9,  scale: 0
    t.decimal   "w_group_limit",                      precision: 9,  scale: 0
    t.decimal   "w_a_ar_edit",                        precision: 9,  scale: 0
    t.decimal   "w_a_production",                     precision: 9,  scale: 0
    t.decimal   "w_note_status_change",               precision: 9,  scale: 0
    t.decimal   "w_a_reopen_jobs",                    precision: 9,  scale: 0
    t.decimal   "w_a_time_closed_jobs",               precision: 9,  scale: 0
    t.decimal   "w_a_utilities",                      precision: 9,  scale: 0
    t.decimal   "w_a_job_wip",                        precision: 9,  scale: 0
    t.decimal   "w_a_unpost",                         precision: 9,  scale: 0
    t.date      "w_password_exp"
    t.string    "w_terms",                limit: 20
    t.decimal   "w_status_new",                       precision: 9,  scale: 0
    t.decimal   "w_status_reopen",                    precision: 9,  scale: 0
    t.decimal   "w_status_closed",                    precision: 9,  scale: 0
    t.string    "w_ae_team",              limit: 10
    t.string    "w_aka_client",           limit: 20
    t.string    "w_aka_clients",          limit: 20
    t.string    "w_aka_job",              limit: 20
    t.string    "w_aka_jobs",             limit: 20
    t.string    "w_aka_task",             limit: 20
    t.string    "w_aka_tasks",            limit: 20
    t.string    "w_aka_vendor",           limit: 20
    t.string    "w_aka_vendors",          limit: 20
    t.string    "w_aka_ar",               limit: 20
    t.string    "w_aka_ars",              limit: 20
    t.integer   "w_a_open_jobs",          limit: 1
    t.integer   "w_a_delete_jobs",        limit: 1
    t.integer   "w_a_remove_tasks",       limit: 1
    t.integer   "w_a_edit_est",           limit: 1
    t.integer   "w_a_chg_orders",         limit: 1
    t.integer   "w_a_up_prod_status",     limit: 1
    t.integer   "w_a_up_bill_status",     limit: 1
    t.text      "w_po_disclaimer"
    t.string    "w_tax_desc1",            limit: 25
    t.string    "w_tax_desc2",            limit: 25
    t.decimal   "w_tax_rate1",                        precision: 15, scale: 4
    t.decimal   "w_tax_rate2",                        precision: 15, scale: 4
    t.decimal   "w_tax_gl1",                          precision: 9,  scale: 2
    t.decimal   "w_tax_gl2",                          precision: 9,  scale: 2
    t.decimal   "w_date_format",                      precision: 9,  scale: 0
    t.decimal   "w_alert_po",                         precision: 15, scale: 0
    t.decimal   "w_alert_po_pc",                      precision: 15, scale: 0
    t.decimal   "w_alert_cost",                       precision: 15, scale: 0
    t.decimal   "w_alert_cost_pc",                    precision: 15, scale: 0
    t.decimal   "w_alert_time",                       precision: 15, scale: 0
    t.decimal   "w_alert_time_pc",                    precision: 15, scale: 0
    t.decimal   "w_a_status_table",                   precision: 9,  scale: 0
    t.decimal   "w_a_up_traffic",                     precision: 9,  scale: 0
    t.decimal   "w_a_up_schedules",                   precision: 9,  scale: 0
    t.decimal   "w_a_cant_chg_po",                    precision: 9,  scale: 0
    t.integer   "w_a_hide_rates",         limit: 1
    t.string    "w_info_ctr",             limit: 30
    t.integer   "w_a_cost_checks",        limit: 1
    t.decimal   "w_a_hide_time",                      precision: 9,  scale: 0
    t.string    "w_po_to1",               limit: 10
    t.string    "w_po_to2",               limit: 10
    t.string    "w_po_to3",               limit: 10
    t.string    "w_po_to4",               limit: 10
    t.string    "w_po_to5",               limit: 10
    t.decimal   "w_job_numbering",                    precision: 9,  scale: 0
    t.string    "w_a_status_cat",         limit: 20
    t.decimal   "w_logo_estimate",                    precision: 9,  scale: 2
    t.integer   "w_logo_ar",              limit: 1
    t.integer   "w_logo_po",              limit: 1
    t.text      "w_est_disclaimr"
    t.text      "w_stmt_note"
    t.text      "w_ar_note"
    t.text      "w_po_note"
    t.decimal   "w_gl_cash",                          precision: 15, scale: 2
    t.decimal   "w_gl_ar",                            precision: 15, scale: 2
    t.decimal   "w_gl_ap",                            precision: 15, scale: 2
    t.decimal   "w_gl_retainer",                      precision: 15, scale: 2
    t.decimal   "w_gl_sales",                         precision: 15, scale: 2
    t.decimal   "w_gl_overhead",                      precision: 15, scale: 2
    t.decimal   "w_gl_cost",                          precision: 15, scale: 2
    t.decimal   "w_gl_re",                            precision: 15, scale: 2
    t.decimal   "w_period",                           precision: 9,  scale: 0
    t.timestamp "w_date1"
    t.decimal   "w_gl_empl_adv",                      precision: 9,  scale: 2
    t.integer   "w_print_to",             limit: 1
    t.integer   "w_a_est_ok",             limit: 1
    t.integer   "w_a_look_clients",       limit: 1
    t.integer   "w_a_look_jobs",          limit: 1
    t.integer   "w_a_look_staff",         limit: 1
    t.integer   "w_a_look_coa",           limit: 1
    t.integer   "w_a_look_pc",            limit: 1
    t.integer   "w_a_look_dept",          limit: 1
    t.integer   "w_a_look_po",            limit: 1
    t.integer   "w_a_look_proj",          limit: 1
    t.integer   "w_a_look_types",         limit: 1
    t.integer   "w_a_look_vendors",       limit: 1
    t.string    "w_est_heading",          limit: 30
    t.string    "w_inv_heading",          limit: 30
    t.string    "w_approval1",            limit: 40
    t.string    "w_approval2",            limit: 40
    t.string    "w_approval3",            limit: 40
    t.decimal   "w_a_add_xfers",                      precision: 9,  scale: 2
    t.decimal   "w_a_import_payroll",                 precision: 9,  scale: 2
    t.decimal   "w_a_xfer_acct_bal",                  precision: 9,  scale: 2
    t.integer   "w_a_time",               limit: 1
    t.decimal   "w_a_gl_auditor",                     precision: 9,  scale: 2
    t.decimal   "w_a_close_year",                     precision: 9,  scale: 2
    t.decimal   "w_a_recur_je",                       precision: 9,  scale: 2
    t.decimal   "w_po_show_cl",                       precision: 9,  scale: 0
    t.decimal   "w_a_gl_reconcile",                   precision: 9,  scale: 2
    t.decimal   "w_a_add_coa",                        precision: 9,  scale: 2
    t.decimal   "w_a_gl_budgets",                     precision: 9,  scale: 2
    t.integer   "w_a_delete_own_po",      limit: 1
    t.decimal   "w_a_adj_je",                         precision: 9,  scale: 2
    t.decimal   "w_a_overhead_alloc",                 precision: 9,  scale: 2
    t.decimal   "w_a_import_time",                    precision: 9,  scale: 2
    t.decimal   "w_a_close_jobs",                     precision: 9,  scale: 2
    t.string    "w_aka_po",               limit: 20
    t.string    "w_po_approval1",         limit: 15
    t.string    "w_po_approval2",         limit: 15
    t.string    "w_po_approval3",         limit: 15
    t.string    "w_po_field1",            limit: 10
    t.string    "w_po_field2",            limit: 10
    t.string    "w_po_field3",            limit: 10
    t.string    "w_po_field4",            limit: 10
    t.string    "w_po_field5",            limit: 10
    t.decimal   "w_next_job",                         precision: 9,  scale: 0
    t.string    "w_equity_name",          limit: 25
    t.string    "w_income_name",          limit: 25
    t.string    "w_costs_name",           limit: 25
    t.string    "w_otherinc_name",        limit: 25
    t.string    "w_otherexp_name",        limit: 25
    t.string    "w_expenses_name",        limit: 25
    t.string    "w_user_name",            limit: 40
    t.string    "w_next",                 limit: 64
    t.decimal   "w_next_po_num",                      precision: 15, scale: 0
    t.decimal   "w_a_change_gl",                      precision: 15, scale: 0
    t.decimal   "w_gl_adv_bill",                      precision: 9,  scale: 2
    t.timestamp "w_logged_in"
    t.timestamp "w_logged_out"
    t.decimal   "w_a_po_max",                         precision: 15, scale: 2
    t.integer   "w_a_gl_post",            limit: 1
    t.string    "w_aka_pos",              limit: 30
    t.string    "w_jobs_pos",             limit: 15
    t.string    "w_estimate_pos",         limit: 15
    t.string    "w_schedule_pos",         limit: 15
    t.string    "w_ar_pos",               limit: 15
    t.string    "w_po_pos",               limit: 15
    t.string    "w_status_pos",           limit: 15
    t.string    "w_uptraffic_pos",        limit: 15
    t.string    "w_traffic_pos",          limit: 15
    t.string    "w_media_pos",            limit: 15
    t.string    "w_jobspecs_pos",         limit: 15
    t.string    "w_time_pos",             limit: 15
    t.integer   "w_a_post_only",          limit: 1
    t.decimal   "w_gl_ar_disc",                       precision: 9,  scale: 2
    t.decimal   "w_gl_ap_disc",                       precision: 9,  scale: 2
    t.integer   "w_a_jobs",               limit: 1
    t.integer   "w_a_clients",            limit: 1
    t.integer   "w_a_vendors",            limit: 1
    t.integer   "w_a_staff",              limit: 1
    t.integer   "w_a_ap",                 limit: 1
    t.integer   "w_a_checks",             limit: 1
    t.integer   "w_a_expenses",           limit: 1
    t.integer   "w_a_ar",                 limit: 1
    t.integer   "w_a_manager",            limit: 1
    t.integer   "w_a_prefs",              limit: 1
    t.integer   "w_a_coa",                limit: 1
    t.integer   "w_a_task_table",         limit: 1
    t.integer   "w_a_financials",         limit: 1
    t.integer   "w_a_costs",              limit: 1
    t.integer   "w_a_see_costs",          limit: 1
    t.integer   "w_a_adhoc",              limit: 1
    t.integer   "w_a_gl",                 limit: 1
    t.integer   "w_a_client_pmts",        limit: 1
    t.integer   "w_a_client_aging",       limit: 1
    t.integer   "w_a_vendor_aging",       limit: 1
    t.integer   "w_a_wip",                limit: 1
    t.integer   "w_a_profitability",      limit: 1
    t.integer   "w_a_productivity",       limit: 1
    t.integer   "w_a_cash_flow",          limit: 1
    t.integer   "w_a_media",              limit: 1
    t.integer   "w_a_xfers",              limit: 1
    t.decimal   "w_status_billed",                    precision: 9,  scale: 0
    t.decimal   "w_status_ar_paid",                   precision: 9,  scale: 0
    t.integer   "w_a_po_amt",             limit: 1
    t.decimal   "w_gl_media_wip",                     precision: 15, scale: 2
    t.decimal   "w_gl_media_costs",                   precision: 15, scale: 2
    t.integer   "w_a_empl_adv",           limit: 1
    t.integer   "w_a_time_view_days",     limit: 1
    t.integer   "w_a_hide_job_amts",      limit: 1
    t.integer   "w_a_approve_po",         limit: 1
    t.integer   "w_a_staff_only",         limit: 1
    t.integer   "w_a_confid_gl",          limit: 1
    t.integer   "w_num11",                limit: 1
    t.integer   "w_num12",                limit: 1
    t.text      "w_bud_alert_c1"
    t.text      "w_bud_alert_c2"
    t.text      "w_bud_alert_l1"
    t.text      "w_bud_alert_l2"
    t.text      "w_bud_alert_po1"
    t.text      "w_bud_alert_po2"
    t.string    "w_job_column1",          limit: 12
    t.string    "w_job_column2",          limit: 12
    t.string    "w_job_column3",          limit: 12
    t.string    "w_aka",                  limit: 30
    t.string    "w_sep",                  limit: 1
    t.string    "w_aka_project",          limit: 20
    t.integer   "w_force_quit",           limit: 1
    t.time      "w_force_time"
    t.string    "w_info_ctr_msg",         limit: 60
    t.text      "w_con_note"
    t.decimal   "w_con_pc",                           precision: 9,  scale: 2
    t.integer   "w_uniq_jnum",            limit: 1
    t.decimal   "w_jobs_from",                        precision: 9,  scale: 0
    t.decimal   "w_jobs_to",                          precision: 9,  scale: 0
    t.string    "w_aka_client_po",        limit: 20
    t.string    "w_j_to1",                limit: 10
    t.string    "w_j_to2",                limit: 10
    t.string    "w_j_to3",                limit: 10
    t.string    "w_j_to4",                limit: 10
    t.string    "w_j_to5",                limit: 10
    t.string    "w_char20",               limit: 20
    t.integer   "w_version_a",            limit: 1
    t.integer   "w_version_b",            limit: 1
    t.integer   "w_version_c",            limit: 1
    t.string    "w_version_kind",         limit: 2
    t.string    "w_user_field3",          limit: 20
    t.string    "w_user_field4",          limit: 20
    t.string    "w_user_field5",          limit: 20
    t.string    "w_user_field6",          limit: 20
    t.string    "w_po_total_label",       limit: 30
    t.string    "w_aka_pc",               limit: 20
    t.string    "w_aka_pcs",              limit: 20
    t.integer   "w_a_sales_tax",          limit: 1
    t.integer   "w_a_spell",              limit: 1
    t.decimal   "w_a_io_max",                         precision: 15, scale: 2
    t.integer   "w_a_approve_ar",         limit: 1
    t.integer   "w_a_dba",                limit: 1
    t.integer   "w_job_col1",             limit: 1
    t.integer   "w_job_col2",             limit: 1
    t.integer   "w_job_col3",             limit: 1
    t.integer   "w_job_col4",             limit: 1
    t.integer   "w_job_col5",             limit: 1
    t.integer   "w_job_col6",             limit: 1
    t.integer   "w_a_ok_requests",        limit: 1
    t.integer   "w_a_approve_time",       limit: 1
    t.integer   "w_a_approve_exp",        limit: 1
    t.integer   "w_a_change_priority",    limit: 1
    t.integer   "w_a_media_snaps",        limit: 1
    t.integer   "w_a_client_add",         limit: 1
    t.integer   "w_a_web_access",         limit: 1
    t.integer   "w_a_cust_reports",       limit: 1
    t.integer   "w_a_collect_mgr",        limit: 1
    t.integer   "w_a_email",              limit: 1
    t.integer   "w_a_approve_ap",         limit: 1
    t.integer   "w_a_approve_jobs",       limit: 1
    t.integer   "w_a_approve_sch",        limit: 1
    t.integer   "w_a_approve_mo",         limit: 1
    t.integer   "w_a_approve_mests",      limit: 1
    t.integer   "w_a_approve_mplans",     limit: 1
    t.integer   "w_a_approve_mbriefs",    limit: 1
    t.integer   "w_a_int_charges",        limit: 1
    t.integer   "w_a_commissions",        limit: 1
    t.integer   "w_a_print_specs",        limit: 1
    t.integer   "w_a_approve_printspecs", limit: 1
    t.integer   "w_a_renumber",           limit: 1
    t.integer   "w_a_verify_recover",     limit: 1
    t.integer   "w_a_see_labor_net",      limit: 1
    t.integer   "w_a_hide_tooltips",      limit: 1
    t.string    "w_tcp_address",          limit: 100
    t.timestamp "w_last_work_time"
    t.text      "w_last_work"
    t.integer   "w_log_off_now",          limit: 1
    t.integer   "w_a_job_snapshot",       limit: 1
    t.decimal   "w_gl_int_bill",                      precision: 9,  scale: 2
    t.integer   "w_a_hide_rates_bill",    limit: 1
    t.string    "w_pos_clip_note",        limit: 15
    t.decimal   "w_status_new_b",                     precision: 15, scale: 0
    t.decimal   "w_status_closed_b",                  precision: 15, scale: 0
    t.decimal   "w_status_reopen_b",                  precision: 15, scale: 0
    t.decimal   "w_status_billed_b",                  precision: 15, scale: 0
    t.decimal   "w_status_ar_paid_b",                 precision: 15, scale: 0
    t.decimal   "w_print_status_from",                precision: 15, scale: 0
    t.decimal   "w_print_status_to",                  precision: 15, scale: 0
    t.integer   "w_web_access",           limit: 1
    t.integer   "w_a_inst_jobs",          limit: 1
    t.string    "w_pc",                   limit: 10
    t.decimal   "w_tax_rate3",                        precision: 15, scale: 4
    t.string    "w_tax_desc3",            limit: 25
    t.decimal   "w_tax_gl3",                          precision: 15, scale: 2
    t.integer   "w_dashboard",            limit: 1
    t.integer   "w_a_job_bill_wkst",      limit: 1
    t.integer   "w_a_time_card",          limit: 1
  end

  add_index "working", ["w_logged_in"], name: "w_logged_in"
  add_index "working", ["w_work"], name: "w_work"

  create_table "worksheet", primary_key: "est_seq", force: true do |t|
    t.string    "est_key",         limit: 15
    t.string    "est_line1",       limit: 40
    t.string    "est_line2",       limit: 40
    t.string    "est_line3",       limit: 40
    t.string    "est_line4",       limit: 40
    t.decimal   "est_amt1",                   precision: 15, scale: 2
    t.decimal   "est_amt2",                   precision: 15, scale: 2
    t.decimal   "est_amt3",                   precision: 15, scale: 2
    t.decimal   "est_amt4",                   precision: 15, scale: 2
    t.string    "est_resource1",   limit: 10
    t.string    "est_resource2",   limit: 10
    t.string    "est_resource3",   limit: 10
    t.string    "est_resource4",   limit: 10
    t.decimal   "est_rate1",                  precision: 9,  scale: 2
    t.decimal   "est_rate2",                  precision: 9,  scale: 2
    t.decimal   "est_rate3",                  precision: 9,  scale: 2
    t.decimal   "est_rate4",                  precision: 9,  scale: 2
    t.decimal   "est_hrs1",                   precision: 9,  scale: 2
    t.decimal   "est_hrs2",                   precision: 9,  scale: 2
    t.decimal   "est_hrs3",                   precision: 9,  scale: 2
    t.decimal   "est_hrs4",                   precision: 9,  scale: 2
    t.string    "est_job_num",     limit: 10
    t.integer   "est_column",      limit: 1
    t.string    "est_task",        limit: 4
    t.decimal   "est_markup",                 precision: 9,  scale: 2
    t.integer   "est_rev",         limit: 1
    t.string    "est_added_by",    limit: 4
    t.timestamp "est_added_when"
    t.string    "est_edited_by",   limit: 4
    t.timestamp "est_edited_when"
  end

  add_index "worksheet", ["est_job_num"], name: "est_job_num"
  add_index "worksheet", ["est_key"], name: "est_key"

  create_table "y1099", primary_key: "y_seq", force: true do |t|
    t.string  "y_name1",       limit: 40
    t.string  "y_address1",    limit: 40
    t.string  "y_city_state1", limit: 40
    t.string  "y_zip1",        limit: 40
    t.string  "y_tax1",        limit: 20
    t.decimal "y_amt1",                   precision: 15, scale: 2
    t.string  "y_name2",       limit: 40
    t.string  "y_address2",    limit: 40
    t.string  "y_city_state2", limit: 40
    t.string  "y_zip2",        limit: 40
    t.string  "y_tax2",        limit: 20
    t.decimal "y_amt2",                   precision: 15, scale: 2
    t.string  "y_name3",       limit: 40
    t.string  "y_address3",    limit: 40
    t.string  "y_city_state3", limit: 40
    t.string  "y_zip3",        limit: 40
    t.decimal "y_amt3",                   precision: 15, scale: 2
    t.string  "y_tax3",        limit: 20
    t.string  "y_dba",         limit: 50
    t.string  "y_dba2",        limit: 50
    t.decimal "y_rent",                   precision: 9,  scale: 2
    t.decimal "y_rent2",                  precision: 9,  scale: 2
  end

end

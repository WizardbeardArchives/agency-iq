json.array!(@print_specs) do |print_spec|
  json.extract! print_spec, :id, :primaryKey, :PSPEC_JOB_NUM, :PSPEC_PROD_COORD, :PSPEC_DATE, :PSPEC_DATE_NEEDED, :PSPEC_DESCRIPTION, :PSPEC_ART_DUE, :PSPEC_FINAL_DUE, :PSPEC_QTY, :PSPEC_OVERRUN, :PSPEC_COV_FLATSIZE, :PSPEC_COV_FOLDSIZE, :PSPEC_COV_STOCK, :PSPEC_COV_OUTSIDE, :PSPEC_COV_INSIDE, :PSPEC_COV_O_BLEEDS, :PSPEC_COV_I_BLEEDS, :PSPEC_COV_PANTONE, :PSPEC_TX_FLATSIZE, :PSPEC_TX_FOLDSIZE, :PSPEC_TX_STOCK, :PSPEC_TX_COLORS, :PSPEC_TX_BLEEDS, :PSPEC_TX_PANTONE, :PSPEC_TX_PAGES, :PSPEC_IN_FLATSIZE, :PSPEC_IN_FOLDSIZE, :PSPEC_IN_STOCK, :PSPEC_IN_COLORS, :PSPEC_IN_PAGES, :PSPEC_IN_BLEEDS, :PSPEC_IN_PANTONE, :PSPEC_IN_COLLATE, :PSPEC_MECH, :PSPEC_ELEC, :PSPEC_FILM, :PSPEC_NO_IMAGES, :PSPEC_T1, :PSPEC_T2, :PSPEC_T3, :PSPEC_T4, :PSPEC_TRANS_SPEC, :PSPEC_R1, :PSPEC_R2, :PSPEC_R3, :PSPEC_R4, :PSPEC_REF_SPEC, :PSPEC_STRIPPING, :PSPEC_PROOFING, :PSPEC_BINDERY, :PSPEC_PACKAGE, :PSPEC_ADDED_BY, :PSPEC_STATUS, :PSX_PROD_CONTACT, :PSX_FORMAT, :PSX_FORMAT_OTHER, :PSX_QTY_EACH, :PSX_QTY_TOTAL, :PSX_PREPRESS, :PSX_PREPRESS_OTHER, :PSX_STATUS, :PSX_TRIM, :PSX_FOLDS_TO, :PSX_FOLDS_OTHER, :PSX_WEIGHT, :PSX_FINISH, :PSX_TYPE, :PSX_SPECIAL_STOCK, :PSX_AVAILABLE_FROM, :PSX_CLIENT_SUPPLIED, :PSX_DRILL, :PSX_FOLD_GLUE, :PSX_CUT, :PSX_COLLATE, :PSX_STITCHING, :PSX_WRAPPING, :PSX_TABS, :PSX_SPECIAL_DIECUT, :PSX_SPECIAL_FOIL, :PSX_SPECIAL_LAM, :PSX_SPECIAL_PRESSCHECK, :PSX_SPECIAL_SPOTUV, :PSX_SPECIAL_BIND, :PSX_SPECIAL_GLUE, :PSX_SPECIAL_OTHER, :PSX_SPECIAL_NOTES, :PSX_COLOR1_PROCESS, :PSX_COLOR2_PROCESS, :PSX_COVR1_PROCESS, :PSX_COVR2_PROCESS, :PSX_COLOR1_PMS, :PSX_COLOR2_PMS, :PSX_COVR1_PMS, :PSX_COVR2_PMS, :PSX_COLOR1_METAL, :PSX_COLOR2_METAL, :PSX_COVR1_METAL, :PSX_COVR2_METAL, :PSX_SIDE1_COATING, :PSX_SIDE2_COATING, :PSX_SPECIAL_OPTION, :PSX_DEL_DATE, :PSX_DELIVERY, :PSX_DELIVER1_TO1, :PSX_DELIVER1_TO2, :PSX_DELIVER1_TO3, :PSX_DELIVER1_TO4, :PSX_DELIVER1_QTY, :PSX_DELIVER2_TO1, :PSX_DELIVER2_TO2, :PSX_DELIVER2_TO3, :PSX_DELIVER2_TO4, :PSX_DELIVER2_QTY, :PSX_DELIVER3_TO1, :PSX_DELIVER3_TO2, :PSX_DELIVER3_TO3, :PSX_DELIVER3_TO4, :PSX_DELIVER3_QTY, :PSX_DEL_INSTRUCTIONS, :PSX_SPEC_INSTRUCTIONS, :PSX_INV_INSTRUCTIONS, :PSX_VENDOR1, :PSX_VENDOR2, :PSX_VENDOR3, :PSX_BID1_1, :PSX_BID1_2, :PSX_BID1_3, :PSX_BID1_4, :PSX_BID2_1, :PSX_BID2_2, :PSX_BID2_3, :PSX_BID2_4, :PSX_BID3_1, :PSX_BID3_2, :PSX_BID3_3, :PSX_BID3_4, :PSX_BID1_AMT, :PSX_BID2_AMT, :PSX_BID3_AMT, :PSX_BID4_AMT, :PSX_BID1_NOTES, :PSX_BID2_NOTES, :PSX_BID3_NOTES, :PSX_BID_WINNER, :PSX_DATE_AWARDED, :PSX_AWARDED_BY, :PSX_TAXABLE, :PSX_PROD_CONTACT_PH, :PSX_PROD_CONTACT_EMAIL, :PSX_TASK, :PSX_NEED_QUOTE_BY, :PSX_DRILL_OTHER, :PSX_ADDED_BY, :PSX_ADDED_WHEN, :PSX_EDITED_BY, :PSX_EDITED_WHEN
  json.url print_spec_url(print_spec, format: :json)
end

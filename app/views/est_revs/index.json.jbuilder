json.array!(@est_revs) do |est_rev|
  json.extract! est_rev, :id, :primaryKey, :RV_JOB_NUM, :RV_TASK, :RV_EST1, :RV_EST2, :RV_EST3, :RV_NAME, :RV_GROUP, :RV_SORT, :RV_FINAL, :RV_REVISION, :RV_EST_HEAD1, :RV_EST_HEAD2, :RV_EST_HEAD3, :RV_EST_HRS1, :RV_EST_HRS2, :RV_EST_HRS3, :RV_BUDGET, :RV_REVISED_BY, :RV_REVISION_DATE, :RV_REVISION_NOTES, :RV_REASON, :RV_REV_OKD_BY, :RV_REV_OKD_DATE, :RV_ADDED_BY, :RV_ADDED_WHEN, :RV_EDITED_BY, :RV_EDITED_WHEN
  json.url est_rev_url(est_rev, format: :json)
end

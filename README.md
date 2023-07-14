# dbt_learning_sn
personal dbt learning

# read data from meta rule table
dbt run --select meta_rule_ctrl

# create staging tables from raw tables
dbt run --select stg_src1_billing_history_tbl
dbt run --select stg_src1_billing_history

# perform the dq checks mentioned in the meta rule table
dbt test --select stg_src1_billing_history_tbl
dbt test --select stg_src1_billing_history

# update the dq flag based on dq checks
dbt run --select not_nulls_dq_update_src1_bill_hist_tbl
dbt run --select not_nulls_dq_update_src1_bill_hist
dbt run --select unique_dq_update_src1_bill_hist_tbl
dbt run --select unique_dq_update_src1_bill_hist

select *
from
    {{ source("dq", "unique_dq_check_src1_bill_hist_tbl") }}

    {{
        config(
            post_hook=update_dq_flag_tbl(
                "unique_dq_update_src1_bill_hist_tbl", "stg_src1_billing_history_tbl", "billing_history_tbl_id"
            )
        )
    }}

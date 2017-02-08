export unload_query="UNLOAD ('SELECT offer_nbr,offer_type, offer_type_desc, offer_sub_type, offer_sub_type_desc, offer_ctgry, offer_ctgry_desc, offer_status, offer_status_desc, shelf_talker_type, shelf_talker_desc, division_nbr, division_name, offer_desc, CAST(offer_start_date as VARCHAR(10) ) AS offer_start_date, CAST(offer_end_date as VARCHAR(10) ) AS offer_end_date, audience_type, audience_type_desc, alternate_offer_nbr, lead_offer_nbr, mon_start_time, mon_end_time, tue_start_time, tue_end_time, wed_start_time, wed_end_time, thu_start_time, thu_end_time, fri_start_time, fri_end_time, sat_start_time, sat_end_time, sun_start_time, sun_end_time, shelftalker_text_1, shelftalker_text_2, shelftalker_text_3, shelftalker_text_4, alternate_src_sys_name, src_sys_name, dscnt_allcotion_sales_scope, dscnt_allcotion_sales_scope_desc, aply_prtl_rwd_opt_flag, rdmp_limit_type, rdmp_limit_type_desc, rdmp_limit_val, offer_fund_code, CAST(eff_date as VARCHAR(10) ) AS eff_date, row_status_ind, to_char(last_update_date, ''YYYY-MM-DD HH24:MI:SS'') AS last_update_date, to_char(insert_date, ''YYYY-MM-DD HH24:MI:SS'') AS insert_date FROM $SCHEMA.$TABLE_N Where alternate_src_sys_name <> ''CDA'' ' ) TO 's3://data-${S3_Source}-outbound/outbound/QUANTIUM/MASTER_DATA/OFFER/OFFER_20161214_${TS_Date}_' WITH CREDENTIALS 'aws_access_key_id=${AWS_ACCESS_KEY_ID};aws_secret_access_key=${AWS_SECRET_ACCESS_KEY}' DELIMITER '|' ALLOWOVERWRITE NULL AS '' PARALLEL OFF GZIP manifest;"

/* Unload loyalty card details Data */

UNLOAD
('
SELECT 	 lylty_card_nbr
       , crn
       , prmry_crn
       , prmry_lylty_card_nbr
       , lylty_card_rgstr_flag
       , lylty_card_status
       , lylty_card_status_desc
       , lylty_card_holder_type
       , lylty_card_holder_type_desc
       , card_rgstr_chnl
       , lylty_card_rgstr_chnl_desc
       , lylty_cust_type
       , lylty_cust_type_desc
       , CAST(lylty_card_actv_date as VARCHAR(10) ) AS lylty_card_actv_date
       , lylty_card_actv_time
       , CAST(lylty_card_rgstr_date as VARCHAR(10) ) AS lylty_card_rgstr_date
       , lylty_card_rgstr_time
       , CAST(lylty_card_enrolment_date as VARCHAR(10) ) AS lylty_card_enrolment_date
       , lylty_card_enrolment_time
       , lylty_mailng_addr_postcode
       , lylty_mailng_addr_state
       , lylty_mailng_addr_cntry
       , lylty_mailng_addr_undel_flag
       , lylty_mail_addr_undel_rsn_desc
       , lylty_personalised_card_flag
       , CAST(eff_date as VARCHAR(10) ) AS eff_date
       , row_status_ind
       , to_char(last_update_date, ''YYYY-MM-DD HH24:MI:SS'') AS last_update_date
       , to_char(insert_date, ''YYYY-MM-DD HH24:MI:SS'') AS insert_date

 FROM loyalty.lylty_card_detail

'   )

TO 's3://data-test-outbound/outbound/QUANTIUM/MASTER_DATA/LYLTY_CARD_DETAIL/LYLTY_CARD_DETAIL_20161214_' 
WITH CREDENTIALS 'aws_access_key_id=AKIAIVYRS4CT2LRLZD4Q;aws_secret_access_key=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' 
DELIMITER '|' ALLOWOVERWRITE NULL AS '' PARALLEL ON GZIP manifest
;

/* 
TO 's3://data-${S3_Source}-outbound/outbound/QUANTIUM/MASTER_DATA/LYLTY_CARD_DETAIL/LYLTY_CARD_DETAIL_${TS_Date}_' 
WITH CREDENTIALS 'aws_access_key_id=${AWS_ACCESS_KEY_ID};aws_secret_access_key=${AWS_SECRET_ACCESS_KEY}' 
DELIMITER '|' ALLOWOVERWRITE NULL AS '' PARALLEL ON GZIP manifest
;
*/
					

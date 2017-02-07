UNLOAD('SELECT       CAST( CLNDR_DATE   AS  VARCHAR(10) ) AS CLNDR_DATE   ,  LITRL_DATE   ,  DOW   ,  DAY_OF_MT   ,  FY   ,  CAST( FY_START_DATE   AS  VARCHAR(10) ) AS FY_START_DATE   ,  CAST( FY_END_DATE   AS  VARCHAR(10) ) AS FY_END_DATE   ,  HOFY   ,  CAST( FH_START_DATE   AS  VARCHAR(10) ) AS FH_START_DATE   ,  CAST( FH_END_DATE   AS  VARCHAR(10) ) AS FH_END_DATE   ,  QOFY   ,  CAST( FQ_START_DATE   AS  VARCHAR(10) ) AS FQ_START_DATE   ,  CAST( FQ_END_DATE   AS  VARCHAR(10) ) AS FQ_END_DATE   ,  POFY   ,  CAST( FP_START_DATE   AS  VARCHAR(10) ) AS FP_START_DATE   ,  CAST( FP_END_DATE   AS  VARCHAR(10) ) AS FP_END_DATE   ,  WOFY   ,  WOFP   ,  CAST( FW_START_DATE   AS  VARCHAR(10) ) AS FW_START_DATE   ,  CAST( FW_END_DATE   AS  VARCHAR(10) ) AS FW_END_DATE         , to_char(dim_load_date, ''YYYY-MM-DD HH24:MI:SS'') AS insert_date FROM loyalty.dim_date '   )TO 's3://data-${S3_Source}-outbound/outbound/QUANTIUM/MASTER_DATA/DIM_DATE/DIM_DATE_${TS_Date}_' WITH CREDENTIALS 'aws_access_key_id=${AWS_ACCESS_KEY_ID};aws_secret_access_key=${AWS_SECRET_ACCESS_KEY}' DELIMITER '|' ALLOWOVERWRITE NULL AS '' PARALLEL OFF GZIP manifest;

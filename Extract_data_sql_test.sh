#!/bin/bash
export unload_location_query="UNLOAD ('SELECT          CAST( TO_CHAR(store_nbr , ''FM0000'' ) AS VARCHAR(18)) AS store_nbr        , CAST(store_name AS VARCHAR(50)) AS store_name        , CAST( TO_CHAR(division_nbr , ''FM0000'' ) AS VARCHAR(18)) AS division_nbr        , CAST(division_name AS VARCHAR(50)) AS division_name       , CAST(status_code AS VARCHAR(5)) AS status_code       , CAST(status_desc AS VARCHAR(10)) AS status_desc       , CAST(area_code AS VARCHAR(20)) AS area_code       , CAST(area_name AS VARCHAR(40)) AS area_name       , CAST(grouparea_code AS VARCHAR(20)) AS grouparea_code       , CAST(grouparea_name AS VARCHAR(50)) AS grouparea_name       , CAST(zone_code AS VARCHAR(20)) AS zone_code       , CAST(zone_name AS VARCHAR(50)) AS zone_name       , CAST(region_code AS VARCHAR(20)) AS region_code       , CAST(region_name AS VARCHAR(50)) AS region_name       , CAST(cmpny_nbr AS VARCHAR(20)) AS cmpny_nbr       , CAST(cmpny_name AS VARCHAR(50)) AS cmpny_name       , CAST(district_code AS VARCHAR(30)) AS district_code       , CAST(district_name AS VARCHAR(50)) AS district_name       , CAST(open_date AS VARCHAR(10)) AS open_date       , CAST(close_date AS VARCHAR(10)) AS close_date       , CAST(liquor_lcns_flag AS CHAR(1)) AS liquor_lcns_flag       , CAST(rpln_flag AS CHAR(1)) AS rpln_flag       , CAST(online_flag AS CHAR(1)) AS online_flag       , CAST(mgr_name AS VARCHAR(50)) AS mgr_name       , CAST(street_nbr AS VARCHAR(20)) AS street_nbr       , CAST(street_name AS VARCHAR(120)) AS street_name       , CAST(street_type AS VARCHAR(20)) AS street_type       , CAST(postcode AS VARCHAR(10)) AS postcode       , CAST(locality AS VARCHAR(50)) AS locality       , CAST(state AS VARCHAR(6)) AS state       , CAST(cntry AS VARCHAR(5)) AS cntry       , CAST( TO_CHAR(lttd , ''FM990D999999'' ) AS VARCHAR(12)) AS lttd       , CAST( TO_CHAR(lngtd , ''FM990D999999'' ) AS VARCHAR(12)) AS lngtd       , CAST(phone AS VARCHAR(25)) AS phone       , CAST(fax AS VARCHAR(25)) AS fax       , CAST(email AS VARCHAR(60)) AS email       , CAST(building_name AS VARCHAR(120)) AS building_name       , CAST(monday_open_time AS VARCHAR(6)) AS monday_open_time       , CAST(monday_close_time AS VARCHAR(6)) AS monday_close_time       , CAST(tuesday_open_time AS VARCHAR(6)) AS tuesday_open_time       , CAST(tuesday_close_time AS VARCHAR(6)) AS tuesday_close_time       , CAST(wednesday_open_time AS VARCHAR(6)) AS wednesday_open_time       , CAST(wednesday_close_time AS VARCHAR(6)) AS wednesday_close_time       , CAST(thursday_open_time AS VARCHAR(6)) AS thursday_open_time       , CAST(thursday_close_time AS VARCHAR(6)) AS thursday_close_time       , CAST(friday_open_time AS VARCHAR(6)) AS friday_open_time       , CAST(friday_close_time AS VARCHAR(6)) AS friday_close_time       , CAST(saturday_open_time AS VARCHAR(6)) AS saturday_open_time       , CAST(saturday_close_time AS VARCHAR(6)) AS saturday_close_time       , CAST(sunday_open_time AS VARCHAR(6)) AS sunday_open_time       , CAST(sunday_close_time AS VARCHAR(6)) AS sunday_close_time       , CAST(eff_date AS VARCHAR(10)) AS eff_date       , CAST(row_status_ind AS CHAR(1)) AS row_status_ind       , to_char(last_update_date, ''YYYY-MM-DD HH24:MI:SS'') AS last_update_date       , to_char(insert_date, ''YYYY-MM-DD HH24:MI:SS'') AS insert_date
 FROM $SCHEMA.$tablename  where division_nbr <> 2040')
TO 's3://data-${S3_Source}-outbound/outbound/QUANTIUM/MASTER_DATA/LOCATION/LOCATION_${TS_Date}_' WITH CREDENTIALS 'aws_access_key_id=${AWS_ACCESS_KEY_ID};aws_secret_access_key=${AWS_SECRET_ACCESS_KEY}'  DELIMITER '|' ALLOWOVERWRITE NULL AS '' PARALLEL OFF GZIP manifest;" 

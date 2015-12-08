SELECT substr(date_rpt,1,2),  count(*) 
  FROM lapd_crime_data
  GROUP BY substr(date_rpt,1,2);

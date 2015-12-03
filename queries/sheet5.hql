select area_name,count(*) from LAPD_CRIME_DATA join location_values on 
lapd_crime_data.dr_no=location_values.dr_no where location_values.distance  between 0 and 5
 group by area_name;

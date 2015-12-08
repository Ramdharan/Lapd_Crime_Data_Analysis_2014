select lapd_crime_data.time_occ,count(*) as crimes
from (

  select case  
    when time_occ between 0 and 200 then '00:00-02:00'
    when time_occ between 200 and 400 then '02:00-04:00'
	when time_occ between 400 and 600 then '04:00-06:00'
	when time_occ between 600 and 800 then '06:00-08:00'
	when time_occ between 800 and 1000 then '08:00-10:00'
	when time_occ between 1000 and 1200 then '10:00-12:00'
	when time_occ between 1200 and 1400 then '12:00-14:00'
	when time_occ between 1400 and 1600 then '14:00-16:00'
	when time_occ between 1600 and 1800 then '16:00-18:00'
	 
	 when time_occ between 1800 and 2000 then '18:00-20:00'
	when time_occ between 2000 and 2200 then '20:00-22:00'
	when time_occ between 2200 and 2400 then '22:00-24:00'
	
   else 'others'
	end as time_occ
  from lapd_crime_data
  
) lapd_crime_data
group by lapd_crime_data.time_occ;

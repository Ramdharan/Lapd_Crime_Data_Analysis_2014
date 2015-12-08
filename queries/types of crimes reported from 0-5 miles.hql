select lapd_crime_data.crm_cd_desc,count(*) as crimes
from (

  select case  
    when crm_cd_desc rlike 'THEFT' or crm_cd_desc rlike 'ROBBERY' or crm_cd_desc rlike 'STOLEN' then 'THEFT'
    when crm_cd_desc rlike 'BURG' then 'BURGALARY'
	when crm_cd_desc rlike  'VANDALISM' then 'VANDALISM'
	when crm_cd_desc rlike 'ASSAULT' then 'ASSAULT'
	when crm_cd_desc rlike 'CRIMINAL' then 'CRIMINAL'
	when crm_cd_desc rlike 'TRAFFIC' then 'TRAFFIC'
	else 'others'
	end as crm_cd_desc
  from lapd_crime_data
  join location_values on lapd_crime_data.dr_no=location_values.dr_no where location_values.distance  between 0 and 5) lapd_crime_data
group by lapd_crime_data.crm_cd_desc;

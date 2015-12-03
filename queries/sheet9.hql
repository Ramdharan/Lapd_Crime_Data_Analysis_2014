select lapd_crime_data.crm_cd_desc as score, count(*) as occurences
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
  from lapd_crime_data) lapd_crime_data
group by lapd_crime_data.crm_cd_desc 
order by occurences;

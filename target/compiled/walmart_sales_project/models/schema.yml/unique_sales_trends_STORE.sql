
    
    

select
    STORE as unique_field,
    count(*) as n_records

from WALMART_SALES_DB.PUBLIC.sales_trends
where STORE is not null
group by STORE
having count(*) > 1



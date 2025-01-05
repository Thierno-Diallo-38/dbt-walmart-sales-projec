select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select MONTH
from WALMART_SALES_DB.PUBLIC.sales_trends
where MONTH is null



      
    ) dbt_internal_test
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select TOTAL_MONTHLY_SALES
from WALMART_SALES_DB.PUBLIC.sales_trends
where TOTAL_MONTHLY_SALES is null



      
    ) dbt_internal_test
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select TOTAL_WEEKLY_SALES
from WALMART_SALES_DB.PUBLIC.cleaned_sales
where TOTAL_WEEKLY_SALES is null



      
    ) dbt_internal_test
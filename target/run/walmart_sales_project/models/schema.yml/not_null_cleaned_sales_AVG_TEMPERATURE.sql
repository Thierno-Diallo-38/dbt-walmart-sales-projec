select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select AVG_TEMPERATURE
from WALMART_SALES_DB.PUBLIC.cleaned_sales
where AVG_TEMPERATURE is null



      
    ) dbt_internal_test
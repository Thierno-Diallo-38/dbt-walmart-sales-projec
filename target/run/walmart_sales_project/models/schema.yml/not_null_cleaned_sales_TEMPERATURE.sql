select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select TEMPERATURE
from WALMART_SALES_DB.PUBLIC.cleaned_sales
where TEMPERATURE is null



      
    ) dbt_internal_test
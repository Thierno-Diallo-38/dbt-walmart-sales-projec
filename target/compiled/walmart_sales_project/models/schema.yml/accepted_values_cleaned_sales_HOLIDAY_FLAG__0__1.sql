
    
    

with all_values as (

    select
        HOLIDAY_FLAG as value_field,
        count(*) as n_records

    from WALMART_SALES_DB.PUBLIC.cleaned_sales
    group by HOLIDAY_FLAG

)

select *
from all_values
where value_field not in (
    '0','1'
)



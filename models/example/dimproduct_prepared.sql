{{config(materialized = 'table')}}

with source_data as (

    select *, RANK() OVER (PARTITION BY CATEGORY ORDER BY LISTPRICE DESC) from dimproduct
    

)
select * from source_data
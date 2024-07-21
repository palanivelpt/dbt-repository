{{

    config(MATERIALIZED='table')
}}
select * from {{ref('orders_snapshot')}}
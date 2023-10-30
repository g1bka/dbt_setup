with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        concat(orders_id, " - " ,pdt_id) as sales_id,
        CAST(date_date as date) date_date,
        CAST(orders_id as float64) order_id,
        CAST(pdt_id as float64) products_id,
        CAST(revenue as float64) revenue,
        CAST(quantity as int64) quantity

    from source

)

select * from renamed

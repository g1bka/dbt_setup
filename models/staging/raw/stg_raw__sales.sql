with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        CAST(concat(orders_id, " - " ,pdt_id) as string)as sales_id,
        CAST(date_date as date) date_date,
        CAST(orders_id as string) order_id,
        CAST(pdt_id as string) products_id,
        CAST(revenue as INT64) revenue,
        CAST(quantity as INT64) quantity

    from source

)

select * from renamed

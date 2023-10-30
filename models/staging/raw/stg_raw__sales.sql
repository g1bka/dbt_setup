with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        concat(orders_id, " - " ,pdt_id) as sales_id,
        date_date,
        orders_id,
        pdt_id as products_id,
        CAST(revenue as float64) revenue,
        CAST(quantity as int64) as quantity

    from source

)

select * from renamed

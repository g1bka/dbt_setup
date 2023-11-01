with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        CAST(date_date AS DATE) date_date,
        CAST(orders_id as INT) orders_id,
        CAST(pdt_id AS STRING) products_id,
        CAST(revenue as FLOAT64) revenue,
        CASt(quantity as FLOAT64) quantity

    from source

)

select * from renamed

with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        CAST(products_id as STRING) products_id,
        CAST(purchse_price AS FLOAT64) purchase_price

    from source

)

select * from renamed

with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        CAST(products_id as float64) products_id,
        CAST(purchse_price as float64) purchase_price

    from source

)

select * from renamed

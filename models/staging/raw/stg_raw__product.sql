with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        CAST(products_id as string) products_id,
        CAST(purchse_price as INT64) purchase_price

    from source

)

select * from renamed

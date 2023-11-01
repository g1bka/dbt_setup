with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        CAST(shipping_fee as FLOAT64) shipping_fee,
        logcost,
        CAST(ship_cost as FLOAT64) ship_cost

    from source

)

select * from renamed

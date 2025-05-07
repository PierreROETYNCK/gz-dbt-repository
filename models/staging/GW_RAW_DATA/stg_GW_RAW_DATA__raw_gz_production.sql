with 

source as (

    select * from {{ source('GW_RAW_DATA', 'raw_gz_production') }}

),

renamed as (

    select
        products_id,
        purchse_price

    from source

)

select * from renamed

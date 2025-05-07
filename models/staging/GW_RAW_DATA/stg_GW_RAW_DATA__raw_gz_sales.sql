with 

source as (

    select * from {{ source('GW_RAW_DATA', 'raw_gz_sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id,
        revenue,
        quantity

    from source

)

select * from renamed

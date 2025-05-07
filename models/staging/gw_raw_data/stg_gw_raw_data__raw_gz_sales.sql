with 

source as (

    select * from {{ source('gw_raw_data', 'raw_gz_sales') }}

),

renamed as (

    select*

    from source

)

select * from renamed

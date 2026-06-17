with bergues as (

    select
        'bergues' as station_key,
        *
    from {{ ref('stg_infoclimat__bergues') }}

),

hazebrouck as (

    select
        'hazebrouck' as station_key,
        *
    from {{ ref('stg_infoclimat__hazebrouck') }}

),

unioned as (

    select * from bergues
    union all
    select * from hazebrouck

)

select * from unioned
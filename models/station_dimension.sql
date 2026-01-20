WITH BIKE as(
    select
    start_station_id as station_id,
    start_station_name as station_name,
    start_latitude as station_lat,
    start_longitude as station_lng
    
    from {{ source('demo', 'bike') }}
)

select
*
from BIKE
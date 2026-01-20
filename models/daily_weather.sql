WITH daily_weather as(
    select
    *
    from {{ source('demo', 'drivers_silver') }}
    ORDER BY dob desc
    limit 10
)

select
*
from daily_weather
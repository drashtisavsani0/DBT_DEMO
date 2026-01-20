WITH CTC AS(
    select
    t.*,
    w.*
    from {{ ref('trip_facts') }} t
    left join {{ ref('daily_weather') }} w
    on t.TRIP_DATE = w.DOB
)

select
*
from CTC
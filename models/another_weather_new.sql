-- WITH daily_weather as(
--     select
--     *
--     from {{ source('demo', 'weathertable_new') }}

--     limit 10
-- )

-- select
-- *
-- from daily_weather


WITH raw AS (
    SELECT
        DATA
    FROM {{ source('demo', 'weathertable_new') }}
)

SELECT
    DATA:code::STRING              AS CODE,
    DATA:dob::DATE                AS DOB,
    DATA:driverId::INT             AS DRIVERID,
    DATA:driverRef::STRING         AS DRIVERREF,
    DATA:name.forename::STRING     AS FORENAME,
    DATA:name.surname::STRING      AS SURNAME,
    DATA:nationality::STRING       AS NATIONALITY,
    NULLIF(DATA:number::STRING, '\\N')::INT AS NUMBER,
    DATA:url::STRING               AS URL
FROM raw

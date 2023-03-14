{{
    config(
        materialized='table'
    )
}}

SELECT company, trip_total
FROM {{ ref ('chicago_taxi_trips') }}
WHERE company IS NOT NULL
ORDER BY trip_total DESC
{{
    config(
        materialized='table'
    )
}}

SELECT company, payment_type, COUNT(payment_type) AS count_of_payment_type
FROM {{ ref ('chicago_taxi_trips') }} 
WHERE company IS NOT NULL
GROUP BY company, payment_type
ORDER BY company ASC
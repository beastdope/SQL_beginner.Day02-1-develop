WITH date_range AS (
    SELECT
        generate_series(
            '2022-01-01' :: date,
            '2022-01-10' :: date,
            '1 day'
        ) :: date AS missing_date
)
SELECT
    date_range.missing_date
FROM
    date_range
    LEFT JOIN person_visits pv1 ON date_range.missing_date = pv1.visit_date
    AND pv1.person_id = 1
    LEFT JOIN person_visits pv2 ON date_range.missing_date = pv2.visit_date
    AND pv2.person_id = 2
WHERE
    pv1.visit_date IS NULL
    AND pv2.visit_date IS NULL
ORDER BY
    date_range.missing_date ASC;
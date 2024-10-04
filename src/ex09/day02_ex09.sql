SELECT
    name
FROM
    person FULL
    JOIN person_order ON person.id = person_order.person_id
WHERE
    person.gender = 'female'
    AND person_order.menu_id = 1
    OR person_order.menu_id = 2;
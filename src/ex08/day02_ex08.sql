SELECT
    name
FROM
    person
    JOIN person_order po ON person.id = po.person_id
    JOIN menu ON menu.id = po.menu_id
WHERE
    (
        person.address = 'Moscow'
        OR person.address = 'Samara'
    )
    AND (
        menu.pizza_name = 'pepperoni pizza'
        OR menu.pizza_name = 'mushroom pizza'
    )
    AND person.gender = 'male'
ORDER BY
    name DESC;
SELECT
    menu.pizza_name,
    pizzeria.name
FROM
    menu FULL
    JOIN person_order po ON menu.id = po.menu_id FULL
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE
    po.person_id = 4
    OR po.person_id = 1
ORDER BY
    pizza_name,
    pizzeria.name;
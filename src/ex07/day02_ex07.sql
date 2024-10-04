SELECT
    pizzeria.name
FROM
    pizzeria FULL
    JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
WHERE
    person_visits.person_id = 9
    AND person_visits.visit_date = '2022-01-08';

--SELECT pizzeria.name FROM pizzeria JOIN menu ON menu.pizzeria_id = pizzeria.id WHERE menu.id = 3 OR menu.id = 4 OR menu.id = 5 AND menu.price < 800;
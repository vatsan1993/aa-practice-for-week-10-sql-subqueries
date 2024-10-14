-- Write a JOIN query to get the list of toys belonging to Garfield.
.headers ON 

select toys.name
from toys
    join cats on toys.cat_id = cats.id
where
    cats.name = 'Garfield';

-- Rewrite the JOIN query using a subquery instead.

select toys.name
from toys
where
    toys.cat_id = (
        select id
        from cats
        where
            name = 'Garfield'
    );

-- Give all cats born before the year 2013 a new toy named "Cat Bed" using a subquery.
.headers ON 

update toys
set
    name = 'Cat Bed'
where
    toys.cat_id in (
        select id
        from cats
        where
            birth_year < 2013
    );
-- Verify the insertion created a new toy named "Cat Bed" for the cats "Tiger", "Oscar", and "Garfield".
select
    cats.name as cat_name,
    toys.name as toy_name,
    birth_year
from cats
    join toys on cats.id = toys.cat_id;

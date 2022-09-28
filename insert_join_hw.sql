use sakila;

select * from  film;
describe film;

insert film (film_id, title, language_id,  rental_duration, rental_rate,  replacement_cost,  last_update)
values (1001, 'Briliantovaya ruka', 7, 3, 4.99, 19.99, '2006-02-15 05:03:42');



select * from  film_actor;
describe film_actor;

insert film_actor (actor_id, film_id, last_update)
values (205, 1001, '2006-02-15 05:02:19'),
       (206, 1001, '2006-02-15 05:02:19');
       

       
select * from  language;
describe language;

insert language (language_id, name, last_update)
values (7, Russian, '2006-02-15 05:02:19');



select  concat(first_name, " ", last_name) as name, f.title, fa.film_id
from  actor a 
join film_actor fa
on a.actor_id = fa.actor_id
join film f 
on f.film_id = fa.film_id
WHERE f.film_id LIKE 1001;


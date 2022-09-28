use sakila;
select * from  customer;
describe customer;

insert customer(store_id, first_name, last_name, address_id, email)
values (2, 'MEGA', 'BOSS', 604, 'boss@gmail.com'),
       (2, 'VLAD', 'KOROLEV', 605, 'korolev@gmail.com');
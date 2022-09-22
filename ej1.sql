CREATE TABLE "" (
  "id" uuid PRIMARY KEY,
  "purchase" varchar NOT NULL,
  "products" int NOT NULL,
  "total" float,
  "is_active" bool DEFAULT true
);
--Crear informacion
insert into excercise 
(
id, 
purchase,
products,
total,
is_active
) values(
'50892193-bfc9-4d3c-8bf2-1565ffec4c88',
'Home appliances',
'juicer, washing, machine, fridge, microwave',
'2500',
true
), 
(
'a0ca4b2d-03a3-45b5-a42e-d1b2b097da95',
'fruits and vegetables',
'apple, pear, grapes, lemon, carrot, tomato, onion',
'80',
true),
(
'03fbfb09-1f39-4a1e-9f49-3a2aed2b0b04',
'clothing',
'shirt, pants, shorts, boxer, stocking, flannel',
'300',
true); 

--leer informacion
select id, purchase, products from excercise;
select id,purchase, products from excercise where total< 1000 ;
select id,purchase, products from excercise where total> 1000 ;
--eliminar 
delete from excercise;
delete from excercise where total< 1000 ;
delete from excercise where total> 1000 ;
drop table excercise;

--actualizar

alter table excercise add column paid_out bool;

update excercise 
set paid_out=true;

update excercise 
set paid_out=false 
where total >1000 ;
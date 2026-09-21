select *
from vendedor
where provincia='ALICANTE'

select *
from pieza
where preciovent>=50

select * 
from preciosum
where numvend=1 or numvend=3 and descuento>3

select *
from vendedor
where provincia='ALICANTE' or provincia='CASTELLÓN' or provincia='VALENCIA'

select *
from vendedor
where telefono is NULL

select *
from vendedor
where telefono is not NULL

-- Ejercicio 1
select *
from pieza

-- Ejercicio 2
select numpieza
from pieza 
where preciovent<1000

-- Ejercicio 3
select numpieza, nompieza, preciovent
from pieza 
where preciovent>10 or preciovent<1 
order by preciovent asc

-- Ejercicio 4
select numpieza, descuento
from preciosum where descuento is not NULL
order by descuento desc

-- Ejercicio 5 
select numvend
from vendedor where numvend<6

-- Ejercicio 6
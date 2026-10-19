-- Ejercicio 1
select numpieza
from pieza

-- Ejercicio 2
select nompieza
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
select nomvend
from vendedor 
where numvend<6

-- Ejercicio 6
select distinct numvend
from vendedor 
where numvend<6

-- Ejercicio 7
select numvend, nomvend
from vendedor
where numvend<6

-- Ejercicio 8
select distinct numvend 
from preciosum

-- Ejercicio 9
select nomvend
from vendedor 
where provincia = 'ALICANTE'

-- Ejercicio 10
select nomvend, nombrecomer
from vendedor
where provincia='ALICANTE' or provincia='CASTELLÓN' or provincia='VALENCIA'

-- Ejercicio 11
select numvend, diassum
from preciosum
where numpieza = 'P-0001-33'

-- Ejercicio 12
select distinct numpieza, preciocompra
from linped
order by preciocompra desc

-- Ejercicio 13
select numpedido, numvend
from pedido
where fecha = '2019-10-15'

-- Ejercicio 14
select distinct numpieza
from preciosum	
where descuento is NOT NULL

-- Ejercicio 15 
select numpieza, numvend, preciounit
from preciosum 
order by numvend asc, numpieza asc
select numpedido, nomvend, fecha
from pedido p, vendedor v
where p.numvend = v.numvend

select nompieza, nomvend, preciounit, descuento
from preciosum ps, vendedor v, pieza p
where ps.numvend = v.numvend and ps.numpieza = p.numpieza 
and (ps.numvend = 1 or ps.numvend = 2)
order by nomvend

-- Ejercicio 1 
select numpieza, provincia
from preciosum ps, vendedor v
order by numpieza

-- Ejercicio 2 
select distinct numpieza, provincia
from preciosum ps, vendedor v
order by numpieza

-- Ejercicio 3
select distinct numpieza, nompieza
from pieza 
order by numpieza

-- Ejercicio 4
select nomvend, numvend
from vendedor
where provincia = 'VALENCIA'

-- Ejercicio 5
select p.numvend, nomvend, numpedido
from vendedor v, pedido p
where v.numvend = p.numvend
and provincia = 'VALENCIA'

-- Ejercicio 6 
select numlinea, preciocompra
from linped
where numpedido = 1

-- Ejercicio 7 
select numpieza
from inventario
where fecharecuento = '15/10/2019'

-- Ejercicio 8 
select nompieza, p.numpieza, fecharecep
from pieza p, linped l
where fecharecep = '1/05/2019'

-- Ejercicio 9 
select numpieza, preciounit
from preciosum
where numvend = 100 and numpieza = 'A-1001-L'

-- Ejerccio 10
select nomvend
from preciosum, vendedor
where numpieza = 'A-1001-L'

-- Ejercicio 11
select nomvend, telefono, ciudad, preciounit
from vendedor, preciosum
where preciounit > 100 
order by preciounit ASC

-- Ejercicio 12 
select nomvend, descuento
from vendedor v, preciosum p
where v.numvend = p.numvend and descuento >= 10

-- Ejercicio 13
select 
from 
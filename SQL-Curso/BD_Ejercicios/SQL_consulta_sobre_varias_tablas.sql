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
select numpedido
from pedido
where numvend = 1

-- Ejercicio 14
select nomvend
from vendedor
order by nomvend DESC

-- Ejercicio 15
select nomvend
from vendedor
order by nomvend ASC

-- Ejercicio 16
select numpieza, numvend
from preciosum
where numvend is NOT NULL

-- Ejercicio 17
select ps.numpieza, p.nompieza, numvend
from preciosum ps, pieza p
where ps.numpieza = p.numpieza
and (numvend = 2 or numvend = 4) 

-- Ejercicio 18
select distinct nompieza
from preciosum ps, pieza p, vendedor v
where p.numpieza = ps.numpieza 
and nombrecomer = 'HARW S.A.'

-- Ejercicio 19
select distinct p.numpieza, nompieza, preciovent
from pieza p, pedido pd, linped l
where pd.numpedido = l.numpedido
and p.numpieza = l.numpieza
and numvend = 1

-- Ejercicio 20 
select v.numvend, nomvend, l.numpieza
from vendedor v, linped l, preciosum ps
where ps.numvend = v.numvend
and ps.numpieza = l.numpieza
and preciocompra > preciounit
order by numvend ASC

-- Ejercicio 21
select ps.numpieza, v.numvend, nomvend, preciovent, descuento
from vendedor v, pieza p, preciosum ps
where p.numpieza = ps.numpieza
and v.numvend = ps.numvend
and (preciovent > 50 or descuento > 10)
order by numvend ASC

-- Ejercicio 22
select nomvend, nompieza
from pedido pd, vendedor v, linped l, pieza p
where pd.numvend = v.numvend 
and pd.numpedido = l.numpedido
and l.numpieza = p.numpieza
and fecha != '22/10/2019'

-- Ejercicio 23
select preciocompra, v.numvend, nomvend
from linped l, pedido pd, vendedor v
where pd.numpedido = l.numpedido
and v.numvend = pd.numvend 
and numpieza IN ('DD-0001-210', 'FD-0001-144')
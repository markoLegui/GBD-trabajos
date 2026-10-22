-- 1
select numpieza
from inventario
where fecharecuento = '15/10/2019'

-- 2
select numpieza, fecharecuento
from inventario
where fecharecuento between '1/10/2019' 
and '31/10/2019'

-- 3
select numpedido, fecha
from pedido
where datepart (month, fecha) between 6 and 12
and DATEPART(year, fecha) = 2022

-- 4 
select nomvend, fecha
from vendedor v, pedido pd
where v.numvend = pd.numvend
and DATEPART (month, fecha) = 5
and DATEPART (day, fecha) between 1 and 15

-- 5
select distinct pd.numvend, nomvend, datepart (month, fecha) mes
from vendedor v, pedido pd, linped l, pieza p
where pd.numvend = v.numvend
and pd.numpedido = l.numpedido
and l.numpieza = p.numpieza
and nompieza like 'DISCO DURO%'

-- 6
select distinct DATEPART (year, fecharecuento) año
from inventario

-- 7 
select l.numpieza, nompieza
from linped l, pieza p
where l.numpieza = p.numpieza
and DATEPART (day, fecharecep) = 10

-- 8 
select distinct l.numpieza, nompieza
from pedido pd, pieza p, preciosum ps, linped l
where ps.numpieza = p.numpieza
and ps.numvend = pd.numvend
and DATEPART (year, fecharecep) = 2022
and l.preciocompra > ps.preciounit

-- 9
select distinct l.numpieza, nompieza, fecharecep, cantrecibida
from pieza p, pedido pd, linped l
where p.numpieza = l.numpieza
and DATEPART (year, fecharecep) = 2022
and preciovent between 50 and 100
-- 1
select numpieza
from inventario
where fecharecuento = '15/10/2019'

-- 2
select numpieza, fecharecuento
from inventario
where fecharecuento = '1/10/2019' 
and fecharecuento = '31/10/2019'

-- 3
select numpedido, fecha
from pedido
where datepart (month, fecha) >= 6
and datepart (month, fecha) <= 12

-- 4 
select nomvend, fecha
from vendedor v, pedido pd
where v.numvend = pd.numvend
and DATEPART (month, fecha) = 5
and DATEPART (day, fecha) >=1
and DATEPART (day, fecha) <=15

-- 5
select pd.numvend, nomvend, datepart (month, fecha) mes
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
select pd.numpieza, nompieza
from pedido pd, pieza p, preciosum ps
where ps.numpieza = p.numpieza
and ps.numvend = pd.numvend
and DATEPART (year, fecharecep) = 2022
and (preciocompra > preciounit)
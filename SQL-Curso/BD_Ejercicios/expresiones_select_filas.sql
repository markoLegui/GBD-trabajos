-- 1

select nompieza, nomvend
from pieza p, preciosum ps, vendedor v
where p.numpieza = ps.numpieza
and ps.numvend = v.numvend
and nomvend like 'S%'

-- 2

select distinct nompieza, nomvend
from pieza p, preciosum ps, vendedor v
where p.numpieza = ps.numpieza
and ps.numvend = v.numvend
and nomvend like 'S% Mart_nez %' 
or nomvend like 'S% Mart_n %' 
and nompieza is NOT NULL

-- 3 
select nomvend
from vendedor
where provincia in ('VALENCIA', 'CASTELLÓN', 'ALICANTE')

-- 4
select nomvend
from vendedor
where nomvend like 'J%'

-- 5
select nomvend
from vendedor
where nomvend like '%z % '

-- 6
select nomvend
from vendedor
where nomvend like '% Lopez'
or nomvend like '% Lopez %'

-- 7
select nomvend
from vendedor
where nomvend like 'M_R%'

-- 8
select nomvend, numvend, provincia
from vendedor
where (nomvend like 'J%'
or nomvend like 'M%') 
and provincia in ('ALICANTE', 'VALENCIA')
and numvend >=1 and numvend <= 100

-- 9
select nomvend, v.numvend, ps.numpieza, nompieza, provincia
from vendedor v, preciosum ps, pieza p
where v.numvend = ps.numvend
and provincia in ('ALICANTE', 'VALENCIA')

-- 10
select nompieza, nomvend
from preciosum ps, vendedor v, pieza p
where p.numpieza = ps.numpieza
and ps.numvend = v.numvend
and (nomvend like '% Garc_a'
or nomvend like '% Garc_a %')

-- 11
select distinct nompieza, nomvend
from preciosum ps, vendedor v, pieza p
where p.numpieza = ps.numpieza
and ps.numvend = v.numvend
and nompieza is NOT NULL

-- 12
select nomvend
from vendedor
where telefono is NOT NULL

-- 13
select distinct nompieza, pd.numvend, descuento
from preciosum ps, pieza p, pedido pd
where ps.numpieza = p.numpieza
and ps.numvend = pd.numvend
and descuento >= 1 
and descuento <= 10
and nompieza like '%O%'
and pd.numvend >=1 
and pd.numvend <= 1000

-- 14
select nomvend
from vendedor
order by nomvend ASC

-- 15
select nomvend, nompieza
from vendedor v, preciosum ps, pieza p
where ps.numpieza = p.numpieza
and ps.numvend = v.numvend
order by nompieza ASC

-- 16
select nompieza
from preciosum ps, pieza p 
where ps.numpieza = p.numpieza
and numvend in (100, 300, 400)
and preciovent >= 100 and preciovent <=1000
and preciounit >= 1 and preciounit <=500

-- 17
select nompieza, preciounit
from preciosum ps, pieza p
where ps.numpieza = p.numpieza
and nompieza like 'MONITOR%'

-- 18
select distinct nompieza, provincia
from vendedor v, preciosum ps, pieza p
where ps.numvend = v.numvend 
and ps.numpieza = p.numpieza
and provincia in ('ALICANTE', 'VALENCIA', 'CASTELLON')

-- 19 
select nomvend, calle, nombrecomer
from vendedor
where (calle like 'CISCAR%'
or calle like 'SALAMANCA')
and nombrecomer = 'HARW S.A.'

-- 20
select nomvend, ps.numpieza
from vendedor v, preciosum ps, pieza p
where ps.numvend = v.numvend
and ps.numpieza = p.numpieza
and nomvend like '% MART_N% %'
order by nomvend ASC
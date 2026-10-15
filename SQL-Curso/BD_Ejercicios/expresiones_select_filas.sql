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
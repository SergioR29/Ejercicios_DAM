select numde, direc, 'PROPIEDAD' Tipo_Director
from tdepto
where presu > 100.000 and tidir = 'P'
union
select numde, direc, 'EN FUNCIONES' Tipo_Director
from tdepto
where presu > 100.000 and tidir = 'F';

/*Con el CASE*/

select numde, direc, CASE TIDIR
                     WHEN 'P' THEN 'EN PROPIEDAD'
                     WHEN 'F' THEN 'EN FUNCIONES'
                     END Tipo_Director
from tdepto
where presu > 100.000;

/*De otra forma*/

select numde, direc, CASE
                     WHEN TIDIR = 'P' THEN 'EN PROPIEDAD'
                     WHEN TIDIR = 'F' THEN 'EN FUNCIONES'
                     END Tipo_Director
from tdepto
where presu > 100.000
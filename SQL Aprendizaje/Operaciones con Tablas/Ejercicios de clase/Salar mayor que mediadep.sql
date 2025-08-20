DELETE FROM empleados
where salar > (select avg(salar)
			   from temple
               where temple.numde=empleados.numde);

select *
from empleados;
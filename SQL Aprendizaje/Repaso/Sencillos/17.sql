/*17. Hallar el presupuesto medio de los departamentos cuyo presupuesto supera al presupuesto medio de los departamentos.*/

select avg(presu)
from tdepto
group by presu
having avg(presu) > (select avg(presu)
                     from tdepto);
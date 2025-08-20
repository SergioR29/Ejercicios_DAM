select numem, case
				when comis is null
					then salar
				else salar+comis
              end Salario_Total
from temple
where salar > 4500;
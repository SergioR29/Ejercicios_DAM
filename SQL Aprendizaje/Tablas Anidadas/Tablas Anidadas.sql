Select Departamentos, NºEmpleados
From (Select Numde Departamentos, Count(*) NºEmpleados, Avg(Salar) Salario_Medio
	  From Temple
	  Group By Numde) As Departamentos
Where Salario_Medio < 2900;
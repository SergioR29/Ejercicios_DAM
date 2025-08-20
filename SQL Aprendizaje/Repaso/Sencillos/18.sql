/*18. Hallar el salario máximo y el mínimo para cada grupo de empleados con igual nº de hijos y que tienen al menos 1, y sólo si hay más de un empleado en el grupo y el salario 
máximo de éste excede a 2000 €. Ordenar por nº de hijos.*/

Select MAX(Salar), MIN(Salar), Numhi
From Temple
Where Numhi >= 1
Group by Numhi
Having MAX(Salar) > 2000 and COUNT(NOMEM) > 1
Order by Numhi;
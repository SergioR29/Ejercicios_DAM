/*3. Hallar por departamento la masa salarial total (suma de todos los salarios y comisiones del departamento) y el nombre, por orden alfabético.*/

Select SUM(Salar+IFNULL(Comis, 0)) As Masa_Salarial, Nomde
From Temple, Tdepto
Where Temple.Numde=Tdepto.Numde
Group By Nomde
Order By Nomde;
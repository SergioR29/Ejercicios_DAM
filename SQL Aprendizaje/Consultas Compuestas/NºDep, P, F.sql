Select Count(*) As Departamentos, Sum(Case
										When Tidir = 'P'
											Then 1
										Else 0
									End) As En_Propiedad,
								  Sum(Case
										When Tidir = 'F'
											Then 1
										Else 0
									End) As En_Funciones
From Tdepto;

/*La misma de antes sin el case*/

Select Count(*), (Select Count(*)
				  From Tdepto
                  Where Tidir = 'P') En_Propiedad, (Select Count(*)
													From Tdepto
													Where Tidir = 'F') En_Funciones
From Tdepto;

/*Tablas anidadas*/

Select Count(*), 'En_Propiedad'
From Tdepto
Where Tidir = 'P'
Union
Select Count(*), 'En_Funciones'
From Tdepto
Where Tidir = 'F';
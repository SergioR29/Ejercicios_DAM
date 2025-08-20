Select Numem, Salar*(Case
						When Comis Is Null
							Then 1.05
						Else 1.1
					 End )As Numero_salario
From Temple
Where Salar > 4500
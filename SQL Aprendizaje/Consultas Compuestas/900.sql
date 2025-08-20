Select Numem, Salar, (Case
						When
							Numhi > 0
						Then Salar/Numhi
					  Else 'No hijos'
                      End) AS Sal_Hijos
From Temple
Where Comis < 900
Select Numem, Salar + (CASE
						When Numhi > 0
							Then Salar*0.05
						Else Salar*0.02
					  End) As Hijos, Comis + (CASE
												When Year(FECIN) > 1970
													Then Comis*0.025
												Else Comis*0.02
											  End) As Comis_Nueva
From Temple
Where Salar > 4000;
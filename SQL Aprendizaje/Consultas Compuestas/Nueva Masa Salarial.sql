Select Sum(CASE
			When Comis is not null
				Then Salar*1.1 + Comis
			Else Salar*1.05
		   End) As Nueva_Masa_Salarial
From Temple;
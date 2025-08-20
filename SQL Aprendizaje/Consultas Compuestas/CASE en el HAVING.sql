Select Numce, Avg(Presu) Presupuesto_Medio
From Tdepto
Group By Numce
Having Count(Distinct
					 Case
						When Presu > 100 Then 'Alto'
						When Presu >= 50 And Presu <= 100 Then 'Medio'
						When Presu < 50 Then 'Bajo'
					 End) > 1;
Select Numde
From Tdepto
Where (Case
		When Tidir = 'P'
        Then Presu
        Else Presu+80
        End) > 100;
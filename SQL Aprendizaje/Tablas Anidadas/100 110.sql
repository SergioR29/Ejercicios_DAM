Select AVG(Media)
From (Select AVG(Salar) Media
	  From Temple
	  Group By Numde
	  Having Numde In (100,110)) As Media
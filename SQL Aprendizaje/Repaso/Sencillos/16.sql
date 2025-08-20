/*16. Hallar la masa salarial anual (salario más comisión) de la empresa (14 pagas).*/

Select SUM(Salar+Comis)*14 AS Masa_salarial_anual
From Temple;
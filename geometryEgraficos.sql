select geometry:: Parse('point (10 20)') as ponto
select geometry:: Parse('multipoint((10 20),(10 21))') as pontos

Select geometry ::Parse('linestring(0 0, 2 2)') as reta 

Select geometry ::Parse('multilinestring((-1 -2,6 6),(-3 3,3 -3),(0 0,5 5))') as retas

Select geometry ::Parse('circularstring(0 1, 1 0, 2 1, 1 2, 0 1)') as circulo

Select geometry :: Parse('circularstring(1 1,1 1,3 2,2 3, 2 2)') as figura

select geometry::Parse('polygon((1 1, 5 1, 4 3, 2 3, 1 1))') as trapezio

select geometry::Parse('multipolygon(((1 1, 5 1, 4 3, 2 3, 1 1), (6 1, 8 1, 8 3, 6 3, 6 1)))') as multipoligonos

select geometry::Parse('curvepolygon(compoundcurve(circularstring(0 0, 1 2.1082, 3 6.3246, 0 7, -3 6.3246, -1 2.1082, 0 0)))') as pizza

select geometry::Parse('curvepolygon(circularstring(0 4, 4 0, 8 4, 4 8, 0 4), circularstring(2 4, 4 2, 6 4, 4 6, 2 4))') as circulos
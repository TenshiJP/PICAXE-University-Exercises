;Nombre:	 Angel Roberto Jacinto Payes
;No. Carnet: 5990-20-1756

'Codigo Emisor
b4 = 0

main:
	readtemp 0,b1	'Temp Cuarto 1
	readtemp 1,b2	'Temp Cuarto 2
	readtemp 2,b3	'Temp Cuarto 3
;Enivar variables
	serout 7,T2400,("ABC")
	serout 7,T2400,(b1, b2, b3, b4)
;Manejo de los motores segun la temperatura	
	if b1=5 then
		high 0
	else
		low 0
	endif
	if b2=10 then
		high 1
	else
		low 1
	endif
	if b3=15 then
		high 2
	else
		low 2
	endif
	b4=b4+1		'Actulizar valor de b4.
goto main


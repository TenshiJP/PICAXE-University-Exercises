;Nombre:	 Angel Roberto Jacinto Payes
;No. Carnet: 5990-20-1756
b4 = 0

main:
	readtemp 0,b1	'Temp Cuarto 1
	readtemp 1,b2	'Temp Cuarto 2
	readtemp 2,b3	'Temp Cuarto 3
	serout 7,T2400,(254,1)
;Mensaje Inicial
	if b4 = 0 then
		serout 7,T2400,(254,128,"Angel Jacinto")
		serout 7,T2400,(254,192,"A")
		serout 7,T2400,(254,148,"Chinautla ")
		wait 1
		serout 7,T2400,(254,1)
	endif
;Mostrar temperaturas de los cuartos
	serout 7,T2400,(254,128,"CONTROL TEMPERATURA")
	
	if b1 >=0 and b1 < 6 then
		serout 7,T2400,(254,192,"CUARTO 1: ",#b1, " C")
		high 0
	else
		serout 7,T2400,(254,192,"CUARTO 1: FALLO")
		low 0
	endif
	if b2 >5 and b2 <11 then
		serout 7,T2400,(254,148,"CUARTO 2: ",#b2, " C")
		high 1
	else
		serout 7,T2400,(254,148,"CUARTO 2: FALLO")
		low 1
	endif
	if b3 >10 and b3 <16 then
		serout 7,T2400,(254,212,"CUARTO 3: ",#b3, " C")
		high 2
	else
		serout 7,T2400,(254,212,"CUARTO 3: FALLO")
		low 2
	endif
	
	b4=b4+1
	pause 500
goto main
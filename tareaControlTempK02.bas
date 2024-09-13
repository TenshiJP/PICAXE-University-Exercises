;Nombre:	 Angel Roberto Jacinto Payes
;No. Carnet: 5990-20-1756

;Codigo Receptor
main:
	serin 7,T2400,("ABC"),b1,b2,b3,b4	'Recibir valores.
	pause 10
	serout 7,T2400,(254,1)			'Limpiar LCD
;Mensaje Inicial
	if b4 = 0 then
		serout 7,T2400,(254,128,"Angel Jacinto")
		serout 7,T2400,(254,192,"A")
		serout 7,T2400,(254,148,"Chinautla ")
		wait 2
		serout 7,T2400,(254,1)
	endif
;Mostrar Temperatura y Fallos en el LCD
	serout 7,T2400,(254,128,"CONTROL TEMPERATURA")
	if b1=5 then
		serout 7,T2400,(254,192,"CUARTO 1: TEMP.",#b1, " C")
	else
		serout 7,T2400,(254,192,"CUARTO 1: FALLO")
	endif
	if b2=10 then
		serout 7,T2400,(254,148,"CUARTO 2: TEMP.",#b2, " C")
	else
		serout 7,T2400,(254,148,"CUARTO 2: FALLO")
	endif
	if b3=15 then
		serout 7,T2400,(254,212,"CUARTO 3: TEMP.",#b3, " C")
	else
		serout 7,T2400,(254,212,"CUARTO 3: FALLO")
	endif
	pause 350
goto main

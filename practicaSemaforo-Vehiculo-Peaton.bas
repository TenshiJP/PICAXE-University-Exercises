
;Nombre:		Angel Roberto Jacinto Payes
;No. carnet:	5990-20-1756
;Secci?n:		"A"
;Sede:		Chinautla

symbol Vred = b.0		; Pin B.0 Luz roja del sem?foro vehicular.
symbol Vyellow = b.1	; Pin B.1 Luz amarilla del sem?foro vehicular.
symbol Vgreen = b.2	; Pin B.2 Luz verde del sem?foro vehicular.
symbol Projo = b.7	; Pin B.7 Luz roja del sem?foro de peatones.
symbol Pverde = b.6	; Pin B.6 Luz verde del sem?foro de peatones.
symbol BOTON = pinc.1	; Conectar boton del sem?foro de peatones.
symbol Cont = b4		; Varible b4 contador.

main:
	gosub passCars	
	gosub stopCars	
goto main

'Bloque para parar el tr?fico vehicular y dar paso a peatones.
stopCars:
		high vred	;Enciende la luz roja del semaforo de los vehiculos.
		high pverde	;Enciende la luz verde del sem?foro de los peatones.
		wait 5
		low vred	;Apaga la luz roja del sm?foro del los veh?culos.
		low pverde	;Apaga la luz verde del sm?foro del los peatones.
return

'Bloque para dar 3 segundos de precauci?n, antes de parar el tr?fico vehicular.
cautionCars:
	for cont = 1 to 3
		high vyellow	;Enciende la luz amarilla del semaforo de los vehiculos.
		pause 1000		'Tiempo de espera entre cada parpadeo.
		low vyellow		;Apaga la luz amarilla del semaforo de los vehiculos.
	next cont
return

'Bloque para dar paso al tr?fico vehicular, y parar paso de peatones.
passCars:
	for cont = 1 to 5			'Ciclo para dar paso al tr?fico vehicular, y parar paso de los peatones.
		high vgreen			;Enciende la luz verde del semaforo de los vehiculos.
		high projo			;Enciende la luz roja del semaforo de los peatones.
		wait 1
		if BOTON = 1 then		;Condicional para verificar si el peaton presiono el boton, para solicitar pasar.
			low vgreen		;Apaga la luz verde del sm?foro del los veh?culos.
			gosub cautionCars	'Tres segundos de precauci?n, para parar el tr?fico vehicular.
			low projo		;Apaga la luz roja del sem?foro de los peatones.
			gosub stopCars	'Parar tr?fico vehicular, para paso de peatones.
			goto main		;Reinicia el ciclo de los sem?foros de nuevo
		endif
	next cont

	low vgreen				;Apaga la luz verde del sm?foro del los veh?culos.
	gosub cautionCars			'Tres segundos de precauci?n, para parar el tr?fico.
	low projo				;Apaga la luz roja del sem?foro de los peatones.
return

;Exam?n Final
;Nombre:	 Angel Roberto Jacinto Payes
;No. Carnet: 5990-20-1756

Symbol SR1 = pinc.1	'Switch 1.
Symbol SR2 = pinc.2	'Switch 2.

init:	
	;Talanqueras a 90 grados (Hay paso).
	servo 5,225		'Posicion inicial MT1.
	servo 2,225		'Posici?n inicial MT2.

main:	
	readadc 0,b1		'Lectura del sensor de distancia.
	gosub semaforos		'Llamar funcion para sem?foros.
	if b1=77 then		'Condicional para verificar si el tren se encuentra a 17cm.
		;Talaqueras a 0 grados (No hay paso por el tren).
		servo 5,75		'Posicion MT1
		servo 2,75		'Posici?n MT2
	;else
		;gosub semaforos	'Llamar funcion para sem?foros.
	endif
goto main

'Funci?n para los sem?foros.
semaforos:
	;Condicional para colocar semaforos en rojo por el paso del tren.
	if b1=77 then 
		low b.0	'SE2 Verde off
		low b.7	'SE1 Verde off
		high b.6	'SE1 Rojo on
		high b.1	'SE2 Rojo on
	endif

	;Simulaci?n que el tren ya dejo de pasar.
	;Primero: Condicional para verificar sensor diferente de 17cm.
	if b1 <> 77 then
		;Segundo: Condicioinal para verificar que SR1 Y SR2 en off.
		if SR1 = 0 and SR2 = 0 then
			;Tercero: Talaqueras a 90 grados (Hay paso).
			servo 5,225		'Posicion MT1
			servo 2,225		'Posici?n MT2
			;Cuarto semaforos en verde.
			low b.6	'SE1 Rojo off
			low b.1	'SE2 Rojo off
			high b.0	'SE2 Verde on
			high b.7	'SE1 Verde on
		endif
	endif
	pause 150
return

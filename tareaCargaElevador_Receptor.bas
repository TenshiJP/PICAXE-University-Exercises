;Nombre:	 Angel Roberto Jacinto Payes
;No. Carnet: 5990-20-1756

'C?digo Receptor
Symbol Time = b6	'Varible para el tiempo de ejecuci?n del motor.
Symbol Giro = b7	'Varible para saber el giro del motor.

main:
	serin 7,T2400,("ABC"),Time,Giro	'Recibir valores.
	pause 20
	high 0
	pause 20
;Encender motor del Ascensor
	if giro = 0 then		'Verificar giro del motor.
		forward A
		for b8 = 1 to Time
			wait 1
		next
	else  
		backward A
		for b8 = 1 to Time
			wait 1
		next
	endif
	low 0,4,5
goto main

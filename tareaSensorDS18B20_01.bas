;Nombre:	 Angel Roberto Jacinto Payes
;No. Carnet: 5990-20-1756

'Codigo Emisor
main:
	readtemp 1,b5		'Enviar valor de la temperatura por Bluetooth.
	setfreq m8
	serout 7,T9600_8, (b5)	'Envia temperatura.
	pause 10

	if b5 > 5 and b5 <129 then	'Condicoinal para Encender el Motor de Calentamiento.
		high b.0	'Enciende el motor.	
	else
		low b.0	'Apaga el motor.
	endif

	if b5 >133 then		'Condicoinal para Encender el Motor de Enfriamiento.
		high b.4	'Enciende el motor.
	else
		low b.4	'Apaga el motor.
	endif
goto main

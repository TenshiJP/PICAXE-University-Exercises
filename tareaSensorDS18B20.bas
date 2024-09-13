;Nombre:	 Angel Roberto Jacinto Payes
;No. Carnet: 5990-20-1756

;Codigo Receptor
main:
	setfreq m8
	serin 0,T9600_8, b3			'Recibir valor de la temperatura por Bluetooth.
	b4 = b3
	pause 10
	setfreq m4
	if b4>=129 then 				'Temperatura negativa.
		b3=b3-128
		if b3 > 5 then			'Verificar si la temperatura es < -5.
			high b.0			'Enciende Led.
			serout 7,T2400,(254,1)
			serout 7,T2400,(254,128,"Temperatura: -",#b3," C")
			serout 7,T2400,(254,195,"* ADVERTENCIA *")
			serout 7,T2400,(254,151,"La Temperatura")
			serout 7,T2400,(254,217,"Disminuyo")
		else
			low b.0			'Apaga Led.
			serout 7,T2400,(254,1)
			serout 7,T2400,(254,128,"Temperatura: -",#b3," C")
			serout 7,T2400,(254,148,"Estado en Normalidad")
		endif	
	else
		if b3 >5 and b5<129 then	'Verificar si la temperatura es >5.
			high b.2			'Enciende Led.
			serout 7,T2400,(254,1)
			serout 7,T2400,(254,128,"Temperatura: ",#b3," C")
			serout 7,T2400,(254,195,"* ADVERTENCIA *")
			serout 7,T2400,(254,151,"La Temperatura")
			serout 7,T2400,(254,218,"Aumento")
		else
			low b.2			'Apaga Led.
			serout 7,T2400,(254,1)
			serout 7,T2400,(254,128,"Temperatura: ",#b3," C")
			serout 7,T2400,(254,148,"Estado en Normalidad")
		endif
	endif
	wait 1
goto main

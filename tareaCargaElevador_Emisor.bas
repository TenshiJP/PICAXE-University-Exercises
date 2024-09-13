;Nombre:	 Angel Roberto Jacinto Payes
;No. Carnet: 5990-20-1756

'Codigo Emisor
Symbol Time = b1	'Variable para el tiempo.
Symbol Giro = b2	'Variable para verificar el giro del motor.
Symbol Nivel = b3	'Variable para el nivel.
Nivel = 1		'Ascensor inicia en el nivel 1.

main:
	serout 7,T2400,(254,1)
	serout 7,T2400,(254,128,"Nivel Actual: ",#Nivel)
	Time = 0
;Llamadas del ascensor
	if pinc.0 = ON then			'Nivel 3.
		b4 = 3
		if Nivel = 1 then
			Giro = 1
			Time = 4
			serout 7,T2400,(254,195,"Subiendo... a N",#b4)
			gosub Emitir
			wait 4
		endif
		if Nivel = 2 then
			Giro = 1
			Time = 2
			serout 7,T2400,(254,195,"Subiendo... a N",#b4)
			gosub Emitir
			wait 2
		endif
		Nivel = b4
	endif
	if pinc.2 = ON then			'Nivel 2.
		b4 = 2
		if Nivel = 1 then
			Giro = 1
			Time = 2
			serout 7,T2400,(254,195,"Subiendo... a N",#b4)
			gosub Emitir
			wait 2
		endif
		if Nivel = 3 then
			Giro = 0
			Time = 2
			serout 7,T2400,(254,195,"Bajando... a N",#b4)
			gosub Emitir
			wait 2
		endif
		Nivel = b4
	endif
	if pinc.7 = ON then			'Nivel 1.
		b4 = 1
		if Nivel = 2 then
			Giro = 0
			Time = 2
			serout 7,T2400,(254,195,"Bajando... a N",#b4)
			gosub Emitir
			wait 2
		endif
		if Nivel = 3 then
			Giro = 0
			Time = 4
			serout 7,T2400,(254,195,"Bajando... a N",#b4)
			gosub Emitir
			wait 4
		endif
		Nivel = b4
	endif
	pause 300
goto main

Emitir:					;Enviar datos
	serout 3,T2400,("ABC")
	serout 3,T2400,(Time, Giro)
	pause 100
	high b.0
	pause 100
	low b.0
return

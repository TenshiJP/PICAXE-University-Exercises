;Angel Roberto Jacinto Payes
;5990-20-1756

symbol DatoA = pinc.1	;Leer numero binario. 8
symbol DatoB = pinc.2	;Leer numero binario. 4
symbol DatoC = pinc.7	;Leer numero binario. 2
symbol DatoD = pinc.6	;Leer numero binario. 1
symbol suma = b5
symbol Cont = b6		; Varible b6 contador.
symbol ledRoja = b.7;
symbol ledAmar = b.4;
symbol ledBlan = b.1;

main:
	'Lectura de c?digo binario
	if DatoD = 1 then 	'Valor 1 decimal
		b1 = 1
	else 
		b1 = 0
	endif
	if DatoC = 1 then 	'Valor 2 decimal
		b2 = 2
	else 
		b2 = 0
	endif
	if DatoB = 1 then		'Valor 3 decimal
		b3 = 4
	else 
		b3 = 0
	endif
	if DatoA = 1 then		'Valor 4 decimal
		b4 = 8
	else 
		b4 = 0
	endif
	pause 1500			'Espera antes de realizar la suma
	suma = b1+b2+b3+b4	'C?digo binario a decimal
	'Fin

	'Posibles casos
	select case suma
		case 0
			pause 100
			high ledBlan
			wait 1
			low ledBlan
			pause 200
		case 1
			gosub ledImpar
		case 2
			gosub ledPar
		case 3
			gosub ledImpar
		case 4
			gosub ledPar
		case 5
			gosub ledImpar
		case 6
			gosub ledPar
		case 7
			gosub ledImpar
		case 8
			gosub ledPar
		case 9
			gosub ledImpar
		case 10
			gosub ledPar
		case 11
			gosub ledImpar
		case 12
			gosub ledPar
		case 13
			gosub ledImpar
		case 14
			gosub ledPar
		case 15
			gosub ledImpar
	endselect
	'Fin
	wait 1	'Espera de reinicio
goto main

;Funci?n encender led cantidad de n?meros pares
ledPar:
	pause 100
	for cont = 1 to suma
		high ledRoja
		wait 1
		low ledRoja
		pause 250
	next cont
	suma = 0
return

;Funci?n encender led cantidad de n?meros impares
ledImpar:
	pause 100
	for cont = 1 to suma
		high ledAmar
		wait 1
		low ledAmar
		pause 250
	next cont
	suma = 0
return
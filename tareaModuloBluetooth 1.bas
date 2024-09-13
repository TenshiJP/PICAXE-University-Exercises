;Nombre: 	     Angel Roberto Jacinto Payes
;No. Carnet:     5990-20-1756

Symbol led = b.2		; Led Roja
Symbol motor = b.0	; Motor
Symbol cont = b1		; Contador para segundos

main:
	setfreq m8
	serin 0,T9600_8, b3
	pause 10
	setfreq m4
	;Condicional para activar led Roja
	if b3 = 49 then
		gosub LedRoja
	endif
	;Condicional para activar el motor
	if b3 = 50 then
		gosub MotorOn
	endif
	;Condicional para mostrar mensaje
	if b3 = 51 then
		gosub Mensaje
	else
		serout 7, T2400, (254,1) ;Borrar Mensaje
	endif
goto main

;Funci?n para encender un led.
LedRoja:
	serout 7, T2400, (254,1) ;Borrar Mensaje
	high led
	for cont=1 to 5
		wait 1
	next cont
	low led
return

;Funci?n para encender el motor.
MotorOn:
	serout 7, T2400, (254,1) ;Borrar Mensaje
	high motor
	for cont=1 to 5
		wait 1
	next cont
	low motor
return

;Funci?n para mostrar el mensaje.
Mensaje:
	serout 7, T2400, (254,1)	
	serout 7, T2400, (254,131, "UMG DIGITALES")
	serout 7, T2400, (254,196, "Seccion: 'A'")
	serout 7, T2400, (254,150, "Sede: Chinautla")
	pause 500
return

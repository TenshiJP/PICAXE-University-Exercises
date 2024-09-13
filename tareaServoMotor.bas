;Nombre:	 Angel Roberto Jacinto Payes
;No. Carnet: 5990-20-1756

init:	
	servo 3,75		'Posicion inicial
	
main:
	readadc 1,b1			'Leer LDR.
	pause 25
	serout 7,T2400,(254,1)		'Limpiar LCD.
	
	if b1>= 2 and b1<93 then
		servopos 3,75 			'Posici?n 0.
		serout 7,T2400,(254,128,  "Posicion 0 ")
	endif
	if b1>= 93 and b1<129 then
		servopos 3,108 			'Posici?n 1.
		serout 7,T2400,(254,128,  "Posicion 1 ")
	endif
	if b1>= 129 and b1<151 then
		servopos 3,117 			'Posici?n 2.
		serout 7,T2400,(254,128,  "Posicion 2 ")	
	endif
	if b1>= 151 and b1<166 then
		servopos 3,125 			'Posici?n 3.
		serout 7,T2400,(254,128,  "Posicion 3 ")	
	endif
	if b1>= 166 and b1<177 then
		servopos 3,133 			'Posici?n 4.
		serout 7,T2400,(254,128,  "Posicion 4 ")
	endif
	if b1>= 177 and b1<185 then
		servopos 3,142 			'Posici?n 5.
		serout 7,T2400,(254,128,  "Posicion 5 ")	
	endif
	if b1>= 185 and b1<192 then
		servopos 3,150 			'Posici?n 6.
		serout 7,T2400,(254,128,  "Posicion 6 ")	
	endif
	if b1>= 192 and b1<197 then
		servopos 3,158 			'Posici?n 7.
		serout 7,T2400,(254,128,  "Posicion 7")	
	endif
	if b1>= 197 and b1<201 then
		servopos 3,167 			'Posici?n 8.
		serout 7,T2400,(254,128,  "Posicion 8 ")
	endif
	if b1>= 201 and b1<205 then
		servopos 3,175 			'Posici?n 9.
		serout 7,T2400,(254,128,  "Posicion 9 ")
	endif
	if b1>= 205 and b1<208 then
		servopos 3,183 			'Posici?n 10.
		serout 7,T2400,(254,128,  "Posicion 10 ")	
	endif
	if b1>= 208 then
		servopos 3,192 			'Posici?n 11.
		serout 7,T2400,(254,128,  "Posicion 11 ")	
	endif
	pause 350
goto main

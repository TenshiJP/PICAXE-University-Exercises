
main:	
	readadc c.0,b1				;Leer sensor
	pause 100
	serout b.7, T2400, (254, 128)		;Borrar pantalla.
	
	let w1=b1*10
	let w1=w1/102
	
	serout b.7, T2400, ("Temperatura ",#w1,"C")
	pause 100
goto main

negativo:
	let b1 = b1-128
	serout b.7, T2400, ("Temperatura -")
	serout b.7, T2400, (#b1, " C")
goto main:

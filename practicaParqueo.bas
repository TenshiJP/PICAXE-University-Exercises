
;Nombre:		Angel Roberto Jacinto Payes
;No. carnet:	5990-20-1756
;Secci?n:		"A"
;Sede:		Chinautla

symbol SE1 = pinc.2	' Conectar Sensor de Entrada 1 en c.2.
symbol M1 = B.0		; Conectar Motor 1 en b.0.
symbol SE2 = pinc.1	' Conectar Sensor de Entrada 2 en c.2.
symbol SS1 = pinc.7	' Conectar Sensor de Salida 1 en c.7.
symbol M2 = B.7		; Conectar Motor 2 en b.7.
symbol SS2 = pinc.6	; Conectar Sensor de Salida 2 en c.6.

main:

	if SE1 = 1 then
		high M1
		wait 8
	elseif SE2 = 1 then
		SE1 = 0
		low M1	
	endif
		
	if SS1=1 then
		high M2
		wait 8
	elseif SS2 = 1 then
		SS1 = 0
		low M2
	endif

goto main
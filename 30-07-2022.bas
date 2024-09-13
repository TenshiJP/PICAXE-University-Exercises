
symbol sw1 = pinc.1 'Conectar switch 1 en p?n c.1
symbol sw2 = pinc.2 'Conectar switch 2 en pin c.2
symbol CONT = b0 ;Varible de conteo
Symbol LED1 = b.0 ; Conectar LED 1
Symbol LED2 = 7	; Conectar LED 2 pata B.7

main:

if sw1 = 1 and sw2 = 1 then
	
	
		high LED1
		pause 100
		low LED1
		wait 1
	
	
elseif sw1=0 and sw2=0 then
	
	for cont = 1 to 5
		high LED2
		pause 100
		low LED2
		pause 100
	next cont
	
else
	
	for cont = 1 to 10
		high LED1, LED2
		pause 500
		low LED1, LED2
		pause 500
	next cont
	
goto main
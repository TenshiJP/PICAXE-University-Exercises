main:
	readadc 1,b3
	pause 100
	serout 7,T2400,(254,1)
	serout 7,T2400,(254,128,"Dato: ",#b3)
	pause 500
goto main:
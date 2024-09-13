'Angel Roberto Jacinto Payes
'5990-20-1756

main:
	readadc 1,b1 						; Leer el valor dentro de b1
	pause 200
'Convertir la lectura en temperatura
	if b1 <= 	31	then	
		gosub printMin
	elseif b1 >	32	and 	b1 <	34	then
		b1=0;
		gosub printTemperatura
	elseif b1 >	33	and 	b1 <	36	then
		b1=1;
		gosub printTemperatura
	elseif b1 >	35	and 	b1 <	37	then
		b1=2;
		gosub printTemperatura
	elseif b1 >	36	and 	b1 <	39	then
		b1=3;
		gosub printTemperatura
	elseif b1 >	38	and 	b1 <	41	then
		b1=4;
		gosub printTemperatura
	elseif b1 >	40	and 	b1 <	43	then
		b1=5;
		gosub printTemperatura
	elseif b1 >	42	and 	b1 <	45	then
		b1=6;
		gosub printTemperatura
	elseif b1 >	44	and 	b1 <	46	then
		b1=7;
		gosub printTemperatura
	elseif b1 >	45	and 	b1 <	48	then
		b1=8;
		gosub printTemperatura
	elseif b1 >	47	and 	b1 <	50	then
		b1=9;
		gosub printTemperatura
	elseif b1 >	49	and 	b1 <	53	then
		b1=10;
		gosub printTemperatura
	elseif b1 >	52	and 	b1 <	55	then
		b1=11;
		gosub printTemperatura
	elseif b1 >	54	and 	b1 <	57	then
		b1=12;
		gosub printTemperatura
	elseif b1 >	56	and 	b1 <	59	then
		b1=13;
		gosub printTemperatura
	elseif b1 >	58	and 	b1 <	61	then
		b1=14;
		gosub printTemperatura
	elseif b1 >	60	and 	b1 <	64	then
		b1=15;
		gosub printTemperatura
	elseif b1 >	63	and 	b1 <	66	then
		b1=16;
		gosub printTemperatura
	elseif b1 >	65	and 	b1 <	68	then
		b1=17;
		gosub printTemperatura
	elseif b1 >	67	and 	b1 <	71	then
		b1=18;
		gosub printTemperatura
	elseif b1 >	70	and 	b1 <	73	then
		b1=19;
		gosub printTemperatura
	elseif b1 >	72	and 	b1 <	76	then
		b1=20;
		gosub printTemperatura
	elseif b1 >	75	and 	b1 <	78	then
		b1=21;
		gosub printTemperatura
	elseif b1 >	77	and 	b1 <	81	then
		b1=22;
		gosub printTemperatura
	elseif b1 >	80	and 	b1 <	83	then
		b1=23;
		gosub printTemperatura
	elseif b1 >	82	and 	b1 <	86	then
		b1=24;
		gosub printTemperatura
	elseif b1 >	85	and 	b1 <	88	then
		b1=25;
		gosub printTemperatura
	elseif b1 >	87	and 	b1 <	91	then
		b1=26;
		gosub printTemperatura
	elseif b1 >	90	and 	b1 <	94	then
		b1=27;
		gosub printTemperatura
	elseif b1 >	93	and 	b1 <	96	then
		b1=28;
		gosub printTemperatura
	elseif b1 >	95	and 	b1 <	99	then
		b1=29;
		gosub printTemperatura
	elseif b1 >	98	and 	b1 <	102	then
		b1=30;
		gosub printTemperatura
	elseif b1 >	101	and 	b1 <	104	then
		b1=31;
		gosub printTemperatura
	elseif b1 >	103	and 	b1 <	107	then
		b1=32;
		gosub printTemperatura
	elseif b1 >	106	and 	b1 <	110	then
		b1=33;
		gosub printTemperatura
	elseif b1 >	109	and 	b1 <	112	then
		b1=34;
		gosub printTemperatura
	elseif b1 >	111	and 	b1 <	115	then
		b1=35;
		gosub printTemperatura
	elseif b1 >	114	and 	b1 <	118	then
		b1=36;
		gosub printTemperatura
	elseif b1 >	117	and 	b1 <	120	then
		b1=37;
		gosub printTemperatura
	elseif b1 >	119	and 	b1 <	123	then
		b1=38;
		gosub printTemperatura
	elseif b1 >	122	and 	b1 <	126	then
		b1=39;
		gosub printTemperatura
	elseif b1 >	125	and 	b1 <	128	then
		b1=40;
		gosub printTemperatura
	elseif b1 >	127	and 	b1 <	131	then
		b1=41;
		gosub printTemperatura
	elseif b1 >	130	and 	b1 <	134	then
		b1=42;
		gosub printTemperatura
	elseif b1 >	133	and 	b1 <	136	then
		b1=43;
		gosub printTemperatura
	elseif b1 >	135	and 	b1 <	139	then
		b1=44;
		gosub printTemperatura
	elseif b1 >	138	and 	b1 <	141	then
		b1=45;
		gosub printTemperatura
	elseif b1 >	140	and 	b1 <	144	then
		b1=46;
		gosub printTemperatura
	elseif b1 >	143	and 	b1 <	146	then
		b1=47;
		gosub printTemperatura
	elseif b1 >	145	and 	b1 <	149	then
		b1=48;
		gosub printTemperatura						
	elseif b1 >	148	and 	b1 <	151	then
		b1=49;
		gosub printTemperatura
	elseif b1 >	150	and 	b1 <	153	then
		b1=50;
		gosub printTemperatura
	elseif b1 >	152   then
		gosub printMax
	endif
'Fin de conversi?n
goto main


printTemperatura:
	pause 100
	serout 7,T2400,(254,1)					; Borrar todo del display
	serout 7,T2400,(254, 128, "Temperatura: ")	; Mensaje
	serout 7,T2400,(254, 192)				; Borrar pantalla.
	serout 7,T2400,(254, 192 ,#b1," C")			; Transmitir valor a la pantalla.
	pause 350
return

printMax:
	pause 100
	serout 7,T2400,(254,1)					; Borrar todo del display
	serout 7,T2400,(254, 128, "Temperatura: ")	; Mensaje
	serout 7,T2400,(254, 192)				; Borrar pantalla.
	serout 7,T2400,(254, 192, "Mayor a 50 C ")	; Mensaje
	wait 1
return

PrintMin:
	pause 100
	serout 7,T2400,(254,1)					; Borrar todo del display
	serout 7,T2400,(254, 128, "Temperatura: ")		; Mensaje
	serout 7,T2400,(254, 192)				; Borrar pantalla.
	serout 7,T2400,(254, 192, "Menor a 50 C ")	; Mensaje
	wait 1
return
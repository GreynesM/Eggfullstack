SubProceso inicializarMatriz(tablero,9,12)
	Para i <- 0 Hasta 8 Con Paso 1 Hacer
		Para j <- 0 Hasta 11 Con Paso 1 Hacer
			tablero(i,j)= "*"
		Fin Para
	Fin Para
FinSubProceso

SubProceso agregarPalabra(tablero,palabra, fila)
	Para j <- 0 Hasta Longitud(palabra)-1 Con Paso 1 Hacer
		tablero(fila,j)=Subcadena(palabra,j,j)
	Fin Para
	
FinSubProceso

SubProceso imprimirMatriz(tablero,9,12)
	Para i <- 0 Hasta 8 Con Paso 1 Hacer
		Para j <- 0 Hasta 11 Con Paso 1 Hacer
			Escribir tablero(i,j) sin saltar
		Fin Para
			Escribir " "
	Fin Para
FinSubProceso
//greynes

SubProceso acomodarPalabras(tablero)
		buscarR(tablero)
FinSubProceso

SubProceso buscarR(tablero)
	Definir pos Como Entero
	Dimension pos(8)
	Para i <- 0 Hasta 8 Con Paso 1 Hacer
		k=0
		Para j <- 0 Hasta 11 Con Paso 1 Hacer	
			Mientras k=0 Hacer
				Si tablero(i,j) = "R" Entonces
					pos(i)=j
					k=k+1
				Fin Si
			Fin Mientras
		Fin Para
	Fin Para
FinSubProceso

Algoritmo sin_titulo
	Definir tablero,palabra como Cadena
	Definir fila Como Entero
	Dimension tablero[9, 12]
	inicializarMatriz(tablero, 9, 12)
	//agregarPalabra(tablero, "vector", 0)
	//agregarPalabra(tablero, "matrix", 1)
	//agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma", 3)
	agregarPalabra(tablero, "subproceso", 4)
	//agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	acomodarPalabras(tablero)
	imprimirMatriz(tablero, 9, 12)
FinAlgoritmo

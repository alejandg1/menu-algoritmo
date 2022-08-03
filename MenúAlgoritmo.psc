//Divisores de un numero y Numero perfecto
Funcion DivisoresyPerfecto ( num, cerradura )
	x = 1
	perfect = 0
	Si cerradura < 0 Entonces
		Mientras x < num Hacer
			Si num mod x == 0 Entonces
				Imprimir " El numero ",x, " es divisible entre ", num
			Fin Si
			x= x+1 
		Fin Mientras
	SiNo
		Para a <- 1 Hasta num - 1
			x = num mod a
			Si x = 0 Entonces
				perfec = perfec + a
				Imprimir a
			Fin Si
		Fin Para
		
		Si perfec == num Entonces
			Escribir " El numero ingresado ", num, " es un numero perfecto"
		SiNo
			Escribir  " El numero ingresado ", num, " no es un numero perfecto"
		Fin Si
	Fin Si
Fin Funcion

//Fibonacci
Funcion fibonacci= Respuesta ( n )
	a = 0
	b = 1
	Escribir ""
	Para i <- 1 Hasta n  Hacer
		Escribir a
		c=a+b
		a=b
		b=c
	Fin Para
Fin Funcion

// Funciones de usuario para el Algoritmo Menu
// Presenta el menu en la pantalla
Funcion opc = presentarMenu(titulo,opciones,lim) 
	Escribir titulo
	Escribir ""
	Para pos=1 Hasta lim  Hacer
		Escribir opciones[pos]
	Fin Para
	Escribir " Elija opcion[1...",lim,"]: "
	Leer opc
FinFuncion

//porcentaje
Funcion n=porcentaje(num1,num2)
	n=(num1*num2)/100
FinFuncion

//promedio
Funcion n = promedio (num1,num )
	para x=1 Hasta num Hacer
		Imprimir " Ingrese el °",x," numero"
		Leer num1
		num2=num2+num1
	FinPara
	n=num2/num
FinFuncion

//
Funcion mayrmen(num1,c,a)
	para x=1 Hasta c Hacer
		Imprimir " Ingrese el °",x," numero"
		Leer num1
		si num1> num2 Entonces
			num2=num1
		FinSi
		si n=0 Entonces
			num=num1
			n=n+1
		FinSi
		si num1<num Entonces
			num=num1
		FinSi
	FinPara
	Imprimir " El mayor numero es: ",num2
	si a=1 Entonces
		Imprimir " El numero menor es: ",num
	FinSi
FinFuncion

// Calcula el proceso matematico de dos numeros dada su operacion
Funcion n=calculadora(operacion,num1,num2,num)
	Si operacion = "+" Entonces
		n=num1+num2
		si num>0 Entonces
			Escribir num1," + ",num2," = ",num1+num2
		FinSi
		
	SiNo
		Si operacion = "-" Entonces
			n=num1-num2
			si num>0 Entonces
				Escribir num1," - ",num2," = ",num1-num2
			FinSi
		SiNo
			Si operacion = "*" Entonces
				n=num1*num2
				si num>0 Entonces
					Escribir num1," * ",num2," = ",num1*num2
				FinSi
			SiNo
				Si operacion = "/" Entonces
					n=num1/num2
					si num>0 Entonces
						Escribir num1," / ",num2," = ",num1/num2
					FinSi
					
				SiNo
					Si operacion = "%" Entonces
						n=num1%num2
						si num>0 Entonces
							Escribir num1," % ",num2," = ",num1%num2
						FinSi
						
					SiNo
						Si operacion = "^" Entonces
							n=num1^num2
							si num>0 Entonces
								Escribir num1," ^ ",num2," = ",num1^num2
							FinSi
							
						SiNo
							Escribir " Operacion Incorrecta, intentelo de nuevo"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Fin Si
FinFuncion

// Verifica si un numero es primo o no y devueve 1 si es primo y 0 si no es
Funcion bandera=primo(num)
	Definir r,c,bandera Como Entero
	bandera=1;c=2
	// recorro mientras sea primo y c no lleaga al numero
	Mientras bandera=1 y c < num Hacer
		r=num MOD c
		Si r=0 Entonces
			bandera=0
		SiNo
			c=c+1
		Fin Si
	Fin Mientras
FinFuncion

// Recorrer y presentar cadena caracter por caracter
Funcion presentarCadena(texto)
	Definir pos,lon Como Entero
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto)
	Para pos=1 Hasta lon  Hacer
		Escribir Subcadena(texto,pos,pos)
	Fin Para
FinFuncion

// recorre y cadena y cuenta las vocales de dicha cadena
Funcion vocales(texto)
	Definir pos,lon Como Entero
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto)
	Para pos=1 Hasta lon  Hacer
		Si Subcadena(texto,pos,pos) = 'a' | Subcadena(texto,pos,pos)='e' | Subcadena(texto,pos,pos)='i' Entonces
			cv = cv +1
		Fin Si
		reves=Subcadena(texto,pos,pos)+reves
	Fin Para
    Escribir " Frase al revez: ",reves,"  No vocales: ",cv
FinFuncion

// Ingresar datos a un arreglo
Funcion ingresarArreglo(vector por referencia,lim)
	Definir num,pos Como Entero
	Para pos<-1 Hasta lim Hacer
		Escribir " Ingrese numero"
		leer num
		vector[pos]=num
	Fin Para
FinFuncion

// Presenta los datos de un arreglo dada una posicion inicial y final
Funcion presentarArreglo(vector,inicio,lim)
	Definir pos Como Entero
	Si lim > 0 Entonces
		Para pos<-inicio Hasta lim Hacer
			Escribir pos,"[",vector[pos],"]"
		Fin Para
	SiNo
		Escribir " Ingrese primero datos al arreglo"
	Fin Si
FinFuncion

// buscac un valor en un arreglo y retorna la posicion si lo encuentra sino retorna -1
Funcion posicion=bscarArreglo(buscado,vector,lim)
	Definir pos,encontrado Como Entero
	pos=1;encontrado=0
	mientras encontrado=0 y pos <= lim Hacer
		Si vector[pos]=buscado Entonces
			encontrado=1
		SiNo
			pos = pos + 1
		Fin Si
	Fin Mientras
	Si encontrado=1 Entonces
		posicion=pos
	SiNo
		posicion = -1
	Fin Si
FinFuncion

//negativo/positivo
Funcion n=negativpositiv (num1,c,num)
	para x=1 Hasta c Hacer
		Imprimir " Ingrese un numero"
		Leer num1
		si num1=0 Entonces
			n=2
		sino
			si num1>0 Entonces
				n=n+1
				a=a+1
			SiNo
				n=0
				b=b+1		
			FinSi
		FinSi
	FinPara
	si num=1 Entonces
		Imprimir " Cantidad de numeros positivos: ",a
	SiNo
		si num=2 Entonces
			Imprimir " La cantidad de numeros negativos es: ",b
		FinSi
	FinSi
FinFuncion

//par o impar 
Funcion n=paroimpar (num1)
	si num1%2=0 Entonces
		n=n+1
	sino
		n=0
	FinSi
FinFuncion

//multiplos
Funcion n=multiplos(num1,num2)
	si num1%num2=0 Entonces
		n=n+1
	SiNo
		n=0
	FinSi
FinFuncion

//Funcion base 2 a 10 a 16
Funcion transformar(binary, cerradura)
	ex=0
	si binary=0 Entonces
		dec=0
	SiNo
		Mientras binary>0 Hacer
			x=binary%10 
			binary=trunc(binary/10)
			dec=dec+(x*2^ex)
			ex=ex+1
		FinMientras
	FinSi
	Imprimir " El numero ingresado, en su valor decimal es: ", dec
	Si cerradura < 0  Entonces
		x <- 1
		s <- ''
		Mientras x>0 Hacer
			x <- trunc(dec/16)
			Segun dec MOD 16  Hacer
				10:
					s <- 'A'+s
				11:
					s <- 'B'+s
				12:
					s <- 'C'+s
				13:
					s <- 'D'+s
				14:
					s <- 'E'+s
				15:
					s <- 'F'+s
				De Otro Modo:
					s <- ConvertirATexto(dec MOD 16)+s
			FinSegun
			dec <- x
			Escribir ' Este numero en hexadecimal es: ',s
		FinMientras
	Fin Si
Fin Funcion


// Funciones de cadenas y vectores // 
//Ingresar datos en un arreglo//
Funcion IngresoArreglo (vector Por Referencia,lim)
	Definir num, x Como Entero
	
	Para x<-1 Hasta lim Hacer
		Escribir "Ingrese numero"
		leer num
		vector[x]=num
	Fin Para
FinFuncion


//Presentar datos de un arreglo//
Funcion PresentarDatos(vector,1,lim)
	Escribir " Datos a presemtar del arreglo del primer ejercicio"
	Si lim > 0 Entonces
		Para x<-1 Hasta lim Hacer
			Escribir " Vector # ",x," : ",vector[x]
		Fin Para
	SiNo
		Escribir " Debe ingresar datos en el arreglo, ejecute la opción #1."
	FinSi
FinFuncion

//Buscar valores en un arreglo//
Funcion BuscarArreglo(busqueda,vector,lim)
	Definir encontrado Como Logico
	resultado = Falso
	Para x<-1 Hasta lim Con Paso 1 Hacer
		si busqueda = vector[x] Entonces
			Escribir " "
			Escribir " El digito ",busqueda," se encuentra dentro en el vector # ",x
			resultado = Verdadero
		FinSi
	Fin Para
	
	Si resultado = Falso Entonces
		Escribir " "
		Escribir " El digito ",busqueda," no se encontro en ningún vector."
	FinSi
FinFuncion

//Elemento mayor de un arreglo//
Funcion ElementoMayor (vector, lim)
	
	nmayor = vector[1]
	
	Para x<-1 Hasta lim Con Paso 1 Hacer
		si vector[x] <> 0 Entonces
			Para x = 1 Hasta lim Hacer
				
				si vector[x] > nmayor Entonces
					nmayor = vector[x]
					xmayor = x
				FinSi
				
			Fin Para
			Escribir "La posición ",xmayor," = ","[" ,nmayor, "] "," contiene el numero mayor."
		FinSi
	Fin Para
	
	
	
FinFuncion

//Presentar un arreglo de manera invertida//
Funcion ArregloInvertido(vector,lim)
	
	Para n = 1 Hasta lim  con paso 1 Hacer
		Para x = 1 Hasta lim con paso 1 Hacer
			
			si vector[n] > vector[x] Entonces
				
				temporal = vector[n]
				
				vector[n] = vector[x]
				
				vector[x] = temporal
			FinSi
		Fin Para
	Fin Para
	
	Escribir " "
	Escribir "Los vectores de forma invertida son:"
	
	Para n <- 1 Hasta lim con paso 1 Hacer
		Escribir vector[n]
	Fin Para
FinFuncion

// Suma de arreglos //

Funcion SumaVectores(lim2)
	
	Dimension VectorA[15]
	Dimension VectorB[15]
	Dimension VectorC[15]
	Definir num, x como numerico
	
	Para x=1 Hasta lim2 Hacer
		Escribir sin saltar "Introduzca un número para el Vector A #",x
		Leer VectorA[x]
		Escribir sin saltar "Introduzca un número para el Vector B #",x
		Leer VectorB[x]
	Fin Para
	
	Para x=1 Hasta lim2 Hacer
		VectorC[x]=VectorA[x]+VectorB[x]
	Fin Para
	
	Escribir " "
	
	Para x=1 Hasta lim2 Hacer
		Escribir "La suma de los vectores 1 y 2 #",x," dan como resultado Suma[",x,"]"," = ",VectorC[x]
		Escribir " "
	Fin Para
Fin Funcion

//Guardar numeros primos en un arreglo//
Funcion NumerosPrimos (total)
	Dimension VectorNormal[999]
	Dimension VectorPrimo[999]
	contador = 0
	z = 1
	
	Para x <- 1 Hasta total  Hacer
		
		Escribir "ingrese el digito #",x,":"
		Leer VectorNormal[x]
		
		
		Si VectorNormal[x] = 1
			VectorPrimo[x] <- VectorNormal[x]
		FinSi
		
		
		Mientras z <= VectorNormal[x] Hacer
			Si VectorNormal[x] mod z == 0 Entonces
				contador = contador + 1
			FinSi
			z=z+1
		Fin Mientras
		
		
		
		Si contador = 2 Entonces
			VectorPrimo[x] <- VectorNormal[x]
		FinSi
		
		si contador > 0 y z > 0 Entonces
			contador = 0; z = 1
		FinSi
		
	Fin Para
	
	Escribir " "
	Escribir "Los vectores primos son: "
	Para x <- 1 Hasta total Hacer
		si VectorPrimo[x] <> 0 Entonces
			Escribir VectorPrimo[x]
		FinSi
	Fin Para
FinFuncion

// Promedio de notas de un arreglo //
Funcion PromedioArreglo(totalnotas)
	Dimension nota[999]
	Definir prmedio, x como numerico
	
	Para x<-1 Hasta totalnotas Con Paso 1 Hacer
		Escribir Sin Saltar "Ingrese la nota #",x,": "
		Leer num
		nota[x]=num
	Fin Para
	
	Para x<-1 Hasta totalnotas Con Paso 1 Hacer
		sumanotas= sumanotas+nota[x]
	Fin Para
	
	prmedio= sumanotas/totalnotas
	
	Escribir " "
	Escribir "Promedio de las notas ingresadas:",prmedio
FinFuncion

// Presentar una cadena caracter por caracter //

Funcion LetraPorLetra (Palabra,TamañoPalabra)
	pos=1
	
	Escribir " "
	Repetir
		Letra = Subcadena(Palabra,pos,pos)
		Escribir Letra
		pos=pos+1
	Hasta Que pos > TamañoPalabra
FinFuncion

// Presentar una cadena de manera invertida //

Funcion CadenaInvertida(Palabra, TamañoPalabra)
	Definir aux como caracter
	aux=""
	
	
	Escribir " "
	Mientras TamañoPalabra > 0 Hacer
		aux = aux + Subcadena(palabra,TamañoPalabra,TamañoPalabra)
		TamañoPalabra = TamañoPalabra - 1
	Fin Mientras
	Escribir Palabra," se escribe de manera invertida como: " aux
FinFuncion

// Contar vocales de una cadena //

Funcion ContarVocales(Palabra,TamañoPalabra)
	aux = 1
	vcales= 0
	
	Escribir " "
	Mientras  aux <= TamañoPalabra Hacer
		Segun Subcadena(Palabra,aux,aux) Hacer
			"a" o "A" o "e" o "E" o "i" o "I" o "o" o "O" o "u" o "U":
				vcales = vcales + 1
		Fin Segun
		aux=aux+1
	Fin Mientras
	Escribir "La frase/palabra introducida tiene un total de ",Vcales," vocales."
FinFuncion

// Contar palabras de una frase //

Funcion ContarPalabras(Palabra,TamañoPalabra)
	espacios = 1
	
    Para aux <- 1 hasta TamañoPalabra hacer
		Segun Subcadena(Palabra,aux,aux) Hacer
			" " :
				Espacios = espacios + 1
		FinSegun
		
	FinPara
	
	Escribir "El parrafo intruducido tiene ", espacios," palabras."
	
FinFuncion

// Encontrar cáracter en una cadena //
Funcion EncontrarCaracter(Palabra,TamañoPalabra)
	Resultado=Falso
	
	Escribir "Escriba el carácter que desea encontrar"
	Leer Busqueda
	
	
	Escribir " "
	Para aux<-1 Hasta TamañoPalabra Con Paso 1 Hacer
		Si Subcadena(Palabra,aux,aux)=busqueda Entonces
			Escribir "El carácter ",busqueda," se encuentra en la posición #",aux
			Resultado=Verdadero
		FinSi
	Fin Para
	
	Si resultado=Falso Entonces
		Escribir "El carácter ",busqueda," no se encontró en ninguna posición."
	FinSi
FinFuncion

// Indicar si dos cadenas son iguales, caracter por caracter //

Funcion CaracterPorCaracter(Palabra,TamañoPalabra,Palabra2,TamañoPalabra2)
	
	Escribir " "
	Para aux<-1 Hasta TamañoPalabra Con Paso 1 Hacer
		
		Si Subcadena(Palabra,aux,aux)=Subcadena(Palabra2,aux,aux) Entonces
			Re=Verdadero
		SiNo
			Re=Falso
		FinSi
	Fin Para
	
	Si re=Verdadero Entonces
		Escribir "Las palabras/párrafos introducidos son iguales."
		
		Repetir
			Letra =Subcadena(Palabra,p,p)
			Letra2 = Subcadena(Palabra2,p,p)
			Escribir Letra,"  ",Letra2
			p=p+1
		Hasta Que p > TamañoPalabra y p > TamañoPalabra2
		
	SiNo
		Escribir "Las palabras/párrafos introducidos no son iguales."
		
		Repetir
			Letra = Subcadena(Palabra,p,p)
			Letra2 = Subcadena(Palabra2,p,p)
			Escribir Letra,"  ",Letra2
			p=p+1
		Hasta Que p > TamañoPalabra y p > TamañoPalabra2
		
	FinSi
FinFuncion

// Indicar si una palabra es palindromo //
Funcion Palindromo(Palabra,TamañoPalabra)
	
	a=1
	x=0
	
	Mientras a < TamañoPalabra Hacer
		si Subcadena(palabra,a,a) <> Subcadena(palabra,TamañoPalabra,TamañoPalabra) Entonces
			x = x + 1
		FinSi
		a= a + 1
		TamañoPalabra= TamañoPalabra - 1
	FinMientras
	
	Si x == 0 Entonces
		Escribir "La palabra ",palabra," si es palíndromo."
	SiNo
		Escribir "La palabra ",palabra," no es palíndromo."
	FinSi
FinFuncion
// Algoritmo principal
Algoritmo Menu
	Definir pos,resp,limite,dato Como Entero
	Definir opcion,opc1,opc2,opc3,frase Como Caracter
	Dimension menuPrincipal[4],menuNumeros[21],menuRazonamiento[11],menuCadenaVectores[16]
    Dimension arreglo[100]	
	Dimension Vector[999]
	limite=0
	// ***** MENU PRINCIPAL ******
	menuPrincipal[1] = "1) Ejercicios Basicos"
	menuPrincipal[2] = "2) Ejercicios Razonamiento"
	menuPrincipal[3] = "3) Ejercicios Cadenas y Vectores"
	menuPrincipal[4] = "4) Salir"
	
	// ***** EJERCICIOS BASICOS ******
	// dado 2 numeros presentar la suma
	menuNumeros[1] = "1) Sumar dos numeros"
	// dado 2 numeros si el primero es  >= al segundo sumarlo sino restarlo
	menuNumeros[2] = "2) Sumar o restar"
	// ingrese 2 numeros con una operacion matematica("+,-,*,/,%,^") 
	// realizar y presentar la respuesta de la operacion matematica
	menuNumeros[3] = "3) Caculadora"
	// presentar el mayor de 2 numeros ingresados
	menuNumeros[4] = "4) Mayor de dos numeros"
	// presentar el menor de 3 numeros ingresados
	menuNumeros[5] = "5) Mayor de tres numeros"
	// La despensa "El Baraton", a todas las ventas que pasen de $100,
	//se les aplicará un  descuento del 10%, a  todo los demás se les aplicará sólo el 5% 
	// luego del recargo del iva del 12%
	menuNumeros[6] = "6) Comprar productos"
	// Ingresar el nombre,horas trabajadas, valor hora, horas50 y horas100 de sobretiempo
	// se pide calcular el rol del pago del trabajor dado los siguientes calculos.
	// sueldo del trabajador(horasTrajabadas por el valorHora)
	// el sobretiempo=(horas50*1.5+horas100*2)*Valor
	// total ingreos = sueldo+sobretiempo
	// descuento= totalingresos*9.35%
	// liquido= totalingresos - descuento
	menuNumeros[7] = "7) Pago de Sueldos"
	// dada dos notas calcular el promedio y presentar el mensaja "Aproboado" si el promedio
	// mayor 70 y reprobado si es menor que 70
	menuNumeros[8] = "8) Notas de Alumnos"
	// dado un numero indicar si es positivo o negativo
	menuNumeros[9] = "9) Positivo/Negativo"
	// dado un numero indicar si es par o impar
	menuNumeros[10] = "10) Par e Impar"
	// dado dos nmeros indicar si el numero1 es multiplo del numero2
	menuNumeros[11] = "11) Multiplo de cualquier Numero"
	// dada una secuencia de numeros presentar el mayor y el menor de esa esa secuencia
	menuNumeros[12] = "12) El Mayor y Menor de una secuencia de numeros"
	// dada una secuencia de numeros presentar cuantos son numeros positivos
	menuNumeros[13] = "13) Positivos de una secuencia de numeros"
	// dada una serie d enumeros presntar la suma de lo numeros multiplos de 5
	menuNumeros[14] = "14) Suma de los multiplos de cinco de una serie de numeros"
	// presentar los numeros pares desde 2 hasta N
	menuNumeros[15] = "15) Generar y presentar los Numeros pares del 2 a N"
	// dada una serie de numeros presente el numero siempre y cuando sea negativo
	// y antes de finalizar presente la cantidad, la suma y el promedio de dichos numeros negativos
	menuNumeros[16] = "16) Cantidad, Suma y Promedio de numeros negativos de una serie"
	// dado una serie de numeros presentar el promedio de los numeros que sean >= 100 and <=500 
	menuNumeros[17] = "17) Serie promedio de rango de numeros"
	// Ingrese un numero si este es postivo finalice sino vuelva a ingresarlo
	menuNumeros[18] = "18) Validar que un numero sea positivo"
	// dado dos numeros base y exponente. calcular la base elevada al exponente 
	menuNumeros[19] = "19) Base y exponente"
	// dada una serie de numeros calcular los factorles de dichos numero la serie termina
	// cuando un numero de la serie sea igual a cero.
	menuNumeros[20] = "20) Serie Factoriales"
	menuNumeros[21] = "21) Salir"
	
	// ******EJERCICIOS DE RAZONAMIENTO SIN USAR CADENAS Y VECTORES*******
	// contar los digitos de cualquier numero: ej: 342 = 3 digitos
	menuRazonamiento[1] = "1) Cuantos Digitos tiene un Numero"
	// ejemplo: binario= 1111101000  ==> 1000 (decimal) Respuesta = 3E8 (hexadecimal)
	menuRazonamiento[2] = "2) Covertir de Base 2 a Base 10"
	// ejemplo: binario= 1100100  ==> 100 (decimal) => 
	menuRazonamiento[3] = "3) Convertir de Base 2 a Base 16 pasando por Base 10"
	// ejemplo Si n=8 => La serie de fibonacci es = 0 1 1 2 3 5 8 13
	menuRazonamiento[4] = "4) Serie de fibonacci hasta N"
	// ejemplo si numero=10 ==> resp= 1,2,5
	menuRazonamiento[5] = "5) Divisores de un Numero"
	// cuando los divisores de un numero es igual al numero se dice que ese numero es perfecto
	// si numero es 6 los divisores son 1,2,3 sumados igual a 6 es igual al numero ==> es perfecto
	menuRazonamiento[6] = "6) Numero Perfecto"
	// un numero es primo cuando no tiene divisores excepto el 1 y el propio numero
	// ejemplo 5 no tiene divsores es "primo"  9 tiene como divisor al 3 por tanto no es "primo"
	menuRazonamiento[7] = "7) Numero Primo"
	// dos numeros son amigos si la suma de los divisores del primer numero es = a la suma de los
	// divisores del segundo numero Eje: numero=6 (1+2+3)=6 numero 25(1+5)=6 ==> 6=6 son amigos 
	menuRazonamiento[8] = "8) Verificar si dos numeros son Amigos"
	// dos numeros son primos gemelos si ambos numeros son primos en valor absoluto y la resta de
	// los 2 numeros es == 2 eje: 11 y 13 abs(11-13)==2
	menuRazonamiento[9] = "9) Verificar si dos Numeros son Primos Gemelos"
	// por cada numero de una serie verifique si es primo, si es primo contarlo
	menuRazonamiento[10] = "10) De una serie de numeros cuantos son Primos"
	menuRazonamiento[11] = "11) Salir"
	
	// ****** EJERCICIOS DE CADENAS Y VECTORES *******
	// dado n valores ingresarlos a un arreglo
	menuCadenaVectores[1] = "1) Llenar un arreglo de numeros"
	// recorrer un arreglo y presentarlo uno por uno
	menuCadenaVectores[2] = "2) Presentar los elementos de un arreglo"
	// buscar el dato y presentar la posicion en que se encuntra el dato en el arreglo
	menuCadenaVectores[3] = "3) Buscar un dato en un arreglo"
	// Presentar el mayor de los datos de un arreglo
	menuCadenaVectores[4] = "4) Elemento Mayor de un arreglo"
	// Dado un arreglo copie los datos en otro de atras para delante 
	menuCadenaVectores[5] = "5) Copiar los datos de un arreglo en otro invertido"
	// Dado los arreglos1 y arreglos 2 sumarlos valor por valor del arreglo1 y arreglo2
	// y asigmarlo en el arreglo3(los tres arreglos deben tener la misma longitud)
	menuCadenaVectores[6] = "6) Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
	// de una serie de numeros solo guardar en un arreglo los nymeros primos
	menuCadenaVectores[7] = "7) Dado N numeros guardar en un arreglo los numeros primos"
	// dadas las notas guardades en un arreglos obtener el promedio de las notas >= 70
	menuCadenaVectores[8] = "8) Dadas los datos de un arreglo obtener el promedio de las notas >=> 70"
	// presentar caracter por caracter de una cadena
	menuCadenaVectores[9] = "9) Dada una cadena presentarla caracter por caracter"
	// presentar  una cadena al reves
	menuCadenaVectores[10] = "10) Dada una cadena presentarla invertida"
	// contar las vocales de jque tiene una cadena cualquiera
	menuCadenaVectores[11] = "11) Dada una cadena indicar cuantos vocales tiene"
	// contar las palabras de una cadena
	menuCadenaVectores[12] = "12) Dada una cadena indicar cuantos palabras tiene"
	// buscar si un caracteer ingresado se encuentra en una cadena si es asi presentarMenu
	// la posicion en que se encuntra ese caracter en la cedena caso contrario presentar -1
	menuCadenaVectores[13] = "13) Presentar la posicion de un caracter buscado dentro de una cadena"
	// comparar 2 cadenas csracter por catacter e indicar si son iguales o no
	menuCadenaVectores[14] = "14) Dadas dos cadenas indicar si son iguales caracter por caracter"
	// una cadena es palaindorma si se lee de la misma forma de izquierda a derecha 
	// ejemplo "ana"
	menuCadenaVectores[15] = "15) Indicar si una cadena es palindroma"
	menuCadenaVectores[16] = "16) Salir"
	// cuando se escoja la opcion 4 termina el programa
	opcion=''
	Mientras opcion <> "4" Hacer
		Borrar Pantalla
		opcion = presentarMenu("********** M E N U   P R I N C I P A L **********",menuPrincipal,4)
		Borrar Pantalla
		Segun opcion Hacer
			"1":
				opc1=""
				Mientras opc1<>"21" Hacer
					opc1= presentarMenu("********** M E N U  E J E R C I C I O S  B A S I C O S **********",menuNumeros,21)
					Borrar Pantalla
					Segun opc1 Hacer
						"1":
							Escribir " 1) Sumar dos numeros"
							Esperar 1 Segundos
							Imprimir "";
							Imprimir " Ingrese por favor el primer sumando"
							Leer num1
							Imprimir " Ingrese el segundo sumando"
							Leer num2
							Imprimir calculadora("+",num1,num2,1)
							Imprimir " Gracias por su visita, volverá al menú de opciones"
							Esperar 4 Segundos
							Limpiar Pantalla
							
						"2":
							Imprimir " 2) Sumar o restar"
							Imprimir ""
							Imprimir " Si el primero numero es el mayor, se sumarán los datos ingresados, de los contrario se los restará"
							Esperar 1 Segundos
							Imprimir ""
							Imprimir " Ingrese el primer numero"
							Leer num1
							Imprimir " Inrgese el segundo numero"
							Leer num2
							si num1>=num2 Entonces
							    n= calculadora("+",num1,num2,1)
							SiNo
								n=calculadora("-",num1,num2,1)
							FinSi
							Imprimir " Gracias por su visita, volviendo al menú de opciones...."
							Esperar 4 Segundos
							Limpiar Pantalla
							
						"3":
							Escribir " 3) Caculadora"
							Escribir " Ingrese Operacion[+,-,*,/,%,^]: " Sin Saltar
							Leer ope
							Escribir " Ingrese Numero1: " Sin Saltar
							Leer num1
							Escribir " Ingrese Numero2: " Sin Saltar
							Leer num2
							n=calculadora(ope,num1,num2,1)
							Escribir " Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"4":
							Imprimir " 4) Mayor de dos numeros"
							Esperar 1 Segundos
							mayrmen(num1,2,0)
							
							Imprimir ""
							Imprimir " Fin del proceso, volviendo al menu de opciones"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"5":
							Imprimir " 5) Mayor de tres numeros"
							Esperar 1 Segundos
							mayrmen(num1,3,0)
							
							Imprimir ""
							Imprimir " Gracias por la visita, regresará al menu de opciones"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"6":
							Imprimir " 6) Comprar productos"
							Imprimir ""
							Esperar 1 Segundos
							Imprimir " Ingrese el valor del producto"
							Leer num1
							si num1>100 Entonces
								n12=porcentaje(num1,12)
								num=porcentaje(num1,10)
								num1=num1+n12+num
							SiNo
								n12=porcentaje(num1,12)
								num=porcentaje(num1,5)
								num1=num1+n12+num
							FinSi
							Imprimir " El valor a pagar es: ",num1
							Imprimir " Volviendo al menu anterior..."
							Esperar 3 segundos
							Limpiar Pantalla
							
						"7":
							nombr=""
							Definir pxh,horast,horas50,horas100 Como Real
							Imprimir " 7) Pago de Sueldos"
							Esperar 1 Segundos
							Imprimir ""
							Imprimir " Escriba el nombre del trabajador"
							Leer nombr
							Imprimir " Ingrese la paga por hora"
							Leer pxh
							Imprimir " Ingrese las horas trabajadas dentro del horario normal"
							Leer horast
							Imprimir " Ingrese las horas trabajadas con 50% de sobrecargo"
							Leer horas50
							Imprimir " Ingrese las horas trabajadas con 100% de sobrecargo"
							Leer horas100
							Limpiar Pantalla
							Imprimir " Sueldo en horas de trabajo normal"
							sueldo= calculadora("*",horast,pxh,0)
							Imprimir ""
							Imprimir sueldo
							Imprimir ""
							Imprimir " Paga por sobre tiempo"
							x=calculadora("*",horas50,1.5,0)
							a=calculadora("*",horas100,2,0)
							c=calculadora("+",x,a,0)
							sobret=calculadora("*",c,pxh,0)
							Imprimir ""
							Imprimir sobret
							Imprimir ""
							Imprimir " Ingreso total"
							tot=calculadora("+",sueldo,sobret,0)
							Imprimir ""
							Imprimir tot
							Imprimir ""
							Imprimir " Descuento"
							b=calculadora("*",tot,9.35,0)
							desc=calculadora("/",b,100,0)
							Imprimir ""
							Imprimir " Ingreso final"
							Imprimir ""
							fina=calculadora("-",tot,desc,0)
							Imprimir fina
							Imprimir " Gracias por su visita, presione cualquier tecla para regresar al menu"
							Esperar Tecla
							Limpiar Pantalla
							
						"8":
							Imprimir " 8) Notas de Alumnos"
							Imprimir ""
							Imprimir " Se tomará 2 notas si el promedio es mayor a 70 aprobará"
							n=promedio(num1,2)
							si n>70 Entonces
								Imprimir " Aprobado"
								Imprimir ""
							SiNo
								Imprimir " Esfuerzate para aprobar la proxima"
								Imprimir ""
							FinSi	
							Imprimir " Fin del proceso. Volviendo al menú de opciones"
							Esperar 2 Segundos
							Limpiar Pantalla
							
						"9":
							Imprimir " 9) Positivo/Negativo"
							Imprimir ""
							n=negativpositiv(num1,1,0)
							si n=1 Entonces
								Imprimir " El numero es positivo"
							SiNo
								si n=2 Entonces
									Imprimir " El numero es neutro"
								SiNo
									si n=0 Entonces
										Imprimir " El numero es negativo"
									FinSi
								FinSi
							FinSi
							Imprimir " En breve regresará al menu"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"10":
							Imprimir " 10) Par e Impar"
							Imprimir ""
							Imprimir " Por favor ingrese un numero"
							Leer num1
							n=paroimpar(num1)
							si n>0 Entonces
								Imprimir " El numero ingresado ",num1," es par"
							SiNo
								Imprimir " El numero ingresado ",num1," es impar"
							FinSi
							Imprimir " Será redirigido al menu de opciones en un momento"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"11":
							Imprimir " 11) Multiplo de cualquier Numero"
							Imprimir ""
							Imprimir " Se ingresará 2 numeros y se determinará si el primero numero es multiplo del segundo"
							Imprimir ""
							Imprimir " Ingrese el primer numero"
							Leer num1
							Imprimir ""
							Imprimir " Ingrese el segundo numero"
							Leer num2
							n=multiplos(num1,num2)
							si n>0 Entonces
								Imprimir num1," Es multiplo de ",num2
							SiNo
								Imprimir num1, " No es multiplo de ",num2
							FinSi
							Imprimir " Regresando al menu de opciones..."
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"12":
							Imprimir " 12) El Mayor y Menor de una secuencia de numeros"
							Imprimir ""
							Imprimir "¿cuantos numeros tendrá la secuencia?"
							Leer c
							a=1
							Imprimir ""
							mayrmen(num1,c,1)
							Imprimir " Regresando al menu de opciones"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"13":
							Imprimir " 13) Positivos de una secuencia de numeros"
							Imprimir ""
							Imprimir "¿cuantos numeros tendrá la secuencia?"
							Leer c
							n=negativpositiv (num1,c,1)						    
							Imprimir ""
							Imprimir " Regresando al menu de opciones"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"14":
							Imprimir " 14) Suma de los multiplos de cinco de una serie de numeros"
							Imprimir ""
							Imprimir "¿cuantos numeros tendrá la serie?"
							Leer c
							para a=1 Hasta c Hacer
								Imprimir " Ingrese un numero "
								Leer num1
								n=multiplos(num1,5)
								si n=1 Entonces
									x=calculadora("+",x,num1,0)
									Imprimir ""
									
								FinSi
							FinPara
							Imprimir " Suma total: ",x
							Imprimir ""
							Imprimir " Fin del proceso. Volviendo al menú de opciones"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"15":
							Imprimir " 15) Generar y presentar los Numeros pares del 2 a N"
							Imprimir ""
							Imprimir "¿cuantos numeros recorrera la secuencia?"
							Leer num1
							Limpiar Pantalla
							Imprimir " Numeros pares desde 2 al numero ingresado"
							x=2
							Imprimir x
							Mientras x<= num1-2 Hacer
								
								x=calculadora("+",x,2,0)
								Imprimir x
							FinMientras
							Imprimir ""
							Imprimir "Fin del proceso, en breve regresara al menu de opciones "
							Esperar 4 Segundos
							Limpiar Pantalla
							
						"16":
							Imprimir " 16) Cantidad, Suma y Promedio de numeros negativos de una serie"
							Imprimir ""
							Imprimir " ¿cuantos numeros desea ingresar?"
							Leer n
							Imprimir ""
							Imprimir " Ingrese una serie de numeros, se mostrara los negativos y al final se mostrara mas datos"
							para x=1 Hasta n Hacer
								Imprimir " Ingrese el º",x," numero"
								Leer num1
								num=calculadora("/",num1,2,0)
								si num<>0 Entonces
									sum=sum+num1
									a=a+1
								FinSi
								num2=calculadora("/",sum,a,0)
								
							FinPara
							Limpiar Pantalla
							Imprimir " La cantidad de numeros impares ingresados es: ",a
							Imprimir ""
							Imprimir " La suma de los numeros impares es: ",sum
							Imprimir ""
							Imprimir " El promedio de los numeros es: ",num2
							Imprimir ""
							Imprimir " Regresara al menu de opciones en unos segundos"
							Esperar 4 segundos
							Limpiar Pantalla
							
						"17":
							Imprimir " 17) Serie promedio de rango de numeros"
							Imprimir ""
							Imprimir " Se ingresara una serie de numeros y se promediara los que esten entre 100 y 500"
							Esperar 5 Segundos
							Limpiar Pantalla
							Imprimir " Cuantos numeros tendra la serie"
							Leer n
							Para x=1 Hasta n
								Imprimir " Escriba el º",x," numero"
								Leer num1
								si num1>=100 y num1<=500 Entonces
									a=calculadora("+",a,1,0)
									sum=calculadora("+",sum,num1,0)
								FinSi
							FinPara
							num2=calculadora("/",sum,a,0)
							Imprimir " El promedio de los numeros mayores a 100 y menores a 500 es: "
							Imprimir num2
							Imprimir ""
							Imprimir " Proceso finalizado, regresando al menu anterior..."
							Esperar 4 Segundos
							Limpiar Pantalla
							
						"18":
							Imprimir " 18) Validar que un numero sea positivo"
							Imprimir ""
							n=negativpositiv(num1,1,0)
							si n=2 Entonces
								Imprimir " El numero es neutro"
							SiNo
								si n=1 Entonces
									Imprimir " El numero es positivo"
								SiNo
									si n=0 Entonces
										Mientras n=0 Hacer
											Imprimir " El numero es negativo"
											Imprimir ""
											Imprimir " Por favor ingrese nuevamente un numero"
											n=negativpositiv(num1,1,0)
										FinMientras
									FinSi
									Imprimir ""
									Imprimir " Numero positivo, fin del proceso"
									
								FinSi
							FinSi					
							Imprimir ""
							Imprimir " Regresando al menu de opciones"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"19":
							Imprimir " 19) Base y exponente"
							Imprimir ""
							Imprimir " Ingrese la base de la operacion"
							Leer num1
							Imprimir " Ingrese el exponente de la operacion"
							Leer num2
							n=calculadora("^",num1,num2,1)
							Imprimir " Fin del proceso. Volviendo al menú de opciones"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"20":
							Imprimir " 20) Serie Factoriales"
							Imprimir ""
							Imprimir "¿cuantos numeros tendra la serie?"
							Leer x
							para n=1 Hasta x Hacer
								Imprimir " Ingrese el º",n," numero"
								Imprimir ""
								Leer num
								num1=1
								Para a=1 hasta num Hacer
									num1=calculadora("*",num1,a,0)
								FinPara
								Imprimir " El factorial de ",num," es: ",num1
							FinPara
							Imprimir ""
							Imprimir " Fin del porceso, gracias por su visita"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"21":
							Escribir " 21) Salir"
							Escribir " Regresando Al Menu Principal..."
							Esperar 2 Segundos
							Limpiar Pantalla
							
						De Otro Modo:
							Escribir " Opcion Incorrecta"
							Esperar 3 Segundos
							Limpiar Pantalla
					Fin Segun
				Fin Mientras
			"2":
				opc2=""
				Mientras opc2<>"11" Hacer
					opc2= presentarMenu("******* M E N U  E J E R C I C I O S  D E  R A Z O N A M I E N T O *******",menuRazonamiento,11)
					Borrar Pantalla
					Segun opc2 Hacer
						"1":
							Escribir " 1) Cuantos Digitos tiene un Numero"
							Imprimir " Ingrese el numero que desee"
							Leer num1
							Mientras num1>0 Hacer
								num1=trunc(calculadora("/",num1,10,0))
								x=x+1
							FinMientras
							Imprimir ""
							Imprimir " El numero ingresado tiene: ",x," digitos"
							Imprimir " Fin del porceso, gracias por su visita. Volviendo al menú de opciones"
							Esperar 3 Segundos	
							Limpiar Pantalla
						"2":
							Imprimir " 2) Covertir de Base 2 a Base 10"
							Imprimir " ingrese el numero binario a transformar"
							Leer binary
							cerradura = 1 
							transformar(binary, cerradura)
							Imprimir " Fin del proceso. Volviendo al menú de opciones"
							Esperar 4 Segundos
							Limpiar Pantalla
							
						"3":
							Escribir " 3) Convertir de Base 2 a Base 16 pasando por Base 10"
							Imprimir " Ingrese el numero a convertir"
							Leer binary
							cerradura = -1 
							transformar(binary, cerradura)
							Imprimir " Fin del proceso. Volviendo al menú de opciones"
							Esperar 4 Segundos
							Limpiar Pantalla
							
						"4":
							Escribir " 4) Serie de fibonacci hasta N"
							Imprimir " Ingrese N"
							Leer n
							Escribir Respuesta(n );
							Imprimir " Fin del proceso. Volviendo al menú de opciones"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"5":
							Escribir  " 5) Divisores de un Numero"
							Escribir " Escriba un numero"
							Leer num
							cerradura = -1
							DivisoresyPerfecto( num, cerradura )
							Imprimir " Fin del proceso. Volviendo al menú de opciones"
							Esperar 4 Segundos
							Limpiar Pantalla
							
						"6":
							Imprimir " 6) Numero Perfecto"
							Escribir " Escriba un numero"
							leer num
							cerradura = 1
							DivisoresyPerfecto( num, cerradura )
							Imprimir " Fin del proceso. Volviendo al menú de opciones"
							Esperar 4 Segundos
							Limpiar Pantalla
							
						"7":
							Escribir " 7) Numero Primo"
							Escribir "Ingrese Numero: " Sin Saltar
							Leer num
							resp=primo(num)
							Si resp=1 Entonces
								Escribir num," Es Primo"
							SiNo
								Escribir num," No Es Primo"
							Fin Si
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
							Limpiar Pantalla
							
						"8":
							Imprimir " 8) Verificar si dos numeros son Amigos"
							Imprimir ""
							Imprimir "ingrese el primer numero por favor"
							Leer num1
							para x=1 Hasta num1-1 Con Paso 1 Hacer
								n=multiplos(num1,x)
								si n<>0 Entonces
									sum=calculadora("+",sum,x,0)
								FinSi
							FinPara
							Imprimir ""
							Imprimir "ahora ingrese el segundo numero"
							Leer num2
							Para x=1 Hasta num2-1 Con Paso 1 Hacer
								n=multiplos(num2,x)
								si n<>0 Entonces
									a=calculadora("+",a,x,0)
								FinSi
							FinPara
							si sum=num2 y a=num1 Entonces
								Imprimir "los numeros ingresados son amigos"
							SiNo
								Imprimir "los numeros ingresados no son amigos"
							FinSi
							Imprimir ""
							Imprimir "fin del proceso.. Volviendo al menú de opciones"
							Esperar 3 Segundos
							sum=0
							a=0
							Limpiar Pantalla	
							
							
						"9":
							Escribir " 9) Verificar si dos Numeros son Primos Gemelos"
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer num1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer num2
							Si primo(num1)=1 y primo(num2)=1 y abs(num1-num2)=2 Entonces
								Escribir num1," y ",num2," Son Primos Gemelos"
							SiNo
								Escribir num1," y ",num2," No Son Primos Gemelos"
							Fin Si
							resp=primo(num)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
							Limpiar Pantalla
							
						"10":
							Escribir " 10) De una serie de numeros cuantos son Primos"
							Imprimir "se contara cuantos numeros primos se encuentran en una serie numeritca"
							Imprimir ""
							Imprimir "indique cuantos numeros va a ingresar "
							Leer sec
							para x=1 Hasta sec Hacer
								Imprimir "ingrese el º",x," numero por favor"
								Leer num1
								bandera=primo(num1)
								si bandera=1 Entonces
									Imprimir num1 ," es un numero primo "
									Esperar 2 Segundos
									Limpiar Pantalla
									Imprimir ""
									n=n+1
								SiNo
									Imprimir num1," no es un numero primo"
									Esperar 2 Segundos
									Limpiar Pantalla
								FinSi
							FinPara
							Imprimir "cantidad de numeros primos ingresados: ",n
							Imprimir ""
							Imprimir "fin del proceso gracias por su visita"
							Esperar 3 Segundos
							Limpiar Pantalla
							
						"11":
							Escribir " 11) Salir"
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							Limpiar Pantalla
							
						De Otro Modo:
							Escribir "Opcion Incorrecta. Volviendo al menú de opciones"
							Esperar 3 Segundos
							Limpiar Pantalla
					Fin Segun
				Fin Mientras
			"3":
				opc3=""
				Mientras opc3<>"16" Hacer
					opc3= presentarMenu("********** M E N U  E J E R C I C I O S  C A D E N A S  Y  V E C T O R E S **********",menuCadenaVectores,16)
					Borrar Pantalla
					Segun opc3 Hacer
						"1":
							Escribir "1) Llenar un arreglo de numeros"
							Escribir Sin Saltar " Ingrese cuantos valores va a ingresar: "
							Leer lim
							IngresoArreglo(vector,lim)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 segundos
							Borrar Pantalla
							
						"2":
							Escribir "2) Presentar los elementos de un arreglo"
							PresentarDatos(vector,1,lim)
							Esperar 2 segundos
							Borrar Pantalla
							
						"3":
							Escribir "3) Buscar un dato en un arreglo"
							PresentarDatos(vector,1,lim)
							Escribir Sin Saltar " Ingrese el número que desea buscar en el arreglo: "
							Leer busqueda
							BuscarArreglo(busqueda,vector,lim)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 segundos
							Borrar Pantalla
							
						"4":
							Escribir "4) Elemento Mayor de un arreglo"
							PresentarDatos(vector,1,lim)
							Esperar 1 segundos
							Escribir " "
							ElementoMayor(vector,lim)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 segundos
							Borrar Pantalla
							
						"5":
							Escribir "5) Copiar los datos de un arreglo en otro invertido"
							PresentarDatos(vector,1,lim)
							Esperar 1 segundos
							Escribir " "
							ArregloInvertido(vector,lim)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 segundos
							Borrar Pantalla
							
						"6":
							Escribir "6) Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
							Escribir Sin Saltar " Ingrese la cantidad de números que ingresará en el arreglo: "
							Leer lim2
							SumaVectores(lim2)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 segundos
							Borrar Pantalla
							
						"7":
							Escribir "7) Dado N numeros guardar en un arreglo los numeros primos"
							Escribir " Ingrese la cantidad de números a ingresar"
							Leer total
							NumerosPrimos(total)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 segundos
							Borrar Pantalla
							
						"8":
							Escribir "8) Dadas los datos de un arreglo obtener el promedio de las notas >=> 70"
							Escribir Sin Saltar "Ingrese el total de notas que va a ingresar:"
							Leer totalnotas
							Escribir " "
							PromedioArreglo(totalnotas)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 segundos
							Borrar Pantalla
							
						"9":
							Escribir "9) Dada una cadena presentarla caracter por caracter"
							Escribir "Escriba lo que desee:"
							Leer Palabra
							TamañoPalabra=Longitud(Palabra)
							LetraPorLetra(Palabra,TamañoPalabra)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 segundos
							Borrar Pantalla
							
						"10":
							Escribir "10) Dada una cadena presentarla invertida"
							Escribir "Escriba lo que desee:"
							Leer Palabra
							TamañoPalabra=Longitud(Palabra)
							CadenaInvertida(Palabra,TamañoPalabra)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 segundos
							Borrar Pantalla
							
						"11":
							Escribir "11) Dada una cadena indicar cuantos vocales tiene"
							Escribir "Escriba lo que desee:"
							Leer Palabra
							TamañoPalabra=Longitud(Palabra)
							ContarVocales(Palabra,TamañoPalabra)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 segundos
							Borrar Pantalla
							
						"12": 
							Escribir "12) Dada una cadena indicar cuantos palabras tiene"
							Escribir "Escriba una frase/párrafo:"
							Leer Palabra
							TamañoPalabra=Longitud(Palabra)
							ContarPalabras(Palabra,TamañoPalabra)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 segundos
							Borrar Pantalla
							
						"13":
							Escribir "13) Presentar la posicion de un caracter buscado dentro de una cadena"
							Escribir "Escriba una palabra o párrafo"
							Leer Palabra
							TamañoPalabra=Longitud(Palabra)
							EncontrarCaracter(Palabra,TamañoPalabra)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 segundos
							Borrar Pantalla
							
						"14":
							Escribir "14) Dadas dos cadenas indicar si son iguales caracter por caracter"
							Escribir "Ingrese la primera palabra o párrafo:"
							Leer Palabra
							TamañoPalabra=Longitud(Palabra)
							Escribir "Ingrese la segunda palabra o párrafo:"
							Leer Palabra2
							TamañoPalabra2=Longitud(Palabra2)
							CaracterPorCaracter(Palabra,TamañoPalabra,Palabra2,TamañoPalabra2)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 segundos
							Borrar Pantalla
							
						"15":
							Escribir "15) Indicar si una cadena es palindroma"
							Escribir "Escriba una palabra:"
							Leer Palabra
							TamañoPalabra=Longitud(Palabra)
							Palindromo(Palabra,TamañoPalabra)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 segundos
							Borrar Pantalla
							
						"16":
							Escribir "16) Salir"
							Escribir "Volviendo al menú principal..."
							Esperar 2 Segundos
							Borrar Pantalla
						De Otro Modo:
							Escribir "Opción incorrecta"
							Esperar 2 segundos
			Borrar Pantalla
					Fin Segun
				Fin Mientras
			"4":
				Escribir " Gracias por usar el sistema"	
			De Otro Modo:
				Escribir " Opcion incorrecta"
		Fin Segun
    Fin Mientras
FinAlgoritmo

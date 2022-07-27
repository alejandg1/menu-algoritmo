// Funciones de usuario para el Algoritmo Menu
// Presenta el menu en la pantalla
Funcion opc = presentarMenu(titulo,opciones,lim) 
	Escribir titulo
	Escribir ""
	Para pos=1 Hasta lim  Hacer
		Escribir opciones[pos]
	Fin Para
	Escribir "Elija opcion[1...",lim,"]: "
	Leer opc
FinFuncion
//porcentaje
Funcion n=porcentaje(num1,num2)
	n=(num1*num2)/100
FinFuncion
//promedio
Funcion n = promedio (num1,num )
	para x=1 Hasta num Hacer
		Imprimir "ingrese el °",x," numero"
		Leer num1
		num2=num2+num1
	FinPara
	n=num2/num
FinFuncion
Funcion mayrmen(num1,c,a)
	para x=1 Hasta c Hacer
		Imprimir "ingrese el °",x," numero"
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
	Imprimir "el mayor numero es: ",num2
	si a=1 Entonces
		Imprimir "el numero menor es: ",num
	FinSi
FinFuncion
// Calcula el proceso matematico de dos numeros dada su operacion
Funcion n=calculadora(operacion,num1,num2)
	Si operacion = "+" Entonces
		n=num1+num2
		Escribir num1,"+",num2,"=",num1+num2
	SiNo
		Si operacion = "-" Entonces
			n=num1-num2
			
		SiNo
			Si operacion = "*" Entonces
				n=num1*num2
				
			SiNo
				Si operacion = "/" Entonces
					n=num1/num2
	//				Escribir num1,"/",num2,"=",num1/num2
				SiNo
					Si operacion = "%" Entonces
						n=num1%num2
						Escribir num1,"%",num2,"=",num1%num2
					SiNo
						Si operacion = "^" Entonces
							n=num1^num2
							Escribir num1,"^",num2,"=",num1^num2
						SiNo
							Escribir "Operacion Incorrecta, intentelo de nuevo"
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
    Escribir "Frase al revez: ",reves,"  No vocales: ",cv
FinFuncion
// Ingresar datos a un arreglo
Funcion ingresarArreglo(vector por referencia,lim)
	Definir num,pos Como Entero
	Para pos<-1 Hasta lim Hacer
		Escribir "Ingrese numero"
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
		 Escribir "Ingrese primero datos al arreglo"
	Fin Si
FinFuncion
// buscac un valor en un arreglo y retorna la posicion si lo encuentra sino retorna -1
Funcion posicion=buscarArreglo(buscado,vector,lim)
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
		Imprimir "ingrese un numero"
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
		Imprimir "cantidad de numeros positivos: ",a
	SiNo
		si num=2 Entonces
			Imprimir "la cantidad de numeros negativos es: ",b
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
// Algoritmo principal
Algoritmo Menu
	Definir pos,resp,limite,dato Como Entero
	Definir opcion,opc1,opc2,opc3,frase Como Caracter
	Dimension menuPrincipal[4],menuNumeros[21],menuRazonamiento[11],menuCadenaVectores[16]
    Dimension arreglo[100]	
	limite=0
	// ***** MENU PRINCIPAL ******
	menuPrincipal[1] = "1)Ejercicios Basicos"
	menuPrincipal[2] = "2)Ejercicios Razonamiento"
	menuPrincipal[3] = "3)Ejercicios Cadenas y Vectores"
	menuPrincipal[4] = "4)Salir"
	
	// ***** EJERCICIOS BASICOS ******
	// dado 2 numeros presentar la suma
	menuNumeros[1] = "1)Sumar dos numeros"
	// dado 2 numeros si el primero es  >= al segundo sumarlo sino restarlo
	menuNumeros[2] = "2)Sumar o restar"
	// ingrese 2 numeros con una operacion matematica("+,-,*,/,%,^") 
	// realizar y presentar la respuesta de la operacion matematica
	menuNumeros[3] = "3)Caculadora"
	// presentar el mayor de 2 numeros ingresados
	menuNumeros[4] = "4)Mayor de dos numeros"
	// presentar el menor de 3 numeros ingresados
	menuNumeros[5] = "5)Mayor de tres numeros"
	// La despensa "El Baraton", a todas las ventas que pasen de $100,
	//se les aplicará un  descuento del 10%, a  todo los demás se les aplicará sólo el 5% 
	// luego del recargo del iva del 12%
	menuNumeros[6] = "6)Comprar productos"
	// Ingresar el nombre,horas trabajadas, valor hora, horas50 y horas100 de sobretiempo
	// se pide calcular el rol del pago del trabajor dado los siguientes calculos.
	// sueldo del trabajador(horasTrajabadas por el valorHora)
	// el sobretiempo=(horas50*1.5+horas100*2)*Valor
	// total ingreos = sueldo+sobretiempo
	// descuento= totalingresos*9.35%
	// liquido= totalingresos - descuento
	menuNumeros[7] = "7)Pago de Sueldos"
	// dada dos notas calcular el promedio y presentar el mensaja "Aproboado" si el promedio
	// mayor 70 y reprobado si es menor que 70
	menuNumeros[8] = "9)Notas de Alumnos"
	// dado un numero indicar si es positivo o negativo
	menuNumeros[9] = "9)Positivo/Negativo"
	// dado un numero indicar si es par o impar
	menuNumeros[10] = "10)Par e Impar"
	// dado dos nmeros indicar si el numero1 es multiplo del numero2
	menuNumeros[11] = "11)Multiplo de cualquier Numero"
	// dada una secuencia de numeros presentar el mayor y el menor de esa esa secuencia
	menuNumeros[12] = "12)El Mayor y Menor de una secuencia de numeros"
	// dada una secuencia de numeros presentar cuantos son numeros positivos
	menuNumeros[13] = "13)Positivos de una secuencia de numeros"
	// dada una serie d enumeros presntar la suma de lo numeros multiplos de 5
	menuNumeros[14] = "14)Suma de los multiplos de cinco de una serie de numeros"
	// presentar los numeros pares desde 2 hasta N
	menuNumeros[15] = "15)Generar y presentar los Numeros pares del 2 a N"
	// dada una serie de numeros presente el numero siempre y cuando sea negativo
	// y antes de finalizar presente la cantidad, la suma y el promedio de dichos numeros negativos
	menuNumeros[16] = "16)Cantidad, Suma y Promedio de numeros negativos de una serie"
	// dado una serie de numeros presentar el promedio de los numeros que sean >= 100 and <=500 
	menuNumeros[17] = "17)Serie promedio de rango de numeros"
	// Ingrese un numero si este es postivo finalice sino vuelva a ingresarlo
	menuNumeros[18] = "18)Validar que un numero sea positivo"
	// dado dos numeros base y exponente. calcular la base elevada al exponente 
	menuNumeros[19] = "19)Base y exponente"
	// dada una serie de numeros calcular los factorles de dichos numero la serie termina
	// cuando un numero de la serie sea igual a cero.
	menuNumeros[20] = "20)Serie Factoriales"
	menuNumeros[21] = "21)Salir"
	
	// ******EJERCICIOS DE RAZONAMIENTO SIN USAR CADENAS Y VECTORES*******
	// contar los digitos de cualquier numero: ej: 342 = 3 digitos
	menuRazonamiento[1] = "1)Cuantos Digitos tiene un Numero"
	// ejemplo: binario= 1111101000  ==> 1000 (decimal) Respuesta = 3E8 (hexadecimal)
	menuRazonamiento[2] = "2)Covertir de Base 2 a Base 10"
	// ejemplo: binario= 1100100  ==> 100 (decimal) => 
	menuRazonamiento[3] = "3)Convertir de Base 2 a Base 16 pasando por Base 10"
	// ejemplo Si n=8 => La serie de fibonacci es = 0 1 1 2 3 5 8 13
	menuRazonamiento[4] = "4)Serie de fibonacci hasta N"
	// ejemplo si numero=10 ==> resp= 1,2,5
	menuRazonamiento[5] = "5)Divisores de un Numero"
	// cuando los divisores de un numero es igual al numero se dice que ese numero es perfecto
	// si numero es 6 los divisores son 1,2,3 sumados igual a 6 es igual al numero ==> es perfecto
	menuRazonamiento[6] = "6)Numero Perfecto"
	// un numero es primo cuando no tiene divisores excepto el 1 y el propio numero
	// ejemplo 5 no tiene divsores es "primo"  9 tiene como divisor al 3 por tanto no es "primo"
	menuRazonamiento[7] = "7)Numero Primo"
	// dos numeros son amigos si la suma de los divisores del primer numero es = a la suma de los
	// divisores del segundo numero Eje: numero=6 (1+2+3)=6 numero 25(1+5)=6 ==> 6=6 son amigos 
	menuRazonamiento[8] = "8)Verificar si dos numeros son Amigos"
	// dos numeros son primos gemelos si ambos numeros son primos en valor absoluto y la resta de
	// los 2 numeros es == 2 eje: 11 y 13 abs(11-13)==2
	menuRazonamiento[9] = "9)Verificar si dos Numeros son Primos Gemelos"
	// por cada numero de una serie verifique si es primo, si es primo contarlo
	menuRazonamiento[10] = "10)De una serie de numeros cuantos son Primos"
	menuRazonamiento[11] = "11)Salir"
	
	// ****** EJERCICIOS DE CADENAS Y VECTORES *******
	// dado n valores ingresarlos a un arreglo
	menuCadenaVectores[1] = "1)llenar un arreglo de numeros"
	// recorrer un arreglo y presentarlo uno por uno
	menuCadenaVectores[2] = "2)Presentar los elementos de un arreglo"
	// buscar el dato y presentar la posicion en que se encuntra el dato en el arreglo
	menuCadenaVectores[3] = "3)Buscar un dato en un arreglo"
	// Presentar el mayor de los datos de un arreglo
	menuCadenaVectores[4] = "4)Elemento Mayor de un arreglo"
	// Dado un arreglo copie los datos en otro de atras para delante 
	menuCadenaVectores[5] = "5)Copiar los datos de un arreglo en otro invertido"
	// Dado los arreglos1 y arreglos 2 sumarlos valor por valor del arreglo1 y arreglo2
	// y asigmarlo en el arreglo3(los tres arreglos deben tener la misma longitud)
	menuCadenaVectores[6] = "6)Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
	// de una serie de numeros solo guardar en un arreglo los nymeros primos
	menuCadenaVectores[7] = "7)Dado N numeros guardar en un arreglo los numeros primos"
	// dadas las notas guardades en un arreglos obtener el promedio de las notas >= 70
	menuCadenaVectores[8] = "8)Dadas los datos de un arreglo obtener el promedio de las notas >=> 70"
	// presentar caracter por caracter de una cadena
	menuCadenaVectores[9] = "9)Dada una cadena presentarla caracter por caracter"
	// presentar  una cadena al reves
	menuCadenaVectores[10] = "10)Dada una cadena presentarla invertida"
	// contar las vocales de jque tiene una cadena cualquiera
	menuCadenaVectores[11] = "11)Dada una cadena indicar cuantos vocales tiene"
	// contar las palabras de una cadena
	menuCadenaVectores[12] = "12)Dada una cadena indicar cuantos palabras tiene"
	// buscar si un caracteer ingresado se encuentra en una cadena si es asi presentarMenu
	// la posicion en que se encuntra ese caracter en la cedena caso contrario presentar -1
	menuCadenaVectores[13] = "13)presentar la posicion de un caracter buscado dentro de una cadena"
	// comparar 2 cadenas csracter por catacter e indicar si son iguales o no
	menuCadenaVectores[14] = "14)Dadas dos cadenas indicar si son iguales caracter por caracter"
	// una cadena es palaindorma si se lee de la misma forma de izquierda a derecha 
	// ejemplo "ana"
	menuCadenaVectores[15] = "15)Indicar si una cadena es palindroma"
	menuCadenaVectores[16] = "16)Salir"
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
							Escribir "Sumar Dos Numeros"
							Esperar 1 Segundos
							Imprimir "";
							Imprimir "ingrese por favor el primer sumando"
							Leer num1
							Imprimir "ingrese el segundo sumando"
							Leer num2
							Imprimir calculadora("+",num1,num2)
							Imprimir "gracias por su visita, volverá al menú de opciones"
							Esperar 4 Segundos
						"2":
							Imprimir "sumar o restar"
							Imprimir ""
							Imprimir "si el primero numero es el mayor, se sumarán los datos ingresados, de los contrario se los restará"
							Esperar 1 Segundos
							Imprimir ""
							Imprimir "ingrese el primer numero"
							Leer num1
							Imprimir "inrgese el segundo numero"
							Leer num2
							si num1>=num2 Entonces
								Imprimir calculadora("+",num1,num2)
							SiNo
								Imprimir calculadora("-",num1,num2)
							FinSi
							Imprimir "gracias por su visita, volviendo al menú de opciones...."
							
							
							Esperar 4 Segundos
						"3":
							Escribir "Calculadora"
							Escribir "Ingrese Operacion[+,-,*,/,%,^]: " Sin Saltar
							Leer ope
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer num1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer num2
							Imprimir calculadora(ope,num1,num2)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							
							
						"4":
							Imprimir "mayor de 2 numeros"
							Esperar 1 Segundos
							mayrmen(num1,2,0)
							
							Imprimir ""
							Imprimir "fin del proceso, volviendo al menu de opciones"
							Esperar 3 Segundos
							
							
						"5":
							Imprimir "mayor de tres numeros"
							Esperar 1 Segundos
							mayrmen(num1,3,0)
							
							Imprimir ""
							Imprimir "gracias por la visita, regresará al menu de opciones"
							Esperar 3 Segundos
							
							
						"6":
							Imprimir "comprar productos"
							Imprimir ""
							Esperar 1 Segundos
							Imprimir "ingrese el valor del producto"
							Leer num1
							si num1>100 Entonces
								n12=porcentaje(num1,12)
								num=porcentaje(num1,10)
								num1=num1+n12+num
								
							SiNo
								n12=porcentaje(num1,12)
								num=porcentaje(num1,5)
								num1=num1+num12+num
							FinSi
							Imprimir "el valor a pagar es: ",num1
							Imprimir "volviendo al menu anterior..."
							Esperar 3 segundos
							
							
						"7":
							nombr=""
							Definir pxh,horast,horas50,horas100 Como Real
							Imprimir "pago de sueldos"
							Esperar 1 Segundos
							Imprimir ""
							Imprimir "escriba el nombre del trabajador"
							Leer nombr
							Imprimir "ingrese la paga por hora"
							Leer pxh
							Imprimir "ingrese las horas trabajadas dentro del horario normal"
							Leer horast
							Imprimir "ingrese las horas trabajadas con 50% de sobrecargo"
							Leer horas50
							Imprimir "ingrese las horas trabajadas con 100% de sobrecargo"
							Leer horas100
							Limpiar Pantalla
							Imprimir "sueldo por horas dentro de horario: "
							Imprimir calculadora("*",horast,pxh)
							sueldo=calculadora("*",horast,pxh)
							Imprimir ""
							Imprimir "paga por sobretiempo:"
							Imprimir calculadora("*",horas50,1.5)+calculadora("*",horas100,2)
							sobret=calculadora("*",horas50,1.5)+calculadora("*",horas100,2)
							Imprimir ""
							Imprimir "total de ingresos"
							x=calculadora("+",sueldo,sobret)
							Imprimir calculadora("*",horast,pxh)+(calculadora("*",horas50,1.5)+calculadora("*",horas100,2))
							Imprimir ""
							Imprimir "descuento"
							Imprimir (x*9.35)/100
							d=(x*9.35)/100
							Imprimir ""
							Imprimir "valor entregado al trabajador:"
							Imprimir calculadora("-",x,d)
							
							Imprimir "gracias por su visita, presione cualquier tecla para regresar al menu"
							Esperar Tecla
							
						"8":
							Imprimir "notas de alumnos"
							Imprimir ""
							Imprimir "se tomará 2 notas si el promedio es mayor a 70 aprobará"
							n=promedio(num1,2)
							si n>70 Entonces
								Imprimir "aprobado"
								Imprimir ""
							SiNo
								Imprimir "esfuerzate para aprobar la proxima"
								Imprimir ""
							FinSi	
							Imprimir "fin del proceso"
							Esperar 2 Segundos
							
							
						"9":
							Imprimir "positivo/negativo"
							Imprimir ""
						    
							n=negativpositiv(num1,1,0)
							si n=1 Entonces
								Imprimir "el numero es positivo"
							SiNo
								si n=2 Entonces
									Imprimir "el numero es neutro"
								SiNo
									si n=0 Entonces
										Imprimir "el numero es negativo"
									FinSi
								
								FinSi
							
							FinSi
							Imprimir "en breve regresará al menu"
							Esperar 3 Segundos
							
							
						"10":
							Imprimir "par e impar"
							Imprimir ""
							Imprimir "por favor ingrese un numero"
							Leer num1
							n=paroimpar(num1)
							si n>0 Entonces
								Imprimir "el numero ingresado ",num1," es par"
							SiNo
								Imprimir "el numero ingresado ",num1," es impar"
							FinSi
							Imprimir "será redirigido al menu de opciones en un momento"
							Esperar 3 Segundos						 
							
						"11":
							Imprimir "multiplo de cualquier numero"
							Imprimir ""
							Imprimir "se ingresará 2 numeros y se determinará si el primero numero es multiplo del segundo"
							Imprimir ""
							Imprimir "ingrese el primer numero"
							Leer num1
							Imprimir ""
							Imprimir "ingrese el segundo numero"
							Leer num2
							n=multiplos(num1,num2)
							si n>0 Entonces
								Imprimir num1," es multiplo de ",num2
							SiNo
								Imprimir num1, " no es multiplo de ",num2
							FinSi
							Imprimir "regresando al menu de opciones..."
							Esperar 3 Segundos
							
							
							
							
						"12":
							Imprimir "mayor y menor de una secuencia de numero"
							Imprimir ""
							Imprimir "¿cuantos numeros tendrá la secuencia?"
							Leer c
							a=1
							Imprimir ""
							mayrmen(num1,c,1)
							
							Imprimir "regresando al menu de opciones"
							Esperar 3 Segundos
							
						"13":
							Imprimir "positivos de una secuencia numerica"
							Imprimir ""
							Imprimir "¿cuantos numeros tendrá la secuencia?"
							Leer c
							n=negativpositiv (num1,c,1)						    
							Imprimir ""
							Imprimir "regresando al menu de opciones"
							Esperar 3 Segundos
							
						"14":
							Imprimir "sumar multiplos de 5 en una serie numerica"
							Imprimir ""
							Imprimir "¿cuantos numeros tendrá la serie?"
							Leer c
							para a=1 Hasta c Hacer
								Imprimir "ingrese un numero "
								Leer num1
								n=multiplos(num1,5)
								si n=1 Entonces
									x=calculadora("+",x,num1)
									Imprimir ""
									
								FinSi
							FinPara
							Imprimir "suma total: ",x
							Imprimir ""
							Imprimir "fin del proceso "
							Esperar 3 Segundos
							
							
						"15":
							Imprimir "generar y presentar los numeros pares desde 2 a N"
							Imprimir ""
							Imprimir "¿cuantos numeros recorrera la secuencia?"
							Leer num1
							Limpiar Pantalla
							Imprimir "numeros pares desde 2 al numero ingresado"
							Para x=2 Hasta num1 Con Paso 2 Hacer
								Imprimir x
							FinPara
							Imprimir ""
							Imprimir "fin del proceso, en breve regresara al menu de opciones "
							Esperar 4 Segundos
							
							
						"16":
							Imprimir "cantidad, suma y promedio de numeros negativos de una serie"
							Imprimir ""
							Imprimir "¿cuantos numeros desea ingresar?"
							Leer n
							Imprimir ""
							Imprimir "ingrese una serie de numeros, se mostrara los negativos y al final se mostrara mas datos"
							para x=1 Hasta n Hacer
								Imprimir "ingrese el º",x," numero"
								Leer num1
								num=calculadora("/",num1,2)
								si num<>0 Entonces
									sum=sum+num1
									a=a+1
								FinSi
								num2=calculadora("/",sum,a)
								
							FinPara
							Limpiar Pantalla
							Imprimir "la cantidad de numeros impares ingresados es: ",a
							Imprimir ""
							Imprimir "la suma de los numeros impares es: ",sum
							Imprimir ""
							Imprimir "el promedio de los numeros es: ",num2
							Imprimir ""
							Imprimir "regresara al menu de opciones en unos segundos"
							Esperar 4 segundos
							
							
						"17":
							Imprimir "serie promedio de rango de numeros"
							Imprimir ""
							Imprimir "se ingresara una serie de numeros y se promediara los que esten entre 100 y 500"
							Esperar 5 Segundos
							Limpiar Pantalla
							Imprimir "cuantos numeros tendra la serie"
							Leer n
							Para x=1 Hasta n
								Imprimir "escriba el º",x," numero"
								Leer num1
								si num1>=100 y num1<=500 Entonces
									a=a+1
									sum=sum+num1
								FinSi
							FinPara
							num2=calculadora("/",sum,a)
							Imprimir "el promedio de los numeros mayores a 100 y menores a 500 es: ",num2
							Imprimir ""
							Imprimir "proceso finalizado, regresando al menu anterior..."
							Esperar 4 Segundos
							
							
							
						"18":
							Imprimir "validar que un numero sea positivo"
							Imprimir ""
							
							n=negativpositiv(num1,1,0)
							si n=2 Entonces
								Imprimir "el numero es neutro"
							SiNo
								si n=1 Entonces
									Imprimir "el numero es positivo"
								SiNo
									si n=0 Entonces
										Mientras n=0 Hacer
											Imprimir "el numero es negativo"
											Imprimir ""
											Imprimir "por favor ingrese nuevamente un numero"
											n=negativpositiv(num1,1,0)
										FinMientras
									FinSi
									Imprimir ""
									Imprimir "numero positivo, fin del proceso"
									
								FinSi
							FinSi					
							
							Imprimir ""
							Imprimir "regresando al menu de opciones"
							Esperar 3 Segundos
							
							
						"19":
							Imprimir "base y exponente"
							Imprimir ""
							Imprimir "ingrese la base de la operacion"
							Leer num1
							Imprimir "ingrese el exponente de la operacion"
							Leer num2
							n=calculadora("^",num1,num2)
							Imprimir "fin del proceso"
							Esperar 3 Segundos
							
							
						"20":
							Imprimir "factorial de una serie numerica"
							Imprimir ""
							Imprimir "¿cuantos numeros tendra la serie?"
							Leer x
							para n=1 Hasta x Hacer
								Imprimir "ingrese el º",n," numero"
								Imprimir ""
								Leer num
								num1=1
								Para a=1 hasta num Hacer
									num1=calculadora("*",num1,a)
								FinPara
								Imprimir "el factorial de ",num," es: ",num1
							FinPara
							Imprimir ""
							Imprimir "fin del porceso, gracias por su visita"
							Esperar 3 Segundos
							
							
							
							
						"21":
							Escribir "Regresando Al Menu Principal..."
							Esperar 2 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"2":
				opc2=""
				Mientras opc2<>"11" Hacer
					opc2= presentarMenu("********** M E N U  E J E R C I C I O S  D E  RAZONAMIENTO **********",menuRazonamiento,11)
					Borrar Pantalla
					Segun opc2 Hacer
						"1":
							Escribir "Cantidad de Digitos de un Numero"
							Esperar 2 Segundos
						"7":
							Escribir "Ejercicio Numero Primo"
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
						"9":
							Escribir "Ejercicio Primos Gemelos"
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
						"11":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"3":
				opc3=""
				Mientras opc3<>"16" Hacer
					opc3= presentarMenu("********** M E N U  E J E R C I C I O S  C A D E N A S  Y  V E C T O R E S **********",menuCadenaVectores,16)
					Borrar Pantalla
					Segun opc3 Hacer
						"1":
							Escribir "Ingresar Valores a un Arreglo"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							ingresarArreglo(arreglo,limite)
							Esperar 1 Segundos
						"2":
							Escribir "Presentar los Valores de un Arreglo"
							presentarArreglo(arreglo,1,limite)
							Esperar 3 Segundos	
						"3":
							Escribir "Buscar un dato en un Arreglo"
							presentarArreglo(arreglo,1,limite)
							Escribir "Ingrese el dato a buscar en el arreglo"
							Leer dato
							pos = buscarArreglo(dato,arreglo,limite)
							Si pos > 0 Entonces
								Escribir dato," Se encuentra en la posicion: ",pos, " del arreglo"
							SiNo
								Escribir dato," No se encuentra en el arreglo"
							Fin Si
							Esperar 3 Segundos	
						"9":
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							presentarCadena(frase)
							Esperar 2 Segundos
						"11":
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							vocales(frase)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
						"16":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"4":
				Escribir "Gracias por usar el sistema"	
			De Otro Modo:
				Escribir "Opcion incorrecta"
		Fin Segun
    Fin Mientras
FinAlgoritmo

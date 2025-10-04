Proceso ejercicio2_Operadores_Aritmeticos
	
    Definir n, i, opcion, j, k Como Entero
    Definir radio, volumen Como Real
    Dimension resultados[100]
    Escribir "�Cu�ntas esferas desea almacenar?: "
    Leer n
    Si n > 100 Entonces
        Escribir "Se establecer� el m�ximo de 100."
        n <- 100
    FinSi
    i <- 1
    Repetir
        Escribir ""
        Escribir "--- MEN� CRUD - Volumen Esfera ---"
        Escribir "1. Crear"
        Escribir "2. Leer"
        Escribir "3. Actualizar"
        Escribir "4. Eliminar"
        Escribir "5. Salir"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                Si i <= n Entonces
                    Escribir "Ingrese el radio:"
                    Leer radio
                    volumen <- (4/3) * 3.1416 * radio^3
                    resultados[i] <- volumen
                    Escribir "Volumen calculado: ", volumen
                    i <- i + 1
                Sino
                    Escribir "L�mite alcanzado."
                FinSi
				
            Caso 2:
                Si i = 1 Entonces
                    Escribir "No hay datos a�n."
                Sino
                    Para j <- 1 Hasta i - 1
                        Escribir "Volumen [", j, "]: ", resultados[j]
                    FinPara
                FinSi
				
            Caso 3:
                Escribir "�ndice a actualizar (1 a ", i-1, "):"
                Leer j
                Si j >= 1 Y j < i Entonces
                    Escribir "Nuevo radio:"
                    Leer radio
                    volumen <- (4/3) * 3.1416 * radio^3
                    resultados[j] <- volumen
                    Escribir "Actualizado: ", volumen
                Sino
                    Escribir "�ndice inv�lido."
                FinSi
				
            Caso 4:
                Escribir "�ndice a eliminar (1 a ", i-1, "):"
                Leer j
                Si j >= 1 Y j < i Entonces
                    Para k <- j Hasta i - 2
                        resultados[k+1] <- resultados[k+1]
                    FinPara
                    i <- i - 1
                    Escribir "Eliminado."
                Sino
                    Escribir "�ndice inv�lido."
                FinSi
				
        FinSegun
    Hasta Que opcion = 5
FinProceso


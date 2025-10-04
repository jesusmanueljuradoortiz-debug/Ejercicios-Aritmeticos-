Algoritmo ejercicio9_Operadores_Aritmeticos
	
    Definir n, i, opcion, j, k Como Entero
    Definir baseMayor, baseMenor, altura, area Como Real
    Dimension resultados[100]
    Escribir "�Cu�ntos trapecios desea almacenar?: "
    Leer n
    Si n > 100 Entonces
        n <- 100
    FinSi
    i <- 1
    Repetir
        Escribir "--- MEN� CRUD - �rea Trapecio ---"
        Escribir "1. Crear", " 2. Leer", " 3. Actualizar", " 4. Eliminar", " 5. Salir"
        Leer opcion
        Segun opcion Hacer
            Caso 1:
                Si i <= n Entonces
                    Escribir "Ingrese la base mayor:"
                    Leer baseMayor
                    Escribir "Ingrese la base menor:"
                    Leer baseMenor
                    Escribir "Ingrese la altura:"
                    Leer altura
                    area <- ((baseMayor + baseMenor) * altura) / 2
                    resultados[i] <- area
                    Escribir "�rea calculada: ", area
                    i <- i + 1
                Sino
                    Escribir "L�mite alcanzado."
                FinSi
            Caso 2:
                Si i = 1 Entonces
                    Escribir "No hay datos a�n."
                Sino
                    Para j <- 1 Hasta i - 1
                        Escribir "�rea [", j, "]: ", resultados[j]
                    FinPara
                FinSi
            Caso 3:
                Escribir "�ndice a actualizar:"
                Leer j
                Si j >= 1 Y j < i Entonces
                    Escribir "Nueva base mayor:"
                    Leer baseMayor
                    Escribir "Nueva base menor:"
                    Leer baseMenor
                    Escribir "Nueva altura:"
                    Leer altura
                    area <- ((baseMayor + baseMenor) * altura) / 2
                    resultados[j] <- area
                    Escribir "Actualizado: ", area
                Sino
                    Escribir "�ndice inv�lido."
                FinSi
            Caso 4:
                Escribir "�ndice a eliminar:"
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


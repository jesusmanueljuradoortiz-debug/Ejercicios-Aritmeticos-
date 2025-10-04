Algoritmo ejercicio8_Operadores_Aritmeticos
	
    Definir n, i, opcion, j, k Como Entero
    Definir dolares, tasa, euros Como Real
    Dimension resultados[100]
    Escribir "�Cu�ntas conversiones desea almacenar?: "
    Leer n
    Si n > 100 Entonces
        n <- 100
    FinSi
    Escribir "Ingrese la tasa de cambio (1 d�lar a euros): "
    Leer tasa
    i <- 1
    Repetir
        Escribir "--- MEN� CRUD - D�lares a Euros ---"
        Escribir "1. Crear", " 2. Leer", " 3. Actualizar", " 4. Eliminar", " 5. Salir"
        Leer opcion
        Segun opcion Hacer
            Caso 1:
                Si i <= n Entonces
                    Escribir "Ingrese cantidad en d�lares:"
                    Leer dolares
                    euros <- dolares * tasa
                    resultados[i] <- euros
                    Escribir "Euros: ", euros
                    i <- i + 1
                Sino
                    Escribir "L�mite alcanzado."
                FinSi
            Caso 2:
                Si i = 1 Entonces
                    Escribir "No hay datos a�n."
                Sino
                    Para j <- 1 Hasta i - 1
                        Escribir "Euros [", j, "]: ", resultados[j]
                    FinPara
                FinSi
            Caso 3:
                Escribir "�ndice a actualizar:"
                Leer j
                Si j >= 1 Y j < i Entonces
                    Escribir "Nueva cantidad en d�lares:"
                    Leer dolares
                    euros <- dolares * tasa
                    resultados[j] <- euros
                    Escribir "Actualizado: ", euros
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

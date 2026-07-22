Algoritmo analizador_de_frases
	Definir opcion, totalFrases Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir frase Como Caracter
	Definir cantidadPalabras Como Entero
	Definir cantidadCaracteres Como Entero
	Definir tipoFrase Como Caracter
	Definir idioma Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension frase[100]
	Dimension cantidadPalabras[100]
	Dimension cantidadCaracteres[100]
	Dimension tipoFrase[100]
	Dimension idioma[100]
	Dimension estado[100]
	totalFrases <- 0
	siguienteID <- 1
	//-----------------------------------------//
	//--|menu_principal_analizador_de_frases|--//
	//-----------------------------------------//
	Repetir
		Escribir "menu principal analizador de frases"
		Escribir "1) registrar frase"
		Escribir "2) editar frase"
		Escribir "3) eliminar frase"
		Escribir "4) buscar frase"
		Escribir "5) listar frases"
		Escribir "6) ver detalles de la frase"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//---------------------//
			//--|registrar_frase|--//
			//---------------------//
			1:
				Escribir "registrar frase"
				id[totalFrases+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalFrases+1]
				Escribir "ingrese la frase:"
				Leer frase[totalFrases+1]
				Escribir "ingrese la cantidad de palabras:"
				Leer cantidadPalabras[totalFrases+1]
				Escribir "ingrese la cantidad de caracteres:"
				Leer cantidadCaracteres[totalFrases+1]
				Escribir "ingrese el tipo de frase:"
				Leer tipoFrase[totalFrases+1]
				Escribir "ingrese el idioma:"
				Leer idioma[totalFrases+1]
				Escribir "ingrese el estado:"
				Leer estado[totalFrases+1]
				totalFrases <- totalFrases + 1
				Escribir "frase registrada correctamente."
			//------------------//
			//--|editar_frase|--//
			//------------------//
			2:
				Escribir "editar frase"
				Si totalFrases = 0 Entonces
					Escribir "no hay frases registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalFrases Hacer
						Escribir id[i], " | ", frase[i], " | ", cantidadPalabras[i], " | ", cantidadCaracteres[i], " | ", tipoFrase[i], " | ", idioma[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la frase:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFrases Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva frase:"
							Leer frase[i]
							Escribir "ingrese la nueva cantidad de palabras:"
							Leer cantidadPalabras[i]
							Escribir "ingrese la nueva cantidad de caracteres:"
							Leer cantidadCaracteres[i]
							Escribir "ingrese el nuevo tipo de frase:"
							Leer tipoFrase[i]
							Escribir "ingrese el nuevo idioma:"
							Leer idioma[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "frase editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una frase con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|eliminar_frase|--//
			//--------------------//
			3:
				Escribir "eliminar frase"
				Si totalFrases = 0 Entonces
					Escribir "no hay frases registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalFrases Hacer
						Escribir id[i], " | ", frase[i], " | ", cantidadPalabras[i], " | ", cantidadCaracteres[i], " | ", tipoFrase[i], " | ", idioma[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la frase:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFrases Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalFrases Entonces
								Para j <- i Hasta totalFrases - 1 Hacer
									id[j] <- id[j+1]
									frase[j] <- frase[j+1]
									cantidadPalabras[j] <- cantidadPalabras[j+1]
									cantidadCaracteres[j] <- cantidadCaracteres[j+1]
									tipoFrase[j] <- tipoFrase[j+1]
									idioma[j] <- idioma[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalFrases <- totalFrases - 1
							Escribir "frase eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una frase con ese id."
					FinSi
				FinSi
			//------------------//
			//--|buscar_frase|--//
			//------------------//
			4:
				Escribir "buscar frase"
				Si totalFrases = 0 Entonces
					Escribir "no hay frases registradas."
				SiNo
					Escribir "ingrese el id de la frase:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFrases Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", frase[i], " | ", cantidadPalabras[i], " | ", cantidadCaracteres[i], " | ", tipoFrase[i], " | ", idioma[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una frase con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|listar_frases|--//
			//-------------------//
			5:
				Escribir "listar frases"
				Si totalFrases = 0 Entonces
					Escribir "no hay frases registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalFrases Hacer
						Escribir id[i], " | ", frase[i], " | ", cantidadPalabras[i], " | ", cantidadCaracteres[i], " | ", tipoFrase[i], " | ", idioma[i], " | ", estado[i]
					FinPara
				FinSi
			//------------------------//
			//--|ver_detalles_frase|--//
			//------------------------//
			6:
				Escribir "ver detalles de la frase"
				Si totalFrases = 0 Entonces
					Escribir "no hay frases registradas."
				SiNo
					Escribir "ingrese el id de la frase:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFrases Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la frase"
							Escribir "id: ", id[i]
							Escribir "frase: ", frase[i]
							Escribir "cantidad de palabras: ", cantidadPalabras[i]
							Escribir "cantidad de caracteres: ", cantidadCaracteres[i]
							Escribir "tipo de frase: ", tipoFrase[i]
							Escribir "idioma: ", idioma[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una frase con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalFrases = 0 Entonces
					Escribir "no hay frases registradas."
				SiNo
					sumaPalabras <- 0
					sumaCaracteres <- 0
					mayorPalabras <- cantidadPalabras[1]
					menorPalabras <- cantidadPalabras[1]
					mayorCaracteres <- cantidadCaracteres[1]
					menorCaracteres <- cantidadCaracteres[1]
					Para i <- 1 Hasta totalFrases Hacer
						sumaPalabras <- sumaPalabras + cantidadPalabras[i]
						sumaCaracteres <- sumaCaracteres + cantidadCaracteres[i]
						Si cantidadPalabras[i] > mayorPalabras Entonces
							mayorPalabras <- cantidadPalabras[i]
						FinSi
						Si cantidadPalabras[i] < menorPalabras Entonces
							menorPalabras <- cantidadPalabras[i]
						FinSi
						Si cantidadCaracteres[i] > mayorCaracteres Entonces
							mayorCaracteres <- cantidadCaracteres[i]
						FinSi
						Si cantidadCaracteres[i] < menorCaracteres Entonces
							menorCaracteres <- cantidadCaracteres[i]
						FinSi
					FinPara
					promedioPalabras <- sumaPalabras / totalFrases
					promedioCaracteres <- sumaCaracteres / totalFrases
					Escribir "estadistica general"
					Escribir "total de frases: ", totalFrases
					Escribir "promedio de palabras: ", promedioPalabras
					Escribir "promedio de caracteres: ", promedioCaracteres
					Escribir "mayor cantidad de palabras: ", mayorPalabras
					Escribir "menor cantidad de palabras: ", menorPalabras
					Escribir "mayor cantidad de caracteres: ", mayorCaracteres
					Escribir "menor cantidad de caracteres: ", menorCaracteres
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar el analizador de frases."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo
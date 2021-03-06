#!/bin/bash

#################################################
# Autor: Andrés Herrera Poyatos
# Estructura de Datos, Práctica 1, Ejercicio 8
#################################################

# Script de bash que genera imágenes con los resultados de los
# algoritmos de ordenación inserción y burbuja para arrays de diferentes tamaños.

# Variables:
PROGRAMA1=algoritmo_insercion
PROGRAMA2=algoritmo_burbuja
SALIDA1=./Datos/tiempo_insercion.dat
SALIDA2=./Datos/tiempo_burbuja.dat
MENSAJE_INICIO="Se inicia la ejecución del ejercicio 8,  apartado a):"
MENSAJE_FINAL="Fin de la ejecución del ejercicio 8, apartado a). Se ha creado las imagenes y los ficheros con los resultados correspondientes."

# Se genera el ejecutable con el algoritmo de ordenación burbuja:
g++ -o $PROGRAMA1 $PROGRAMA1.cpp
g++ -o $PROGRAMA2 $PROGRAMA2.cpp

echo "$MENSAJE_INICIO"

# Se genera un fichero con los datos obtenidos llamando
# al Script ejecuciones.sh con los parámetros oportunos:
./ejecuciones_1.sh  $PROGRAMA1  $SALIDA1
./ejecuciones_1.sh  $PROGRAMA2  $SALIDA2


# Se elimina el ejecutable:
rm $PROGRAMA1
rm $PROGRAMA2

# Se crea un archivo .png con las imágenes resultantes:
./plot_1.sh

echo "$MENSAJE_FINAL"
#!/bin/bash

mkdir -p Datos
mkdir -p Imagenes


chmod +x plot_graficas_dos_Trabajadores.sh
chmod +x plot_graficas_dos_Trabajos.sh
chmod +x plot_graficas_todos_Trabajadores.sh
chmod +x plot_graficas_todos_Trabajos.sh
chmod +x plot_graficas_Trabajadores.sh               
chmod +x plot_graficas_Trabajos.sh
chmod +x obtenerDatosTrabajadores.sh
chmod +x obtenerDatosTrabajos.sh
chmod +x obtenerDatosTrabajadoresUltimos.sh
chmod +x obtenerDatosTrabajosUltimos.sh


./obtenerDatosTrabajos.sh first_algorithm.py
./obtenerDatosTrabajos.sh second_algorithm.py
./obtenerDatosTrabajos.sh third_algorithm.py
./obtenerDatosTrabajos.sh fourth_algorithm.py

./obtenerDatosTrabajadores.sh first_algorithm.py
./obtenerDatosTrabajadores.sh second_algorithm.py
./obtenerDatosTrabajadores.sh third_algorithm.py
./obtenerDatosTrabajadores.sh fourth_algorithm.py

./obtenerDatosTrabajadoresUltimos.sh third_algorithm.py
./obtenerDatosTrabajosUltimos.sh third_algorithm.py
./obtenerDatosTrabajadoresUltimos.sh fourth_algorithm.py
./obtenerDatosTrabajosUltimos.sh fourth_algorithm.py


./plot_graficas_todos_Trabajadores.sh 
./plot_graficas_todos_Trabajos.sh  
./plot_graficas_Trabajadores.sh 
./plot_graficas_Trabajos.sh 
./plot_graficas_dos_Trabajadores.sh 
./plot_graficas_dos_Trabajos.sh 
//////////////////////////////////////////////////
// Autor: Andrés Herrera Poyatos
// Estructura de Datos, Práctica 1, Ejercicio 5 
///////////////////////////////////////////////////

/* Programa que devuelve el tiempo que el algoritmo de ordenación burbuja
   tarda en ordenar un array de tamaño dado como parámetro en su mejor caso. */

// El mejor caso para el algoritmo burbuja tiene lugar cuando el vector está ordenado.

#include <iostream>
#include <ctime>    // Recursos para medir tiempos
#include <cstdlib>  // Para generación de números pseudoaleatorios

using namespace std;

// Función que ordena un array mediante el algoritmo burbuja:
void ordenarBurbuja(int *v, int n) 
{
    bool cambio = true;
    for (int i = 0; i < n-1 && cambio; i++){
        cambio = false;
        for (int j = 0; j < n-i-1; j++)
            if (v[j] > v[j+1]){
                cambio = true;
                int aux = v[j];
                v[j] = v[j+1];
                v[j+1] = aux;
            }
    }
}

// Sintaxis del programa:
void sintaxis()
{
    cerr << "Sintaxis:" << endl;
    cerr << "  TAM: Tamaño del vector (>0)" << endl;
    cerr << "  VMAX: Valor máximo (>0)" << endl;
    cerr << "Se genera un vector de tamaño TAM con elementos aleatorios en [0,VMAX[" << endl;
    exit(EXIT_FAILURE);
}

int main(int argc, char * argv[])
{
    const int NUM_EJECUCIONES = 1000;
    
    // Lectura de parámetros
    if (argc != 3)
      sintaxis();
    int size = atoi(argv[1]);     // Tamaño del vector
    int vmax = atoi(argv[2]);    // Valor máximo
    if (size <=0 || vmax <=0)
      sintaxis();
    
    // Generación del vector aleatorio
    int *v = new int[size];       // Reserva de memoria
    for (int i = 0; i < size; i++){  // Se genera un vector ordenado: {0, 1, 2, ..., size-1}
        v[i] = i;
    }
    
    clock_t tini;    // Anotamos el tiempo de inicio
    tini=clock();
    
    // Se ejecuta el algoritmo NUM_EJECUCIONES veces:
    for (int i = 0; i < NUM_EJECUCIONES; i++){
        ordenarBurbuja(v, size);
    }
    clock_t tfin;    // Anotamos el tiempo de finalización
    tfin = clock();

    // Mostramos resultados
    cout << size << "\t" << ((tfin - tini) / (double)CLOCKS_PER_SEC) / NUM_EJECUCIONES << endl;
    
    delete [] v;     // Liberamos memoria dinámica
}

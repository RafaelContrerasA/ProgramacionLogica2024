## Resolver Laberinto

Este programa resuelve un laberinto representado por una matriz de enteros, donde los números tienen los siguientes significados:
- `0`: espacio vacío (puede ser recorrido)
- `1`: pared (no puede ser recorrido)
- `2`: indicador de camino recorrido
- `3`: salida del laberinto

El programa comienza su ejecución desde la esquina superior izquierda e intenta encontrar una ruta hacia la salida representada por un `(3)`.


```java
public class ResolverLaberinto {

    public static void main(String[] args) {
        int[][] laberinto = {
            {0, 1, 0, 0, 0, 1, 0, 0},
            {0, 1, 1, 0, 0, 0, 1, 1},
            {0, 1, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 1, 0, 0},
            {1, 0, 1, 0, 0, 1, 0, 1},
            {0, 1, 1, 1, 1, 1, 0, 0},
            {0, 0, 1, 0, 0, 1, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 3}
        };
        
        recorrerLaberinto(laberinto, 0, 0);
        
        System.out.println("Solucion");
        imprimirMatriz(laberinto);
    }
```


### Funcion principal
Este funcion recorre de manera recursiva el laberinto. Primero se valida que se ingresa una direccion valida (que no salga de la matriz y que no sea una pared). Posteriormente se marca la celda actual con un `2` para no volverla a recorrer. Si se encuentra un  `3` significa que ya se llego al final del laberinto y se detiene la busqueda.
    
     
```java
    public static boolean recorrerLaberinto(int[][] matriz, int fila, int columna){       
        // Verificar que se accede a una ubicación válida de la matriz
        if(fila < matriz.length && columna < matriz[0].length && fila >= 0 && columna >= 0 && matriz[fila][columna] != 1 && matriz[fila][columna] != 2){
            
            // Si se encuentra un 3 significa que ya es la salida y para la busqueda
            if(matriz[fila][columna] == 3){
                return true;
            }    
            
            // Marcar la celda como ya visitada
            matriz[fila][columna] = 2; 
            
            if(recorrerLaberinto(matriz, fila + 1, columna)){
                return true;
            }
            if(recorrerLaberinto(matriz, fila - 1, columna)){
                return true;
            }
            if(recorrerLaberinto(matriz, fila, columna + 1)){
                return true;
            }
            if(recorrerLaberinto(matriz, fila, columna - 1)){
                return true;
            }
            
            //Si se llega u un lugar sin salida se hace backtracking y se borra
            //la celda de la solucion
            matriz[fila][columna] = 0;    
            return false;    
        }
        return false;
    }
```
### Imprimir
Se imprime la matriz una vez se ha encontrado la solucion del laberinto

```java
    
    public static void imprimirMatriz(int[][] matriz) {
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length; j++) {
                System.out.print(matriz[i][j] + " ");
            }
            System.out.println();
        }
    }
}
```


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
    
    
    
        public static boolean recorrerLaberinto(int[][] matriz, int fila, int columna){       
            
            //verificar que se accede a una ubicacion valida de la matriz
            if(fila<matriz.length && columna<matriz[0].length && fila>=0 && columna >=0 && matriz[fila][columna]!=1 && matriz[fila][columna]!=2){
                
                if(matriz[fila][columna]==3){
                    return true;
                }    
                
                matriz[fila][columna]=2; 
                
                if(recorrerLaberinto(matriz, fila+1, columna)){
                    return true;
                }
                
                if(recorrerLaberinto(matriz, fila-1, columna)){
                    return true;
                }
                
                if(recorrerLaberinto(matriz, fila, columna+1)){
                    return true;
                }
                
                if(recorrerLaberinto(matriz, fila, columna-1)){
                    return true;
                }
                
          
                
                //Si se llega u un lugar sin salida se hace backtracking y se borra
                //la celda de la solucion
                matriz[fila][columna]=0;    
                return false;
                
            }
        return false;
    }
    
    
    public static void imprimirMatriz(int[][] matriz) {
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length; j++) {
                System.out.print(matriz[i][j] + " ");
            }
            System.out.println();
        }
    }
    
    
    
}

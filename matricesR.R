#MATRICES DE DIMENSIÓN 3x3;
A<-matrix(1:9, 3, 3)
B<-matrix(10:18, 3, 3)

matrixMult <- function(matrix1, matrix2){

	#La nueva matriz tendrá las dimensiones numrow_matriz1 x numcol_matriz2;
	aux<-matrix(0, ncol = ncol(matrix2), nrow = nrow(matrix1));
	

	#Dos matrices A y B son multiplicables si el número 
	#de columnas de A coincide con el número de filas de B.
	if(ncol(matrix1) != nrow(matrix2)){
		
		print("Las matrices no se pueden multiplicar:");
		print(paste("NUM. COLUMNAS MATRIZ-1:", ncol(matrix1)));
		print(paste("NUM. COLUMNAS MATRIZ-2:", nrow(matrix2)));
		print("numColumnas_Matriz-1 DISTINTO numFilas_Matriz-2");

	}else {

		#Pinto en pantalla las matrices;
		print("MATRIZ 1");
		print(matrix1);
		print("MATRIZ 2");
		print(matrix2);
		
		for(i in 1:nrow(matrix1)){
			for(j in 1:ncol(matrix2)){
				for(k in 1:ncol(matrix2)){
					aux[i,j] = aux[i,j] + matrix1[i,k]*matrix2[k,j];
				}
			}
		}
		#Almaceno el resultado en la variable global res;
		res<<-aux;
		print("MULTIPLICACION HECHA. TECLEA 'res' PARA VISUALIZAR LA NUEVA MATRIZ");
	}
}
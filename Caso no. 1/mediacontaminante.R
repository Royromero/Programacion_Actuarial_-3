# media contaminante 
mediacontaminante <- function(directorio="~/Rodrigo/GitHub/Programacion_Actuarial_-3/specdata" , contaminante= "sulfate", id= 1:332){
   setwd(directorio)
   suma2 <- 0
   nf2 <- 0
   promedio <- 0
   j <- 0
   if (contaminante== "sulfate") {
     j= 2
   } else if(contaminante == "nitrate"){
     j=3
   } else {
     
   }
   
   for(i in id) {
     #lectura de datos
     if (i<10) {
       tabla <- read.csv(paste("00", i, ".csv", sep=""))
     }else if(i>=10 && i<100 ) {
       tabla<-read.csv(paste("0", i,".csv", sep=""))
     }else {
       tabla<-read.csv(paste(i,".csv",sep=""))
     }
  
     #Datos sin Na o NaN
     columna<-tabla[j]
     buenos <- complete.cases(columna)
     nuevo <- tabla[buenos, ]
    
     
     #cuenta el no. de filas
     nf <- nrow(nuevo)
     nf2 <- nf2+nf
     
     #suma los datos de cada tabla
     suma <- sum(nuevo[,j])
     suma2 <- suma2+suma
   }
  promedio <- suma2/nf2
  print(promedio)
}
mediacontaminante(,"sulfate",1)







corr <- function(directorio="~/Rodrigo/GitHub/Programacion_Actuarial_-3/specdata", horizonte=0){
  setwd(directorio)
  primer <- vector("numeric")
  guardar <- vector("numeric")
  
  for(i in 1:332){
    #lectura de Datos
    if (i<10) {
      tabla <- read.csv(paste("00", i, ".csv", sep=""))
    }else if(i>=10 && i<100 ) {
      tabla<-read.csv(paste("0", i,".csv", sep=""))
    }else {
      tabla<-read.csv(paste(i,".csv",sep=""))
    }
    
    completos <- complete.cases(tabla)
    kim <- tabla[completos, ]
    nf <- nrow(kim)
    
    #restriccion de horizonte
    if (nf>=horizonte) {
     guardar <-  cor(kim[2],kim[3])
     guardar2<-as.vector(guardar)
     primer <- c(primer,guardar2)
    }
   
  }

  print(primer)
}
corr(,20)

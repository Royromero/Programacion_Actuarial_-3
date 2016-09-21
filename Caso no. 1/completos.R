completos <- function(directorio ="~/Rodrigo/GitHub/Programacion_Actuarial_-3/specdata", id=1:332){
  setwd(directorio)
  sandia <- vector("numeric")
  
for(i in id) {
  #Lectura de Datos
  if (i<10) {
    tabla <- read.csv(paste("00", i, ".csv", sep=""))
  }else if(i>=10 && i<100 ) {
    tabla<-read.csv(paste("0", i,".csv", sep=""))
  }else {
    tabla<-read.csv(paste(i,".csv",sep=""))
  }
  
  #Casos completos
  buenos <- complete.cases(tabla)
  kim <- tabla[buenos, ]
  nf <- nrow(kim)
  sandia <- c(sandia,nf)
}
  
  table1 <- data.frame(id,nobs=sandia)
  table1
}
completos(,1:110)






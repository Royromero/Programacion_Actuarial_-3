
rankhospital <- function(estado, resultado, num){

  outcome<-read.csv("outcome-of-care-measures.csv",colClasses= "character")
 
  #validar estado, resultados y num
  states <- unique(outcome[,7])
  validar <- states == estado
  suma <- sum(validar)
  
  resultados<-c("falla", "ataque","neumonia")
  validar2 <- resultados==resultado
  suma2 <- sum(validar2)
  
  if (suma!=1){
    stop("Estado inválido")
  } else if(suma2!=1){
    
    stop("resultado inválido")
  }
  
  if (resultado =="ataque"){
    i<-11 
  } else if (resultado=="falla"){
    i <- 17
  }else if(resultado=="neumonia"){
    i<-23
  }
 
  separa<-split(outcome, outcome[,7])
  s <- separa[[estado]]
  limite <- dim(s)
  limite<-limite[1]
  limite
  
if(num=="mejor"){
  num<-1
}
  if (num<=limite) {
  s[,i]<-suppressWarnings(as.numeric(s[,i]))
  cual <- order(s[,i],s[,2])
  hospitales <- s[cual,2]
  regresar <- hospitales[num]
  } else if (num=="peor"){
    s[,i]<-suppressWarnings(as.numeric(s[,i]))
    fila <-which(s[,i] == max(s[,i],na.rm=T))
    regresar<-s[fila, 2]
  } else {
   stop(return(NA))
  }
  regresar
}





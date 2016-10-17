
rankingcompleto <- function(resultado, num="mejor"){
  
  outcome<-read.csv("outcome-of-care-measures.csv",colClasses= "character")
  vector1<-vector("numeric")
  vector2<-vector("numeric")
  
  resultados<-c("falla", "ataque","neumonia")
  validar2 <- resultados==resultado
  suma2 <- sum(validar2)
  
  if (suma2!=1) {
    stop("resultado inválido")
  }
    
  if (resultado =="ataque"){
    i<-11 
  } else if (resultado=="falla"){
    i <- 17
  }else if(resultado=="neumonia"){
    i<-23
  }
  
  if(num=="mejor"){
    num<-1
  }
  
  separa <- split(outcome,outcome[,7])
  if( is.numeric(num)==T){
  for (j in 1:54) {
  s <- separa[[j]]
  s[,i]<-suppressWarnings(as.numeric(s[,i]))
  cual <- order(s[,i],s[,2])
  hospitales <- s[cual,2]
  regresar <- hospitales[num]
  vector1 <- c(vector1,regresar)
  }
  } else if(num=="peor") {
    num <- 1
    for (j in 1:54) {
    s <- separa[[j]]
    s[,i]<-suppressWarnings(as.numeric(s[,i]))
    cual <- order(s[,i],s[,2],decreasing = T)
    hospitales <- s[cual,2]
    regresar <- hospitales[num]
    vector1 <- c(vector1,regresar)
    }
    }
  datos <- data.frame(vector1,names(separa))
  names(datos)<-c("hospital","state")
  rownames(datos) <- names(separa)
  datos
  
}


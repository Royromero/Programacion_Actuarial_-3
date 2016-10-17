
  mejor <- function(estado, resultado) {
    i<-0
    outcome <- read.csv("outcome-of-care-measures.csv",colClasses= "character")
  
    #validando estado y resultado 
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
      
    #BUSCA EL HOSPITAL CON LA MENOR TASA 
    separa<- split(outcome, outcome[,7])
    s <- separa[[estado]]
    s[,i]<-suppressWarnings(as.numeric(s[,i]))
    fila <-which(s[,i] == min(s[,i],na.rm=T))
    ju <- sort(s[fila,2])
    ju[1]
    
   }
  
  

  
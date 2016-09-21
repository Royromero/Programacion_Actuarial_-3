
a<-0
b<-0
z <-5
for (i in 1:100) {
z<-5
while(z>= 3 && z<=10) {
  #print(z)
  #ndera<-c(bandera,z)
  moneda <- rbinom(1,1,0.5)
  if (moneda==1){
    z <- z + 1
  } else {
    z <- z - 1 
  }
}
if(z<3) {
  a<- a + 1
} else {
   b <- b+ 1
    }
  
} 
a
b




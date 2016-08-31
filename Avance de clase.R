#guardando un archivo
#cambio de dimensiones de 2*3 a 3*2
m<-matrix(nrow=2,ncol=3)
m
dim(m)<- c(3,2)
m
m<-matrix(1:6,3,2)
m
m<-matrix(1:6,3,3, T)
m
str(m)
dim(m)<-c(2,5)
x<-c(1,2,3)
y<-c("a", "b" ,"c")
z<-c(x,y)
z
m1<-rbind(m,x)
m1
m2<-cbind(m,x)
m2
m1<-rbind(m,y)
m1
m2<-cbind(m,y)
m2

#factores
x<-factor(c("azul", "rojo" , "amarillo", "azul"))
x

#valores faltantes
x<-c(1,2,NaN,10,3)
is.na(x)
is.nan(x)

#Data frames
x<-data.frame(Erick=1:4, Lori=c(T,T,F,F) )
row.names(x)<-c("Primero", "Segundo" ,"Tercero", "Cuarto")
x

nrow(x)
ncol(x)
attributes(x)

names(x)<- c("Yareli", "Karen")
x

#Los nombres no son exclusivos de los data frames
x<-1:3
names(x)
names(x)<-c("Hugo", "Paco", "Luis")
x
names(x)

x<-list(a=1:10, b=100:91,c=51:60)
x
names(x)<-c("Sec1", "Sec2", "Sec3")
x

x<-matrix(1:4,2,2)
x
attributes(x)
dimnames(x)<-list(c("Fil1","Fil2"), c("col1", "col2"))
x

m<-matrix(nrow=10, ncol = 10)
dimnames(m)<-list(1:10, c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j"))
m
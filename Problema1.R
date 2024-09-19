#Codigo para problema 1

mis_dades<-mtcars
mis_dades$qsec

mean(mis_dades$qsec)

median(mis_dades$drat)

#primer cuartil
quantile(mis_dades$drat)[1]

quantile(mis_dades$mpg,0.18)
quantile(mis_dades$mpg,0.82)

#rango interquartil
IQR(mis_dades$cyl)

#desviacion tipica
sd(mis_dades$cyl)

#variancia
var(mis_dades$qsec)



#hacer una tabla de frecuencia


intervalos_qsec<-cut(mis_dades$qsec,4)
table(intervalos_qsec)
hist(mis_dades$qsec,10)

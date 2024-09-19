# Introducción al R: dando los primeros pasos.
# R puede ser utilizado simplemente como calculadora.
# Para muestra, este ejemplo.
3+7
# Como vemos, escribimos el comando en la ventana superior
# y lo pegamos en la inferior para que el cálculo se
# ejecute.
# Evidentemente, si el resultado que hemos obtenido nos
# interesa guardarlo, entonces hemos de asignar ese resultado
# en una variable. En R lo podemos hacer de la manera siguiente:
x<-3+7;
x
# Al acabar en punto y coma, x no se escribe por pantalla, eso
# solo pasa si escribimos x sin el punto y coma.
# También nos podemos preguntar si dos valores son iguales
# o no.
y<-13;
# Preguntemonos si x e y son iguales.
x==y
# Ahora, nos preguntamos si x e y son distintos.
x!=y
# También nos podemos preguntar si uno es mayor que el otro.
x>y
# R nos permite trabajar con vectores. Imaginemos que queremos un vector
# con 6 componentes formado por los números 2,7,8,10,45, y 3.
# Lo escribimos de la manera siguiente.
v<-c(2,7,8,10,45,3);
v
# La c que aparece en la definición del vector v se refiere a que
# concatenamos los números en un vector fila.
# De un vector nos podemos preguntar algunas cosas. Por ejemplo,
# podemos calcular la suma de sus componentes.
sum(v)
# También podemos multiplicar un vector por un número.
-7*v
# Otra cosa que podemos hacer es aplicar una función a
# un vector. En este caso, la función se aplica componente
# a componente. Para muestra, las funciones exp, log, sin
# y cos.
exp(v)
log(v)
sin(v)
cos(v)
# Ahora, nos preguntamos cual es el número de componentes
# del vector v.
length(v)
# A veces, nos puede interesar producir una sucesión de números
# con unas características determinadas. Por ejemplo, queremos
# obtener valores desde 1 hasta 30 con saltos de 4 en 4. Esto lo
# podemos hacer así.
s<-seq(from=1,to=30,by=4);
s
# Imaginaos que queremos números del 1 al 30, pero solamente
# queremos 6 números y no más. Esto lo podemos hacer así.
s2<-seq(from=1,to=30,length=6);
s2
# Ahora, imaginemonos que quiero un vector lleno del número pi
# repetido 6 veces. Esto lo podemos hacer de varias formas. Una
# es esta.
x<-rep(1,6);
x<-pi*x;
x
# También nos podemos plantear cual es una o varias componentes
# concretas de un vector. Por ejemplo, si queremos hallar la
# segunda componente del vector v lo hacemos así.
v[2]
# También podemos querer que nos calcule varias componentes de un vector.
# Por ejemplo, vamos a calcular las componentes primera, tercera y
# quinta del vector v
v[c(1,3,5)]
# También nos podemos preguntar que componentes del vector cumplen
# una determinada condición. Esto lo podemos hacer con la función
# which. Por ejemplo, queremos saber que elementos son mayores que 3.
ind2<-which(v>3);
ind2
# Fijémeonos que esto solo nos da el índice de las componentes
# que cumplen la condición. Si queremos saber las componentes que
# son, escribimos lo siguiente.
v[ind2]
# También podemos eliminar alguna componente de un vector. Imaginémosnos
# que queremos eliminar la última componente de v pero no nos acordamos
# de su longitud. No hay problema, lo hacemos así, el menos delante le
# indica al programa que elimine esa componente.
v[-length(v)]
# También podemos añadir elementos a un vector.
w<-c(v[1:3],-10,v[4:length(v)]);
w
# También nos podemos preguntar cual es el rango de un vector, que no es
# más que el valor mínimo y el valor máximo que podemos encontrar.
range(v)
# También le podemos pedir que nos haga un resumen estadístico
# del vector v.
summary(v)
# También podemos ordenar los valores de un vector de menor a mayor.
sort(v)
# Ahora, nos planteamos trabajar con matrices. Para definir una
# matriz en R lo hacemos con el comando matrix o con el comando array.
m<-matrix(1:20,nrow=5); m
m2<-array(v,dim=c(2,4)); m2
# Muchas veces, vamos a tener datos almacenados en una tabla y nos
# va a interesar sacar conclusiones de la misma. Lo primero que hemos
# de saber es como hacer una tabla en R.
x<-c(1,1,2,2,2,1,2,1);
side<-rep("left",length(x));
side[x==1]="right";side
heigth<-c(134,186,208,176,165,189,197,163);
# Los vectores side y heigth seran las filas de nuestra tabla.
# Ahora, definimos la tabla con esas dos filas.
taula<-data.frame(side,heigth);
taula
# Si queremos acceder a una de las filas de la tabla, lo
# hacemos de la manera siguiente.
taula$side
# Otra posibilidad para no tener que usar el carácter $ para
# referirnos a una fila de la tabla es usar el comando attach.
attach(taula)
# De esta forma, ahora podemos referirnos directamente a cada
# una de las filas sin preocuparnos del nombre de la tabla.
side
heigth





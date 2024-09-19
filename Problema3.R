#Codigo para problema 3

X=c(-8,5,2,-8,9,5,2,-3,1,-1,4,-4,9,3,-9,7,0,-7,8,-4,1,7,-6,4,5,-9,-2,-8,5,-5)

sum(X)

diffY=c(21,2,26)
Y=X

for(i in diffY){
  Y=Y[-i]
}

SUM_N=0
SUM_M=0

for(n in X)
{
  SUM_N = SUM_N + exp(n)
}
for(m in Y){
  SUM_M=SUM_M + exp(m)
}

Sumatorio = SUM_N + SUM_M

Y[19]>=Y[24]

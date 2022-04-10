#Soal 2
#A 
cvid=20
x =0.2
sembuh =4
pluang=dbinom(sembuh,cvid,x,log=FALSE)
pluang

#B
hist(rbinom(sembuh,cvid,x),xlab="x",ylab ="Frekuensi",main ="Histogram of Binomial")

#C
rata=cvid*x
rata
vrian=cvid*x*(1-x)
vrian
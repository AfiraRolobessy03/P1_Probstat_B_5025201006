#Soal 5
#A
probstat = 3
rexp(10,rate = probstat)

#B
set.seed(1)
hist(rexp(10, rate = probstat), 
     main = "Histogram Eksponensial dengan 10 Generasi Acak")
hist(rexp(100, rate = probstat), 
     main = "Histogram Eksponensial dengan 100 Generasi Acak")
hist(rexp(1000, rate = probstat), 
     main = "Histogram Eksponensial dengan 1000 Generasi Acak")
hist(rexp(10000, rate = probstat), 
     main = "Histogram Eksponensial dengan 10 Generasi Acak")


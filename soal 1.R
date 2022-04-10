#Soal 1
#A
survei = 0.20
n = 3
dgeom(x = n, prob = survei)

#B
mean(rgeom(n = 10000, prob = survei) == 3)

#C

#D
hist(rgeom(n,survei),main="Histogram of Geometric",xlab="n")

#E
survei = 0.2
mean = 1/survei
mean
varian = (1-survei)/survei^2
varian
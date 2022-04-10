### Praktikum 1 Probabilitas & Stastistika

#### Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya.
 

A. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?(distribusi Geometrik)

```r 
survei = 0.20
n = 3
dgeom(x = n, prob = survei)
```
hasil 

```r
> survei = 0.20
> n = 3
> dgeom(x = n, prob = survei)
[1] 0.1024
```
menggunakan distribusi geometrik dengan bantuan fungsi dgeom(). Dari fungsi tersebut, didapatkan hasil sebagai berikut, yaitu peluang sebesar 0.1024. Fungsi tersebut berisi survei (sampel orang yang tidak menghadiri acara vaksinasi) dan n (peluang kehadiran orang menghadiri acara vaksinasi) sebagai parameternya.
![](https://github.com/AfiraRolobessy03/P1_Probstat_B_5025201006/blob/main/Capture.JPG)


B. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

```r 
mean(rgeom(n = 10000, prob = survei) == 3)
```
hasil 
```r 
> mean(rgeom(n = 10000, prob = survei) == 3)
[1] 0.1059
```
Mean distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut n = 3 (distribusi Geometrik acak () == 3)!.Dengan menggunakan rumus mean parameter berupa bilangan acak dalam distribusi geometrik dengan bantuan fungsi rgeom(). Dari rata-rata fungsi tersebut, hasilnya mungkin berbeda. Salah satu hasilnya di bawah ini, dengan rata-rata 0,1028. Fungsi rgeom() berisi jumlah data acak orang dan kemungkinan seseorang berpartisipasi dalam kampanye vaksinasi.

![](https://github.com/AfiraRolobessy03/ss/blob/main/b.JPG)

C. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan
Disimpulkan bahwa poin a dilakukan distribusi Geomterik biasa dan didapatkan nilai kecil di bandingkan nilai b yang besar . Nilai tersebut merupakan nilai terbesar dari peluang-peluang yang dapat terjadi pada kejadian tersebut. Sedangkan pada poin B, didapatkan hasil sebesar karena merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. Untuk kebutuhan sampling, poin A lebih baik untuk digunakan daripada poin B.

D. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```r 
hist(rgeom(n,survei),main="Histogram of Geometric",xlab="n")
```
hasil 
![](https://github.com/AfiraRolobessy03/ss/blob/main/d.JPG)
digunakan fungsi hist() dengan parameter fungsi distribusi Geometrik seperti yang telah dilakukan pada poin-poin sebelumnya.
 
E.Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```r 
survei = 0.2
mean = 1/survei
mean
varian = (1-survei)/survei^2
varian
```
hasil
```r 
> survei = 0.2
> mean = 1/survei
> mean
[1] 5
> varian = (1-survei)/survei^2
> varian
[1] 20
>
```

![](https://github.com/AfiraRolobessy03/ss/blob/main/e.JPG)

#### Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

A. Peluang terdapat 4 pasien yang sembuh.
```r 
cvid=20
x =0.2
sembuh =4
pluang=dbinom(sembuh,cvid,x,log=FALSE)
pluang
```
hasil
```r 
> cvid=20
> x =0.2
> sembuh =4
> pluang=dbinom(sembuh,cvid,x,log=FALSE)
> pluang
[1] 0.2181994
```
![](https://github.com/AfiraRolobessy03/ss/blob/main/2%20a.JPG)

B. Gambarkan grafik histogram berdasarkan kasus tersebut.
```r 
hist(rbinom(sembuh,cvid,x),xlab="x",ylab ="Frekuensi",main ="Histogram of Binomial")
```
hasil
![](https://github.com/AfiraRolobessy03/ss/blob/main/2%20b.JPG)

C. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
```r 
rata=cvid*x
rata
vrian=cvid*x*(1-x)
vrian
```
hasil
```r 
rata=cvid*x
rata
vrian=cvid*x*(1-x)
vrian
```
![](https://github.com/AfiraRolobessy03/ss/blob/main/2%20c.JPG)

#### Soal 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

A. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

```r 
y = 6
rata = 4.5
dpois(y,rata)
```
hasil 
```r 
> y = 6
> rata = 4.5
> dpois(y,rata)
[1] 0.1281201
```
![](https://github.com/AfiraRolobessy03/ss/blob/main/3%20a.JPG)

B. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)
```r 
y = 365
hist(dpois(y, rata), main = "Histogram")
```
hasil 
![](https://github.com/AfiraRolobessy03/ss/blob/main/Screenshot%20(326).png)

C. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
kesimpilan yang saya dapat poin a menggambarkan hasil bayi akan lahir berpeluang 0.1281201
sedangkan poin b menggambarkan hasil Histogram simulasi kelahiran bayi 365

D. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
```r 
mean = var = lambda
mean
var
```
hasil
```r 
> mean = var = rata
> mean
[1] 4.5
> var
[1] 4.5
```
![](https://github.com/AfiraRolobessy03/ss/blob/main/3%20akhir.png)

#### Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:

A. Fungsi Probabilitas dari Distribusi Chi-Square.
```r 
x = 2
y = 10
stat = dchisq(x,y)
stat
```
hasil
```r 
> x = 2
> y = 10
> stat = dchisq(x,y)
> stat
[1] 0.007664155
```
![](https://github.com/AfiraRolobessy03/ss/blob/main/4%20a.JPG)

B. Histogram dari Distribusi Chi-Square dengan 100 data random.
```r
n = 100
hist(rchisq(x,y),xlab = "x", ylab = "y", main = "Grafik HIstogram")

```
hasil
![](https://github.com/AfiraRolobessy03/ss/blob/main/4%20b.JPG)

C. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
```r
mean = y
vrian = 2*y
mean
vrian
```
hasil
```r
> mean = y
> vrian = 2*y
> mean
[1] 10
> vrian
[1] 20
```
![](https://github.com/AfiraRolobessy03/ss)

#### Soal 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

a. Fungsi Probabilitas dari Distribusi Exponensial
```r 
probstat = 3
rexp(10,rate = probstat)

```
hasil
```r 
> probstat = 3
> rexp(10,rate = probstat)
 [1] 0.3025039 0.3170566 0.3692072 0.4141648 0.1604637 0.1765985 0.2971135 0.4361808
 [9] 0.1939910 0.1920394
```
![](https://github.com/AfiraRolobessy03/ss/blob/main/5a.JPG)
b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```r 
set.seed(1)
hist(rexp(10, rate = probstat), 
     main = "Histogram Eksponensial dengan 10 Generasi Acak")
hist(rexp(100, rate = probstat), 
     main = "Histogram Eksponensial dengan 100 Generasi Acak")
hist(rexp(1000, rate = probstat), 
     main = "Histogram Eksponensial dengan 1000 Generasi Acak")
hist(rexp(10000, rate = probstat), 
     main = "Histogram Eksponensial dengan 10 Generasi Acak")

```
hasil
![](https://github.com/AfiraRolobessy03/ss/blob/main/5b.JPG)

c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Petunjuk:
● Gunakan set.seed(1)
● Gunakan fungsi bawaan R

|Nama                    | NRP             |
|------------------------|-----------------|
|Afira Rolobessy         |5025201006       |

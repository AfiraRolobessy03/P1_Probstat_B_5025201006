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

#### Soal 1
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
|Nama                    | NRP             |
|------------------------|-----------------|
|Afira Rolobessy         |5025201006       |

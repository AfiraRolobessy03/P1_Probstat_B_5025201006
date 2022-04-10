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
menggunakan distribusi geometrik dengan bantuan fungsi dgeom(). Dari fungsi tersebut, didapatkan hasil sebagai berikut, yaitu peluang sebesar 0.1024. Fungsi tersebut berisi x (sampel orang yang tidak menghadiri acara vaksinasi) dan p (peluang kehadiran orang menghadiri acara vaksinasi) sebagai parameternya.
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



|Nama                    | NRP             |
|------------------------|-----------------|
|Afira Rolobessy         |5025201006       |

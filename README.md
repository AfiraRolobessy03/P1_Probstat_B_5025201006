### Praktikum 1 Probabilitas & Stastistika



#### Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya.

- Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?(distribusi Geometrik)

```r
survei = 0.20
p = 3
dgeom(x = p, prob = survei)
```
hasil 

```r
> survei = 0.20
> n = 3
> dgeom(x = n, prob = survei)
[1] 0.1024
```




|Nama                    | NRP             |
|------------------------|-----------------|
|Afira Rolobessy         |5025201006       |

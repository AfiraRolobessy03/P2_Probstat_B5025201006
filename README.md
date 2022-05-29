# P2_Probstat_B5025201006

### Praktikum 2 Probabilitas & Stastistika

#### Soal 1
1.	Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

A.Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
diatas
![hasil 1](https://user-images.githubusercontent.com/81508591/170878739-171fcbc0-2c4c-4672-952d-6510908bf4cf.JPG)

Standar deviasi dari data respoden 1 -9 pada x dan y di  hitang rata - rata adalah 6.35959467611297 
kemudian hasilnya di bulatkan jadi 6.359595


B.carilah nilai t (p-value)
untuk mencari nilai p value menggunkan function test,  untuk stringnya menggunkan  alternative sebagai karakter yang 
menentukan hipotesis alternatif jika print(greater) maka hasilnya akan true
![hasil 1 b](https://user-images.githubusercontent.com/81508591/170878788-42c902c0-e6df-47cd-ab2c-ee3abeb5c989.JPG)

C.tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
![hasil 1 c](https://user-images.githubusercontent.com/81508591/170878947-fc3c028b-bc6c-404a-ba5b-31710c699066.JPG)
Terdapat pengaruh yang signifikan secara statistik terhadap kadar saturasi oksigen sebelum dan sesudah aktivitas jika taraf signifikansi = 5% dan H0 diketahui: “Tidak terdapat pengaruh yang signifikan secara statistik terhadap kadar saturasi oksigen sebelum dan sesudah aktivitas melakukan aktivitas”

#### Soal 2
library seperti referensi pada modul).
A.Apakah Anda setuju dengan klaim tersebut?
Setuju

B.Jelaskan maksud dari output yang dihasilkan!
![hasil 2](https://user-images.githubusercontent.com/81508591/170879783-01244054-33a4-4b33-9306-8835db620f74.JPG)

C.Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
berdasarkan P-Value yang dihasilkan! kesimpulan dari soal diatas adalah mobil yang digunakan rata ratanya lebih dari 20.000 km/tahun

#### Soal 3
Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :
A.H0 dan H1
```r
H0 = 9.50
H1 = 10.98
```
B. Hitung Sampel Statistik
![3 b](https://user-images.githubusercontent.com/81508591/170879982-15e8c522-d903-49da-a73d-4ae2cf7b4b23.JPG)

C. Lakukan Uji Statistik (df =2)
![3 c](https://user-images.githubusercontent.com/81508591/170880109-cfcde55b-a783-4fdd-a8f4-d84366121d98.JPG)

D. Nilai Kritikal
![3 d](https://user-images.githubusercontent.com/81508591/170880126-3b968a33-c02a-4cae-b319-c5045e179d83.JPG)

E. Keputusan
Hasil uji terletak di interval nilai kritikal, maka H0 tidak ditolak/sample tidak memiliki cukup bukti yang bertentangan dengan H0.

F.Kesimpulan
kesimpulannya adalah 95% rata-rata saham di Bali dan di Bandung adalah sama.

### Soal 4
diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama
Maka Kerjakan atau Carilah:
A. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
lihat apakah ada outlier utama dalam homogenitas varians.
```r
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")

```

B. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
```r
bartlett.test(Length~V1, data=dataoneway)
```
C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1.
```r
qqnorm(group1$Length)
qqline(group1$Length)

```

D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?
```r
dari pengujian diatas, didapatkan
bartlett = 0.43292
p-value = 0.8054
```
E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?

```r
© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About

```

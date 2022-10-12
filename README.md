# Praktikum Modul 1 - Probstat A 2022

 Nama           : Rafi Aliefian Putra Ramadhani        
 NRP            : 5025211234                          

## Nomor 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
 - Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi?

    Diselesaikan menggunakan distribusi Geometrik dengan bantuan fungsi `dgeom()`. Dari fungsi tersebut, didapatkan hasil peluang sebesar `0.1024`. Fungsi tersebut berisi `x` (sampel orang yang tidak menghadiri acara vaksinasi) dan `p` (peluang kehadiran orang menghadiri acara vaksinasi) sebagai parameternya.
    ```R
    #1 Point A
    p = 0.2
    x = 3
    P <- dgeom(x, p)
    P
    ```
    Berikut hasilnya :
    ![1a](https://user-images.githubusercontent.com/91828276/194922798-d1e05224-c56b-4622-86f6-171e79a0c982.png)
 - Mean distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 (distribusi Geometrik acak () == 3)

    Diselesaikan menggunakan rumus rata-rata dengan parameter berupa random variable dari distribusi Geometri yang telah dilakukan dengan bantuan fungsi `rgeom()`.Fungsi `rgeom()` ini berisi banyaknya data acak orang dan peluang kehadiran orang dalam menghadiri acara vaksinasi. Dari hasil rata-rata fungsi tersebut, didapatkan hasil yang cenderung berbeda atau berubah-ubah. Saya mendapatkan salah satu hasilnya yaitu sebesar `0.1028`.
    ```R
    #1 Point B
    mean(rgeom(n = 10000, prob = p) == 3)
    ```
    Berikut hasilnya : 
    ![1b](https://user-images.githubusercontent.com/91828276/194922810-17ee1a34-9599-4a72-8cd5-630e5b2b3c37.png)
 - Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
 
    Didapatkan hasil berupa kedua poin tersebut menghasilkan hasil yang berbeda. Pada `1 Point A`, dilakukan distribusi Geomterik biasa dan didapatkan nilai sebesar `0.1024` dan akan selalu tetap jika dilakukan pengulangan pengujian. Hal itu dikarenakan nilai distribusi Geometrik yang digunakan adalah tetap dan tidak diacak.
    Sedangkan pada `1 Point B`, didapatkan hasil yang selalu berubah-ubah karena hasil tersebut merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. Nilai peluang distribusi tersebut akan selalu berubah seiring dengan nilai random yang dihasilkan dari fungsi `rgeom()`.
    
    Dengan kesimpulan bahwa `1 Point B` lebih efisien daripada `1 Point A`. 
    
 - Histogram distribusi Geometrik, dengan peluang X = 3 gagal sebelum sukses pertama.

    Digunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Geometrik sebagai parameternya.
    ```R
    #1 Point D
    n = 10000
    hist(rgeom(n, prob = p), main = 'Histogram Distribusi Geometrik')
    ```
    Berikut hasilnya :
    ![1d](https://user-images.githubusercontent.com/91828276/194922815-4bd498d6-5e13-4d1f-bfae-83c5e280241c.png)
 - Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

    Untuk mendapatkan nilai `Rataan` menggunakan formula banyak data dibagi dengan peluang kejadian, sebagai berikut :
    ```R
    #1 Point E
    mean = 1 / p
    mean
    ```
    Untuk mendapatkan nilai `Varian` menggunakan formula nilai rataan dan dibagi dengan kuadrat dari peluang kejadian, sebagai berikut :
    ```R
    #1 Point E
    variance = (1 - p) / (p ^ 2)
    variance
    ```
    Berikut hasilnya :
    ![1e](https://user-images.githubusercontent.com/91828276/194922817-b8a6e600-93c6-4ffe-9b0c-d0b0bc84a007.png)


</br>

## Nomor 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan:
 - Peluang terdapat 4 pasien yang sembuh.
    
    Peluang sembuh didapatkan dengan menggunakan distribusi Binomial dengan memanfaatkan `dbinom()`. Fungsi ini berisi `n` (jumlah data pasien) dan `p` (peluang sembuh pasien) sebagai parameternya.
    ```R
    n = 20
    p = 0.2

    #2 Point A
    x = 4
    probability = dbinom(x, n, prob = p, log = FALSE)
    probability
    ```
    Berikut hasilnya :
    ![2a](https://user-images.githubusercontent.com/91828276/194922823-0a29ccb9-9c8e-4fcd-8e36-b90c8cf590e1.png)
 - Gambarkan grafik histogram berdasarkan kasus tersebut.

    Untuk membuat histogram distribusi Geometrik, digunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Binomial sebagai parameternya.
    ```R
    #2 Point B
    hist(rbinom(x, n, prob = p), xlab = "X", ylab = "Frekuensi", main = "Histogram Binomial")
    ```
    Berikut hasilnya :
    ![2b](https://user-images.githubusercontent.com/91828276/194922828-e83752ac-11d0-49f5-a9f4-b4d325611abc.png)
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Binomial.

    Nilai rataan didapat dengan menggunakan formula banyak data dikalikan dengan peluang kejadian.
    ```R
    #2 Point C
    mean = n * (prob = p)
    mean
    ```

    Nilai varian didapat dengan menggunakan formula nilai rataan dan dikalikan dengan komplemen dari peluang kejadian.
    ```R
    #2 Point C
    variance = n * (prob = p) * (1 - (prob = p))
    variance 
    ```

    Berikut hasilnya :
    ![2c](https://user-images.githubusercontent.com/91828276/194922834-f7bb5c78-a7f6-4a8f-84e2-2e2733862db5.png)

 </br>

 ## Nomor 3
 > Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
 - Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

   Penyelesaian menggunakan distribusi Poisson dengan bantuan fungsi `dpois()`. Fungsi ini berisi `x` (jumlah data bayi) dan `lambda` (rata-rata historis kelahiran bayi) sebagai parameternya.
    ```R
    lambda = 4.5

    #3 Point A
    x = 6
    probability = dpois(x, lambda)
    probability
    ```
    Berikut hasilnya :
    ![3a](https://user-images.githubusercontent.com/91828276/194922843-84f837f7-14db-4968-8d26-08a56f2ab130.png)
 - Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365).
    
    Untuk membuat histogram distribusi Poisson, digunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Poisson sebagai parameternya.
    ```R
    #3 Point B
    x = 6
    n = 356
    hist(rpois(n, lambda), main = "Histogram Poisson")
    ```
    Berikut hasilnya :
    ![3b](https://user-images.githubusercontent.com/91828276/194922850-a76e30d1-965a-4ea6-93f0-085fc04d55fa.png)

 - Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?

    Didapatkan hasil bahwa `3 Point A` dan `3 Point B` cenderung memiliki kesamaaan, dikarenakan nilai dari `3 Point A` sendiri didapat dari range nilai `3 Point B`. Range dari B dapat dilihat pada plot yang telah terbentuk. Dari sana, nilai dari A berada di dalam range B.
    
    Sehingga didapatkan kesimpulan bahwa dalam estimasi selama 365 hari akan memberikan hasil nilai yang hampir sama dengan estimasi jumlah bayi yang akan dilahirkan di esok hari (waktu selanjutnya).
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Poisson.
    
    Nilai rataan didapat dengan menggunakan nilai dari variance, karena keduanya sama pada distribusi Poisson.
    ```R
    #3 Point D
    mean = variance
    mean
    variance
    ```
    Berikut hasilnya :
    ![3d](https://user-images.githubusercontent.com/91828276/194922852-3a05f027-955f-41a1-b8c0-df23acdef35f.png)



 </br>

 ## Nomor 4
 > Diketahui nilai x = 2 dan v = 10. Tentukan:
 - Fungsi Probabilitas dari Distribusi Chi-Square.

    Penyelesaian menggunakan distribusi Chi-Square dengan bantuan fungsi `dchisq()`. Fungsi ini berisi `x` jumlah data dan `v`.
    ```R
    x = 2
    v = 10

    #4 Point A
    probability = dchisq(x, 10)
    probability
    ```
    Berikut hasilnya :
    ![4a](https://user-images.githubusercontent.com/91828276/194922854-f2b51839-dede-4c0f-a37a-7d36f1456522.png)
 - Histogram dari Distribusi Chi-Square dengan 100 data random.

    Untuk membuat histogram distribusi Chi-Square, digunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Chi-Squaresebagai parameternya.

    ```R
    #4 Point B
    n = 100
    hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Histogram Chi-Square")
    ```
    Berikut hasilnya :
    ![4b](https://user-images.githubusercontent.com/91828276/194922861-8070f480-23f5-4184-a13b-ae7e313590a5.png)
 - Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
    
    Nilai rataan didapat dengan menggunakan nilai dari `v`.
    ```R
    #4 Point C
    mean = v
    mean
    ```

    Nilai rataan didapat dengan menggunakan nilai dari `v` dikalikan dengan dua.
    ```R
    #4 Point C
    variance = 2 * v
    variance
    ```
    Berikut hasilnya :
    ![4c](https://user-images.githubusercontent.com/91828276/194922867-0a6af908-16b1-4d8d-a819-15ca3a183988.png)


 </br>
 
 ## Nomor 5
 > Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan:
 - Fungsi Probabilitas dari distribusi Exponensial.

    Penyelesaian menggunakan distribusi Eksponensial dengan bantuan fungsi `dexp()`. Fungsi ini berisi banyaknya data dan rate (λ) sebagai parameternya.
    ```R
    lambda = 3

    #5 Point A
    set.seed(1)
    rnorm(1)
    probability = dexp(1, rate = lambda)
    probability
    ```
    Berikut hasilnya :
    ![5a](https://user-images.githubusercontent.com/91828276/194922873-a2eabfd1-cca9-409b-b23e-13ec19cf99db.png)

 - Histogram dari distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random.

    Untuk membuat histogram distribusi Geometrik, digunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Eksponensial dan variasi pada jumlah data yang digunakan (10, 100, 1000, dan 10000) sebagai parameternya.
    ```R
    #5 Point B
    set.seed(1)
    hist(rexp(10, rate = lambda), main = "Exp 10 Random Variable")
    hist(rexp(100, rate = lambda), main = "Exp 100 Random Variable")
    hist(rexp(1000, rate = lambda), main = "Exp 1000 Random Variable")
    hist(rexp(10000, rate = lambda), main = "Exp 10000 Random Variable")

    ```
    Berikut hasilnya :
    ![5ba](https://user-images.githubusercontent.com/91828276/194922877-ce7e7f18-7a6c-4cb7-b5b2-b583e5777061.png)
    ![5bb](https://user-images.githubusercontent.com/91828276/194922878-7c74deec-983b-4f4e-b38b-95095a7e07f1.png)
    ![5bc](https://user-images.githubusercontent.com/91828276/194922886-821990f0-69c1-4c7c-b930-6d4bd95571c4.png)
    ![5bd](https://user-images.githubusercontent.com/91828276/194972536-c8b3fc1f-147e-487f-93a6-c9de5a029134.png)
    

 - Nilai rataan (μ) dan varian (σ²) dari distribusi Exponensial untuk n = 100 dan λ = 3.

    Nilai rataan didapat dengan menggunakan formula `mean()` dengan parameter angka acak dari distribusi Eksponensial.
    ```R
    #5 Point C
    n = 100
    set.seed(1)
    mean = mean(rexp(n, rate = lambda))
    mean
    ```

    Nilai varian didapat dengan menggunakan formula `sd()` atau standar deviasi dengan parameter angka acak dari distribusi Eksponensial dan dikuadratkan.
    ```R
    #5 Point C
    n = 100
    set.seed(1)
    variance = (sd(rexp(n, rate = lambda))) ^ 2
    variance
    ```
    Berikut hasilnya :
    ![5c](https://user-images.githubusercontent.com/91828276/194922895-204b43a4-0ef0-46b6-94f9-8db0112da687.png)

 </br>

 ## Nomor 6
 > Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan:
 - Fungsi Probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score-nya dan plot data generate randomnya dalam bentuk grafik.

    Z-Score didapatkan melalui 2 cara, dimana langkah pertama yaitu dilakukan generate random number terlebih dahulu dengan menggunakan fungsi `rnorm()`. Kemudian, dilakukan penentuan nilai `x1` dan `x2` yang nantinya digunakan dalam pembuatan plot grafik.
    ```R
    n = 100
    mean = 50
    sd = 8

    #6 Point A
    set.seed(1)
    data <- rnorm(n, mean, sd)
    data
    summary(data)

    x1 = runif(1, min = min(data), max = mean)
    x2 = runif(1, min = mean, max = max(data))
    x1
    x2

    probability1 <- pnorm(x1, mean, sd)
    probability2 <- pnorm(x2, mean, sd)
    probability1
    probability2

    probability <- probability2 - probability1
    plot(data)
    ```
    Berikut hasilnya :
    ![6a](https://user-images.githubusercontent.com/91828276/194922897-dc750fae-4017-4dd7-8241-811e06ddc6f0.png)

 - Generate histogram dari distribusi Normal dengan breaks 50.

    Untuk membuat histogram distribusi Geometrik, digunakan fungsi `hist()` dengan parameter yaitu data dan nilai breaks.
    ```R
    #6 Point B
    breaks = 50
    hist(data, breaks, main = "5025211234_Rafi Aliefian Putra Ramadhani_Probstat_A_DNhistogram")

    ```
    Berikut hasilnya :
    ![6b](https://user-images.githubusercontent.com/91828276/194922900-48bddeb8-76bb-432c-99f3-ce1b1d8c6ee4.png)

 - Nilai varian (σ²) dari hasil generate random nilai distribusi Normal.

    Nilai varian menggunakan formula kuadrat dari standar deviasi.
    
    ```R
    #6 Point C
    variance = (sd(data)) ^ 2
    variance
    ```
    Berikut hasilnya :
    ![6c](https://user-images.githubusercontent.com/91828276/195339814-f030d27f-699f-4f8c-a6d7-83bb59f4d1fc.png)

</br>

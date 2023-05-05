# Prak1_Probstat2023_C_5025211109

## Identitas

    Nama    : Dewangga Dika Darmawan
    NRP     : 5025211109
    Kelas   : Probabilitas dan Statistika (C)

### Nomor 1

Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488. Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran, maka:

- #### Poin A

    Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.

    #### Penyelesaian:

    ```
    Distribusi: Binomial
    Karena diketahui hanya akan ada 2 kemungkinan hasil, yaitu bayi lahir berjenis kelamin laki-laki atau tidak laki-laki.
    Selain itu, terdapat percobaan lebih dari satu kejadian.

    Parameter:
    n (banyak kejadian) = 10
    p (peluang sukses) = 0.488

    Rumus: P(X=k) = (10Ck) 0.488^k (1-0.488)^(10-k)
    ```

- #### Poin B

    Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?

    #### Penyelesaian:

    Untuk mengetahui probabilitas suatu titik pada distribusi binomial, digunakan fungsi `dbinom(x, size, prob)`. Di mana `x` adalah titik yang akan dicari, `size` adalah banyak kejadian, dan `prob` adalah peluang sukses.
    </br>
    ```r
    b <- 3
    ans <- dbinom(x=b, size=10, prob=0.488)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236455338-6bc6fd27-9a4e-4e72-9d3e-4e5f240e09ab.png)

- #### Poin C

    Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?

    #### Penyelesaian:

    Untuk mencari probabilitas suatu titik di salah satu sisi pada distribusi binomial, digunakan fungsi `pbinom(p, size, prob, lower.tail)`. Di mana `p` adalah titik batas, `size` adalah banyak kejadian, `prob` adalah peluang sukses, dan `lower.tail` adalah boolean di mana sama dengan `TRUE` berarti mencari probabilitas di sebelah kiri titik, sedangkan `FALSE` sebaliknya.
    </br>
    ```r
    c <- 2
    ans <- pbinom(q=c, size=10, prob=0.488, lower.tail=TRUE)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236456629-71563a46-17fd-47b4-bf1d-c919b39883a7.png)

- #### Poin D

    Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?

    #### Penyelesaian:

    Untuk mencari probabilitas suatu titik di salah satu sisi pada distribusi binomial, digunakan fungsi `pbinom(p, size, prob, lower.tail)`. Di mana `p` adalah titik batas, `size` adalah banyak kejadian, `prob` adalah peluang sukses, dan `lower.tail` adalah boolean di mana sama dengan `TRUE` berarti mencari probabilitas di sebelah kiri titik, sedangkan `FALSE` sebaliknya.
    </br>
    ```r
    d <- 3
    ans <- pbinom(q=d, size=10, prob=0.488, lower.tail=FALSE)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236457117-95db1d72-d693-4209-978d-0c52737f5377.png)

- #### Poin E

    Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?

    #### Penyelesaian:
    Pada distribusi binomial nilai harapan adalah `n * p`. Lalu untuk simpangan baku, dikarenakan varian distribusi binomial adalah `n * p * q` atau nilai harapan dikali dengan peluang tidak sukses, maka simpangan baku nya adalah akar dari varians yaitu `sqrt(n * p * (1 - p))`. Di mana `n` adalah banyak kejadian, `p` adalah peluang sukses, dan `q` peluang tidak sukses.
    </br>
    ```r
    size <- 10
    prob <- 0.488
    nilai_harapan <- size * prob
    nilai_harapan
    simp_baku <- sqrt(size * prob * (1 - prob))
    simp_baku
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236458128-0d9f8d32-dd96-4219-ab46-aa45b11d25fe.png)

- #### Poin F

    Gambarkan histogram pendistribusian banyak bayi laki-laki.

    #### Penyelesaian:

    Menggunakan fungsi `plot()`.
    </br>
    ```r
    f <- 0:10
    plot(f, dbinom(x=f, size=10, prob=0.488),
         type='h',
         main='Histogram Pendistribusian Banyak Bayi Laki-laki',
         xlab='Banyak Bayi Laki-laki',
         ylab='Probabilitas'
    )
    ```

    #### Hasil:
    
    ![image](https://user-images.githubusercontent.com/108203648/236458813-78a08587-022d-4617-bead-1a56d45aaa46.png)

### Nomor 2

Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan adalah 1,8.

- #### Poin A

    Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan 
    distribusi dengan parameter yang sesuai.

    #### Penyelesaian:

    ```
    Distribusi : Poisson
    Karena diketahui kemungkinan terjadinya suatu peristiwa dalam suatu interval waktu tertentu,
    di mana peristiwa tersebut jarang terjadi, tetapi dapat terjadi dalam berbagai banyak kejadian

    Parameter:
    λ (rata-rata banyak kejadian dalam interval waktu atau ruang tertentu) = 1.8
    e = bilangan natural (2.71828...)

    Rumus : P(X=k) = e^(-1.8) (1.8^k / k!)
    ```

- #### Poin B

    Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.

    #### Penyelesaian:
    
    Kejadian tergolong tidak biasa. Untuk menghitung probabilitasnya menggunakan fungsi `dpois(x, lambda)`. Di mana, `x` adalah nilai titik yang dicari dan `lambda` adalah rata-rata banyak kejadian (λ).
    </br>
    ```r
    b <- 4
    ans <- dpois(x=b, lambda=1.8)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236461453-996e06f9-7646-4fd1-a36c-22257273b4b4.png)

- #### Poin C

    Berapa peluang paling banyak 4 kematian akibat kanker tulang?

    #### Penyelesaian:

    Untuk menghitung probabilitasnya menggunakan fungsi `ppois(q, lambda, lower.tail)`. Di mana, `q` adalah titik batas, `lambda` adalah rata-rata kejadian terjadi, dan `lower.tail` adalah boolean di mana sama dengan `TRUE` berarti mencari probabilitas di sebelah kiri titik, sedangkan `FALSE` sebaliknya.
    </br>
    ```r
    c <- 4
    ans <- ppois(q=c, lambda=1.8, lower.tail=TRUE)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236462724-d5463ee2-bb47-4e6e-a211-34d39000716d.png)

- #### Poin D

    Berapa peluang lebih dari 4 kematian akibat kanker tulang?

    #### Penyelesaian:

    Sama seperti permasalahan 2C, kita bisa menggunakan fungsi `ppois()`, tetapi nilai `lower.tail` = `FALSE`.
    </br>
    ```r
    d <- 5
    ans <- ppois(q=d, lambda=1.8, lower.tail=FALSE)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236463621-b5c1a47a-9667-414c-afc7-9a6e7ff11243.png)

- #### Poin E

    Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?

    #### Penyelesaian:
    
    Nilai harapan adalah rata rata keberhasilan / lambda, sedangkan standar deviasinya adalah akar dari nilai harapan/varians tersebut.
    </br>
    ```r
    nilai_harapan <- 1.8
    nilai_harapan
    standar_deviasi <- sqrt(nilai_harapan)
    standar_deviasi
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236464396-ce47d8b5-aff3-44df-bd2e-1f09f592308d.png)

- #### Poin F

    Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.

    #### Penyelesaian:

    Menggunakan fungsi `plot()`.
    </br>
    ```r
    f <- 0:10
    plot(f, dpois(f, lambda=1.8),
         type='h',
         main='Histogram Pendistribusian Banyak Kematian',
         ylab='Probabilitas',
         xlab ='Banyak Kematian'
    )
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236464818-d84f8df4-a42f-43a0-ad2d-307e96b58c95.png)

- #### Poin G

    Gunakan simulasi untuk memeriksa hasil sebelumnya.

    #### Penyelesaian:

    Untuk membuat simulasi, digunakan fungsi `rpois(n, lambda)`, dengan `n` adalah banyak simulasi yang ingin dibuat, supaya hasilnya tidak berubah tiap kali di run, digunakan `set.seed()`.
    </br>
    ```r
    set.seed(123456789)
    ans = rpois(n=10, lambda=1.8)
    ans
    ```

    #### Hasil:
    
    ![image](https://user-images.githubusercontent.com/108203648/236465284-f2b99db8-ba28-429f-9e34-aef330f0dcf0.png)

- #### Poin H

    Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.

    #### Penyelesaian:

    Dilihat dari poin 2G, hasil simulasi tidak jauh dari lambda yang ada atau berada dalam range 0-4. Sehingga, apabila dibandingkan dengan hasil poin 2D, menunjukkan bahwa probabilitas kematian diatas 4 memiliki nilai yang lebih kecil.

### Nomor 3

Diketahui nilai `x = 3` dan `v = 10`. Tentukan:

- #### Poin A

    Fungsi probabilitas dari distribusi Chi-Square.

    #### Penyelesaian:
    
    Untuk mencari fungsi probabilitas digunakan `dchisq(x, df)`. Di mana, `x` adalah total data dan `df` atau `v` adalah bilangan bulat positif.
    </br>
    ```r
    ans <- dchisq(x=3, df=10)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236467501-527bcabe-bce9-4e37-813f-cef1f2c97a24.png)

- #### Poin B

    Histogram dari distribusi Chi-Square dengan 500 data acak.

    #### Penyelesaian:

    Untuk membuat histogram, digunakan fungsi `hist()` dengan parameter fungsi random chi-square `rchisq()`.
    </br>
    ```r
    n <- 500
    v <- 10
    hist(rchisq(n, v), main='Histogram Distribusi Chi-Square', ylab='V', xlab ='X')
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236468062-f0188066-d93c-474b-8c54-b3b204d856b3.png)

- #### Poin C

    Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.

    #### Penyelesaian:

    Penyelesaian menggunakan rumus `mean = v` dan `varian = 2 * v`.
    </br>
    ```r
    rataan <- v <- 10
    rataan
    varian <- 2 * v
    varian
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236468740-0325b7eb-0c30-45c4-be00-7c58e16db337.png)

### Nomor 4

Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5.

- #### Poin A

    Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).
    </br>
    ```
    Keterangan:
    X1 = Bilangan bulat terdekat di bawah rata-rata
    X2 = Bilangan bulat terdekat di atas rata-rata
    
    Contoh data:
    11
    1,2,4,2,6,3,10,11,5,3,6,8
    rata-rata = 5.083333
    X1 = 5
    X2 = 6
    ```

    #### Penyelesaian:

    Untuk menyelesaikan permasalahan ini langkah pertama yang perlu dilakukan adalah menggunakan fungsi `rnorm()` untuk menghasilkan data - data yang diperlukan. Kemudian kita digunakan fungsi `runif()` untuk memperoleh random deviates dari `max(data)` dan `min(data)`. Hasil dari random deviates tadi kemudian menjadi parameter dari fungsi `rnorm()`. Sedangkan untuk plot data dalam bentuk grafik kita dapat menggunakan fungsi `plot()` dengan parameter `data`. Untuk menghitung z-scorenya, kita dapat menggunakan persamaan `(data-mean(data)) / sd(data)`.
    </br>
    ```r
    data <- rnorm(n=n, mean=45, sd=sd)
    data

    z <- (data-mean(data)) / sd(data)
    z

    min <- runif(1, min = min(data), max = mean)
    max <- runif(1, min = mean, max = max(data))
    prob_min <- pnorm(min, mean, sd)
    prob_max <- pnorm(max, mean, sd)
    prob <- prob_max - prob_min
    prob

    plot(data)
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236472837-f2d8a3f1-0746-4baf-809c-8ffd5fcf00ed.png)

    </br>

    ![image](https://user-images.githubusercontent.com/108203648/236473020-4410f84a-2bc7-4139-8425-aea2726cd3f9.png)

- #### Poin B

    Gambarkan histogram dari distribusi Normal dengan breaks 50.

    #### Penyelesaian:

    Digunakan fungsi `hist()` untuk menyelesaikan permasalahan ini.
    </br>
    ```r
    breaks <- 50
    hist(data, breaks, main = "Histogram Distribusi Normal")
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236473544-55e76cd7-d123-42cc-bf69-d1f25895bfc1.png)

- #### Poin C

    Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.

    #### Penyelesaian:

    Untuk mendapatkan varian kita memerlukan bantuan dari fungsi `sd()` yang parameternya `data` kemudian hasil dari fungsi itu kita kuadratkan.
    </br>
    ```r
    varian <- sd(data)^2
    varian
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236474217-4f36f263-696b-431b-a9a3-197eed7c094a.png)

### Nomor 5

Kerjakanlah menggunakan distribusi T-Student.

- #### Poin A

    Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan?

    #### Penyelesaian:
    
    Untuk mendapatkan probabilitas menggunakan distribusi T-Student, kita dapat menggunakan fungsi `pt()` dengan `lower.tail = TRUE`.
    </b>
    ```r
    a <- -2.34
    df_a <- 6
    ans <- pt(q=a, df=df_a, lower.tail=TRUE)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236476522-f001b260-1d56-4fe3-bf07-a4eb72698d1c.png)

- #### Poin B

    Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?

    #### Penyelesaian:
    
    Untuk mendapatkan probabilitas menggunakan distribusi T-Student, kita dapat menggunakan fungsi `pt()` dengan `lower.tail = FALSE`.
    </b>
    ```r
    b <- 1.34
    df_b <- 6
    ans <- pt(q=b, df=df_b, lower.tail=FALSE)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236476705-3c1c21b9-ae18-40a7-8080-1fb96b89b75b.png)

- #### Poin C

    Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan?

    #### Penyelesaian:

    Untuk menyelesaikan masalah ini, hanya mencari salah satu luasan kemudian mengkalikannya dengan 2 karena grafik distribusi t-student berbentuk lonceng simetris.
    </b>
    ```r
    c <- -1.23
    df_c <- 3
    ans <- (pt(q=c, df=df_c)) * 2
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236476873-1419832e-a10f-4e0c-9923-d31aa972d354.png)

- #### Poin D

    Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan?

    #### Penyelesaian:

    Karena grafik distribusi t-student berbentuk lonceng simetris, maka luas kanan & kiri dari titik pusat sama luasnya. Untuk menyelesaikan masalah ini, hanya mencari salah satu luasan kemudian mengkalikannya dengan 2.
    </b>
    ```r
    d <- -0.94
    df_d <- 14
    ans <- 1 - ((pt(q=d, df=df_d)) * 2)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236477024-5a7fe8e7-6b3d-4cec-8118-55de4805bbf8.png)

- #### Poin E

    Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?

    #### Penyelesaian:

    Pada permasalahan kali ini, yang dicari adalah nilai t-scorenya dengan diketahui `df` dan luasan / probabilitasnya, maka digunakan fungsi `qt()`.
    </b>
    ```r
    e <- 0.0333
    df_e <- 5
    ans <- qt(p=e, df=df_e)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236477094-ad9dd52a-6ad7-43d1-bff2-742b1d9eff09.png)

- #### Poin F

    Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?

    #### Penyelesaian:
    
    Sama seperti soal 5E. Namun, dalam kasus ini nilai x nya adalah `1 - 0.125` karena 0.125 adalah luasan dikanan.
    </b>
    ```r
    f <- 1 - 0.125
    df_f <- 25
    ans <- qt(p=f, df=df_f)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236477208-315038e1-a767-480b-8ccb-a3b06b6236f8.png)

- #### Poin G

    Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?

    #### Penyelesaian:
    
    Luasan dibawah kurva dan didalam range t-score & negatifnya adalah 0.75, maka luasan sisanya adalah `1 - 0.75 = 0.25`. Dan karena t-student berbentuk simteris, maka luasan di kanan maupun di kiri adalah `(1 - 0.75) / 2 = 0.125`. Kita perlu mencari nilai t-score yang memiliki luasan 0,125 tersebut.
    </b>
    ```r
    g <- 0.75 + ((1 - 0.75) / 2)
    df_g <- 11
    ans <- qt(p=g, df=df_g)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236477336-348d70ed-e22c-457d-bb46-adca32a8ace3.png)

- #### Poin H

    Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?

    #### Penyelesaian:
    
    Hampir sama dengan 5G. Bedanya pada kasus ini luasan yang diketahui adalah di luar t score dan negatifnya, yaitu t score sampai tak hingga dan juga mines tak hingga samapai negatif t score.
    </b>
    ```r
    h <- 1 - (0.0333 / 2)
    df_h <- 23
    ans <- qt(p=h, df=df_h)
    ans
    ```

    #### Hasil:

    ![image](https://user-images.githubusercontent.com/108203648/236477446-4a8b4eb4-af17-4b3e-bb74-2a9bbe615e83.png)
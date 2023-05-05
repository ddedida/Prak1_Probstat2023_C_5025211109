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

    Untuk mencari probabilitas suatu titik di salah satu sisi pada distribusi binomial, digunakan fungsi `pbinom(p, size, prob, lower.tail)`. Di mana `p` adalah titik batas, `size` adalah banyak kejadian, `prob` adalah peluang sukses, dan `lower.tail` adalah boolean di mana sama dengan TRUE berarti mencari probabilitas di sebelah kiri titik, sedangkan FALSE sebaliknya.
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

    Untuk mencari probabilitas suatu titik di salah satu sisi pada distribusi binomial, digunakan fungsi `pbinom(p, size, prob, lower.tail)`. Di mana `p` adalah titik batas, `size` adalah banyak kejadian, `prob` adalah peluang sukses, dan `lower.tail` adalah boolean di mana sama dengan TRUE berarti mencari probabilitas di sebelah kiri titik, sedangkan FALSE sebaliknya.
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

    Menggunakan fungsi plot()
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